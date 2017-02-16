#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=MinGW-Windows
CND_DLIB_EXT=dll
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/5f719cc8/Icogestor.o \
	${OBJECTDIR}/_ext/5f719cc8/Ioutil.o \
	${OBJECTDIR}/_ext/511e4115/Iofrontend.o \
	${OBJECTDIR}/_ext/511e4115/main.o \
	${OBJECTDIR}/_ext/c343f55d/estructuras.o \
	${OBJECTDIR}/_ext/c343f55d/gestorroms.o \
	${OBJECTDIR}/_ext/c343f55d/mamehistoryparser.o \
	${OBJECTDIR}/_ext/c343f55d/romwebinfo.o \
	${OBJECTDIR}/_ext/c343f55d/thegamesdb.o \
	${OBJECTDIR}/_ext/2754c841/SDL_draw.o \
	${OBJECTDIR}/_ext/8a110d14/vlcplayer.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-L../../../ExternalLibs/crosslib/crosslib/dist/Debug/MinGW-Windows -L../../../ExternalLibs/crosslib/crosslib/dist/Debug/MinGW32-Windows -L../../../ExternalLibs/curl-7.40.0-devel-mingw32/lib -L../../../ExternalLibs/SDL/libs/lib -L../../../ExternalLibs/SDL/libs/lib/x86 -L../../../ExternalLibs/libvlc/sdk/lib -lcrosslib -lsdlgfx -lmingw32 -lSDLmain -lSDL -lSDL_mixer -lSDL_ttf -lSDL_image -lcrypto -lcurl -lcurldll -lidn -lrtmp -lssh2 -lssh2dll -lssl -lz -lzdll -lws2_32 ../../../ExternalLibs/libvlc/sdk/lib/libvlc.lib ../../../ExternalLibs/libvlc/sdk/lib/libvlccore.lib

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/minimalui.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/minimalui.exe: ../../../ExternalLibs/libvlc/sdk/lib/libvlc.lib

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/minimalui.exe: ../../../ExternalLibs/libvlc/sdk/lib/libvlccore.lib

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/minimalui.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/minimalui ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/_ext/5f719cc8/Icogestor.o: ../../../ExternalLibs/crosslib/src/uiobjects/common/Icogestor.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/5f719cc8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -DWIN -DWIN32 -I../../../ExternalLibs/SDL/libs/include -I../../../ExternalLibs/SDL/libs/include/SDL -I../../../ExternalLibs/crosslib/src/ziputils/zlib -I../../../ExternalLibs/crosslib/src/uiobjects -I../../../ExternalLibs/crosslib/src/uiobjects/common -I../../../ExternalLibs/crosslib/src/sqllite -I../../../ExternalLibs/crosslib/src/libjpeg -I../../../ExternalLibs/crosslib/src/ziputils/unzip -I../../../ExternalLibs/curl-7.40.0-devel-mingw32/include -I../../../ExternalLibs/crosslib/src/tidy/include -I../../../ExternalLibs/crosslib/src/tidy/src -I../../../ExternalLibs/crosslib/src/gumbo-parser-master/src -I../../../ExternalLibs/crosslib/src/httpcurl -I../../../ExternalLibs/crosslib/src/httpcurl/jsoncpp-0.10.5/include -I../../../ExternalLibs/crosslib/src/rijndael -I../../../ExternalLibs/libvlc/sdk/include -I../../BmpRLE -I../src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5f719cc8/Icogestor.o ../../../ExternalLibs/crosslib/src/uiobjects/common/Icogestor.cpp

${OBJECTDIR}/_ext/5f719cc8/Ioutil.o: ../../../ExternalLibs/crosslib/src/uiobjects/common/Ioutil.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/5f719cc8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -DWIN -DWIN32 -I../../../ExternalLibs/SDL/libs/include -I../../../ExternalLibs/SDL/libs/include/SDL -I../../../ExternalLibs/crosslib/src/ziputils/zlib -I../../../ExternalLibs/crosslib/src/uiobjects -I../../../ExternalLibs/crosslib/src/uiobjects/common -I../../../ExternalLibs/crosslib/src/sqllite -I../../../ExternalLibs/crosslib/src/libjpeg -I../../../ExternalLibs/crosslib/src/ziputils/unzip -I../../../ExternalLibs/curl-7.40.0-devel-mingw32/include -I../../../ExternalLibs/crosslib/src/tidy/include -I../../../ExternalLibs/crosslib/src/tidy/src -I../../../ExternalLibs/crosslib/src/gumbo-parser-master/src -I../../../ExternalLibs/crosslib/src/httpcurl -I../../../ExternalLibs/crosslib/src/httpcurl/jsoncpp-0.10.5/include -I../../../ExternalLibs/crosslib/src/rijndael -I../../../ExternalLibs/libvlc/sdk/include -I../../BmpRLE -I../src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/5f719cc8/Ioutil.o ../../../ExternalLibs/crosslib/src/uiobjects/common/Ioutil.cpp

${OBJECTDIR}/_ext/511e4115/Iofrontend.o: ../src/Iofrontend.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/511e4115
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -DWIN -DWIN32 -I../../../ExternalLibs/SDL/libs/include -I../../../ExternalLibs/SDL/libs/include/SDL -I../../../ExternalLibs/crosslib/src/ziputils/zlib -I../../../ExternalLibs/crosslib/src/uiobjects -I../../../ExternalLibs/crosslib/src/uiobjects/common -I../../../ExternalLibs/crosslib/src/sqllite -I../../../ExternalLibs/crosslib/src/libjpeg -I../../../ExternalLibs/crosslib/src/ziputils/unzip -I../../../ExternalLibs/curl-7.40.0-devel-mingw32/include -I../../../ExternalLibs/crosslib/src/tidy/include -I../../../ExternalLibs/crosslib/src/tidy/src -I../../../ExternalLibs/crosslib/src/gumbo-parser-master/src -I../../../ExternalLibs/crosslib/src/httpcurl -I../../../ExternalLibs/crosslib/src/httpcurl/jsoncpp-0.10.5/include -I../../../ExternalLibs/crosslib/src/rijndael -I../../../ExternalLibs/libvlc/sdk/include -I../../BmpRLE -I../src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/511e4115/Iofrontend.o ../src/Iofrontend.cpp

${OBJECTDIR}/_ext/511e4115/main.o: ../src/main.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/511e4115
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -DWIN -DWIN32 -I../../../ExternalLibs/SDL/libs/include -I../../../ExternalLibs/SDL/libs/include/SDL -I../../../ExternalLibs/crosslib/src/ziputils/zlib -I../../../ExternalLibs/crosslib/src/uiobjects -I../../../ExternalLibs/crosslib/src/uiobjects/common -I../../../ExternalLibs/crosslib/src/sqllite -I../../../ExternalLibs/crosslib/src/libjpeg -I../../../ExternalLibs/crosslib/src/ziputils/unzip -I../../../ExternalLibs/curl-7.40.0-devel-mingw32/include -I../../../ExternalLibs/crosslib/src/tidy/include -I../../../ExternalLibs/crosslib/src/tidy/src -I../../../ExternalLibs/crosslib/src/gumbo-parser-master/src -I../../../ExternalLibs/crosslib/src/httpcurl -I../../../ExternalLibs/crosslib/src/httpcurl/jsoncpp-0.10.5/include -I../../../ExternalLibs/crosslib/src/rijndael -I../../../ExternalLibs/libvlc/sdk/include -I../../BmpRLE -I../src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/511e4115/main.o ../src/main.cpp

${OBJECTDIR}/_ext/c343f55d/estructuras.o: ../src/roms/estructuras.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/c343f55d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -DWIN -DWIN32 -I../../../ExternalLibs/SDL/libs/include -I../../../ExternalLibs/SDL/libs/include/SDL -I../../../ExternalLibs/crosslib/src/ziputils/zlib -I../../../ExternalLibs/crosslib/src/uiobjects -I../../../ExternalLibs/crosslib/src/uiobjects/common -I../../../ExternalLibs/crosslib/src/sqllite -I../../../ExternalLibs/crosslib/src/libjpeg -I../../../ExternalLibs/crosslib/src/ziputils/unzip -I../../../ExternalLibs/curl-7.40.0-devel-mingw32/include -I../../../ExternalLibs/crosslib/src/tidy/include -I../../../ExternalLibs/crosslib/src/tidy/src -I../../../ExternalLibs/crosslib/src/gumbo-parser-master/src -I../../../ExternalLibs/crosslib/src/httpcurl -I../../../ExternalLibs/crosslib/src/httpcurl/jsoncpp-0.10.5/include -I../../../ExternalLibs/crosslib/src/rijndael -I../../../ExternalLibs/libvlc/sdk/include -I../../BmpRLE -I../src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c343f55d/estructuras.o ../src/roms/estructuras.cpp

${OBJECTDIR}/_ext/c343f55d/gestorroms.o: ../src/roms/gestorroms.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/c343f55d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -DWIN -DWIN32 -I../../../ExternalLibs/SDL/libs/include -I../../../ExternalLibs/SDL/libs/include/SDL -I../../../ExternalLibs/crosslib/src/ziputils/zlib -I../../../ExternalLibs/crosslib/src/uiobjects -I../../../ExternalLibs/crosslib/src/uiobjects/common -I../../../ExternalLibs/crosslib/src/sqllite -I../../../ExternalLibs/crosslib/src/libjpeg -I../../../ExternalLibs/crosslib/src/ziputils/unzip -I../../../ExternalLibs/curl-7.40.0-devel-mingw32/include -I../../../ExternalLibs/crosslib/src/tidy/include -I../../../ExternalLibs/crosslib/src/tidy/src -I../../../ExternalLibs/crosslib/src/gumbo-parser-master/src -I../../../ExternalLibs/crosslib/src/httpcurl -I../../../ExternalLibs/crosslib/src/httpcurl/jsoncpp-0.10.5/include -I../../../ExternalLibs/crosslib/src/rijndael -I../../../ExternalLibs/libvlc/sdk/include -I../../BmpRLE -I../src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c343f55d/gestorroms.o ../src/roms/gestorroms.cpp

${OBJECTDIR}/_ext/c343f55d/mamehistoryparser.o: ../src/roms/mamehistoryparser.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/c343f55d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -DWIN -DWIN32 -I../../../ExternalLibs/SDL/libs/include -I../../../ExternalLibs/SDL/libs/include/SDL -I../../../ExternalLibs/crosslib/src/ziputils/zlib -I../../../ExternalLibs/crosslib/src/uiobjects -I../../../ExternalLibs/crosslib/src/uiobjects/common -I../../../ExternalLibs/crosslib/src/sqllite -I../../../ExternalLibs/crosslib/src/libjpeg -I../../../ExternalLibs/crosslib/src/ziputils/unzip -I../../../ExternalLibs/curl-7.40.0-devel-mingw32/include -I../../../ExternalLibs/crosslib/src/tidy/include -I../../../ExternalLibs/crosslib/src/tidy/src -I../../../ExternalLibs/crosslib/src/gumbo-parser-master/src -I../../../ExternalLibs/crosslib/src/httpcurl -I../../../ExternalLibs/crosslib/src/httpcurl/jsoncpp-0.10.5/include -I../../../ExternalLibs/crosslib/src/rijndael -I../../../ExternalLibs/libvlc/sdk/include -I../../BmpRLE -I../src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c343f55d/mamehistoryparser.o ../src/roms/mamehistoryparser.cpp

${OBJECTDIR}/_ext/c343f55d/romwebinfo.o: ../src/roms/romwebinfo.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/c343f55d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -DWIN -DWIN32 -I../../../ExternalLibs/SDL/libs/include -I../../../ExternalLibs/SDL/libs/include/SDL -I../../../ExternalLibs/crosslib/src/ziputils/zlib -I../../../ExternalLibs/crosslib/src/uiobjects -I../../../ExternalLibs/crosslib/src/uiobjects/common -I../../../ExternalLibs/crosslib/src/sqllite -I../../../ExternalLibs/crosslib/src/libjpeg -I../../../ExternalLibs/crosslib/src/ziputils/unzip -I../../../ExternalLibs/curl-7.40.0-devel-mingw32/include -I../../../ExternalLibs/crosslib/src/tidy/include -I../../../ExternalLibs/crosslib/src/tidy/src -I../../../ExternalLibs/crosslib/src/gumbo-parser-master/src -I../../../ExternalLibs/crosslib/src/httpcurl -I../../../ExternalLibs/crosslib/src/httpcurl/jsoncpp-0.10.5/include -I../../../ExternalLibs/crosslib/src/rijndael -I../../../ExternalLibs/libvlc/sdk/include -I../../BmpRLE -I../src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c343f55d/romwebinfo.o ../src/roms/romwebinfo.cpp

${OBJECTDIR}/_ext/c343f55d/thegamesdb.o: ../src/roms/thegamesdb.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/c343f55d
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -DWIN -DWIN32 -I../../../ExternalLibs/SDL/libs/include -I../../../ExternalLibs/SDL/libs/include/SDL -I../../../ExternalLibs/crosslib/src/ziputils/zlib -I../../../ExternalLibs/crosslib/src/uiobjects -I../../../ExternalLibs/crosslib/src/uiobjects/common -I../../../ExternalLibs/crosslib/src/sqllite -I../../../ExternalLibs/crosslib/src/libjpeg -I../../../ExternalLibs/crosslib/src/ziputils/unzip -I../../../ExternalLibs/curl-7.40.0-devel-mingw32/include -I../../../ExternalLibs/crosslib/src/tidy/include -I../../../ExternalLibs/crosslib/src/tidy/src -I../../../ExternalLibs/crosslib/src/gumbo-parser-master/src -I../../../ExternalLibs/crosslib/src/httpcurl -I../../../ExternalLibs/crosslib/src/httpcurl/jsoncpp-0.10.5/include -I../../../ExternalLibs/crosslib/src/rijndael -I../../../ExternalLibs/libvlc/sdk/include -I../../BmpRLE -I../src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/c343f55d/thegamesdb.o ../src/roms/thegamesdb.cpp

${OBJECTDIR}/_ext/2754c841/SDL_draw.o: ../src/sdl/SDL_draw.c
	${MKDIR} -p ${OBJECTDIR}/_ext/2754c841
	${RM} "$@.d"
	$(COMPILE.c) -O2 -I../../../ExternalLibs/SDL/libs/include -I../../../ExternalLibs/SDL/libs/include/SDL -I../../../ExternalLibs/crosslib/src/ziputils/zlib -I../../../ExternalLibs/crosslib/src/uiobjects -I../../../ExternalLibs/crosslib/src/uiobjects/common -I../../../ExternalLibs/crosslib/src/sqllite -I../../../ExternalLibs/crosslib/src/libjpeg -I../../../ExternalLibs/crosslib/src/ziputils/unzip -I../../../ExternalLibs/curl-7.40.0-devel-mingw32/include -I../../../ExternalLibs/crosslib/src/tidy/include -I../../../ExternalLibs/crosslib/src/tidy/src -I../../../ExternalLibs/crosslib/src/gumbo-parser-master/src -I../../../ExternalLibs/crosslib/src/httpcurl -I../../../ExternalLibs/crosslib/src/httpcurl/jsoncpp-0.10.5/include -I../../../ExternalLibs/crosslib/src/rijndael -I../../../ExternalLibs/libvlc/sdk/include -I../../BmpRLE -I../src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2754c841/SDL_draw.o ../src/sdl/SDL_draw.c

${OBJECTDIR}/_ext/8a110d14/vlcplayer.o: ../src/vlcplayer/vlcplayer.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/8a110d14
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -DWIN -DWIN32 -I../../../ExternalLibs/SDL/libs/include -I../../../ExternalLibs/SDL/libs/include/SDL -I../../../ExternalLibs/crosslib/src/ziputils/zlib -I../../../ExternalLibs/crosslib/src/uiobjects -I../../../ExternalLibs/crosslib/src/uiobjects/common -I../../../ExternalLibs/crosslib/src/sqllite -I../../../ExternalLibs/crosslib/src/libjpeg -I../../../ExternalLibs/crosslib/src/ziputils/unzip -I../../../ExternalLibs/curl-7.40.0-devel-mingw32/include -I../../../ExternalLibs/crosslib/src/tidy/include -I../../../ExternalLibs/crosslib/src/tidy/src -I../../../ExternalLibs/crosslib/src/gumbo-parser-master/src -I../../../ExternalLibs/crosslib/src/httpcurl -I../../../ExternalLibs/crosslib/src/httpcurl/jsoncpp-0.10.5/include -I../../../ExternalLibs/crosslib/src/rijndael -I../../../ExternalLibs/libvlc/sdk/include -I../../BmpRLE -I../src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8a110d14/vlcplayer.o ../src/vlcplayer/vlcplayer.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc