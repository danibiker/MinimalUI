#include "romwebinfo.h"

RomWebInfo::RomWebInfo(int thPosRom, vector<vector<string> > *thListaRoms, string thPlatform){
    this->thPosRom = thPosRom;
    this->thListaRoms = thListaRoms;
    this->thPlatform = thPlatform;
    resp = NULL;
}

RomWebInfo::~RomWebInfo()
{
    if(resp != NULL){
        delete resp;
    }
}

/**
*
*/
void RomWebInfo::updateGameInfo(){
    RequestQuery queryGame;
    string idprog = thListaRoms->at(thPosRom).at(0);
    string idrom = thListaRoms->at(thPosRom).at(1);
    string romname = thListaRoms->at(thPosRom).at(2);
    string scrapped = thListaRoms->at(thPosRom).at(4);

    bool updateMissingOnly = Constant::isUPDATE_MISSING();

    if ( (scrapped.compare("S") != 0 && updateMissingOnly) || updateMissingOnly == false){
        Dirutil dirutil;

        cutFileName(&romname, "(");
        cutFileName(&romname, "[");
        cutFileName(&romname, "v1.");
        romname = Constant::replaceAll(romname, "_", " ");

        romname = dirutil.getFileNameNoExt(romname);
        //Especificamos los parametros de busqueda de la rom
        queryGame.platform = thPlatform;
        queryGame.exactName = romname;
        //Creamos el objeto de respuesta
        ResponseQuery response;

        //Guardamos el elemento de la lista seleccionado. Por defecto, si solo se encuentra 1 juego,
        //sera el primero
        int matched = 0;
//        int petOK = 0;

//        Traza::print("Descargando " + romname + "...", W_DEBUG);
//        if (scrapped.empty()){
        gamesDB.download2(&queryGame, &response);
//        }

        //Si no hemos obtenido ningun juego, lo intentamos con otra llamada al servicio
        if (response.gameList.size() == 0){
            queryGame.name = romname;
            queryGame.exactName = "";
            gamesDB.download2(&queryGame, &response);
            matched = findSimilarTitle(&response.gameList , queryGame.name);
        }

        string msg;

        if (matched >= 0){
            msg = "Encontrado: '" + response.gameList.at(matched)->gameTitle + "' para rom: "
            + "'" + romname + "'" + " en pos: " + Constant::TipoToStr(matched);
        }

        Traza::print(msg,W_DEBUG);


        if (response.gameList.size() > 0 && matched >= 0){
//            cout << "El id es: " << response.gameList.at(matched)->id << endl;
//            cout << "El titulo es: " << response.gameList.at(matched)->gameTitle << endl;
//            cout << "El platformId es: " << response.gameList.at(matched)->platformId << endl;
//            cout << "El platform es: " << response.gameList.at(matched)->platform << endl;
//            cout << "El overview es: " << response.gameList.at(matched)->overview << endl;
//            cout << "El releaseDate es: " << response.gameList.at(matched)->releaseDate << endl;
//            cout << "El genres es: " << response.gameList.at(matched)->genres.size() << endl;
//            cout << "El players es: " << response.gameList.at(matched)->players << endl;
//            cout << "El publisher es: " << response.gameList.at(matched)->publisher << endl;
//            cout << "El developer es: " << response.gameList.at(matched)->developer << endl;
//            cout << "El rating es: " << response.gameList.at(matched)->rating << endl;
//            cout << "El baseImgUrl es: " << response.gameList.at(matched)->baseImgUrl << endl;
//            cout << "El boxart es: " << response.gameList.at(matched)->boxart.size() << endl;
//            cout << "El fanart es: " << response.gameList.at(matched)->fanart.size() << endl;
//            cout << "******************************" << endl << endl;

            resp = response.gameList.at(matched);
            resp->boxartFront = findBoxartFront(&response,idprog);
        }
    }
}


/**
* Busca en el listado, el juego que mas coincidencias de palabras tenga con el titulo
* que andamos buscando
*/
int RomWebInfo::findSimilarTitle(vector<ResponseGame *> *listaJuegos, string tituloBuscado){
    int maxWords = 0;
    int countWords = 0;
    int elementMatched = -1;
    Constant::lowerCase(&tituloBuscado);
    vector<string> tituloSplit = Constant::split(Constant::removeEspecialCharsAll(tituloBuscado), " ");
    string gameTitle = "";

    for (unsigned int i=0; i < listaJuegos->size(); i++){
        gameTitle = listaJuegos->at(i)->gameTitle;
        Constant::lowerCase(&gameTitle);
        //Traza::print("gameTitle: " + gameTitle, W_DEBUG);
        countWords = 0;

        for (unsigned int j=0; j < tituloSplit.size(); j++){
            if (gameTitle.find(Constant::removeEspecialCharsAll(tituloSplit.at(j))) != string::npos
                && !Constant::isEspecialCharAll(tituloSplit.at(j))
            ){
                countWords++;
                //Traza::print("tituloSplit.at(j): " + tituloSplit.at(j), W_DEBUG);
            }

        }

        if (tituloSplit.size() > 0){
//            Traza::print("gameTitle: " + gameTitle + "; Words found: " + Constant::TipoToStr(countWords) + ", percent: "
//                         + Constant::TipoToStr(countWords / (double)tituloSplit.size()), W_DEBUG);

            if (countWords > maxWords && ((countWords / (double)tituloSplit.size() >= 0.3 && countWords >= 3)
                                          || ((int)tituloSplit.size() == countWords && countWords < 3)) ){
//            if (countWords > maxWords && (countWords / (double)tituloSplit.size() >= 0.3)){
                elementMatched = i;
                maxWords = countWords;
                countWords = 0;
            }
        }
    }
    return elementMatched;
}

void RomWebInfo::cutFileName(string *fileromname, string keyString){
    size_t pos = fileromname->find(keyString);
    if(pos != string::npos){
        *fileromname = fileromname->substr(0, pos);
    }
}

/**
* Busca la imagen frontal de la caja del juego
*/
string RomWebInfo::findBoxartFront(ResponseQuery *response, string idprog){
    unsigned int i = 0;
    bool found = false;
    string result = "";
    ResponseGame *respGame = response->gameList.at(0);
    vector<string> *boxart = &respGame->boxart;

    while (i < boxart->size() && !found){
        if (boxart->at(i).find("front") != string::npos){
            result = boxart->at(i);
            found = true;
        }
        i++;
    }

    if (!found && boxart->size() > 0){
        result = boxart->at(0);
        found = true;
    }

    if (found){
        Dirutil dirUtil;
        string directory = Constant::getAppDir()
            + FILE_SEPARATOR + DIR_IMG_ROMS_IMGS
            + FILE_SEPARATOR + idprog
            + FILE_SEPARATOR + result;

        #ifdef WIN
            directory = Constant::replaceAll(directory, URI_SEPARATOR, tempFileSep);
        #endif // WIN

        if (!dirUtil.existe(directory)){
//            Traza::print("Creando dir: " + dirUtil.getFolder(directory), W_DEBUG);
            dirUtil.mkpath(dirUtil.getFolder(directory).c_str(), 0777);
            UIImgDownloader imgDownloader;
            if (!dirUtil.existe(response->baseImgUrl + result)){
                Traza::print("Descargando imagen: " + response->baseImgUrl + result, W_DEBUG);
                imgDownloader.downloadToJpgAndThumbnail(response->baseImgUrl + result, directory, 250, 250);
            }
        }
    }
    return result;
}
