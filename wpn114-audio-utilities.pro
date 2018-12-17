TARGET = WPN114-audio-utilities
TEMPLATE = lib
CONFIG += c++11 dll
QT += quick

localmod: DESTDIR = $$QML_MODULE_DESTDIR/WPN114/Audio/Utilities
else {
    DESTDIR = $$[QT_INSTALL_QML]/WPN114/Audio/Utilities
    QML_MODULE_DESTDIR = $$[QT_INSTALL_QML]
}

QMLDIR_FILES += $$PWD/qml/qmldir
QMLDIR_FILES += $$PWD/qml/utilities.qmltypes
QMLDIR_FILES += $$PWD/qml/PinkAudio.qml
QMLDIR_FILES += $$PWD/qml/VUMeter.qml
OTHER_FILES = $$QMLDIR_FILES

for(FILE,QMLDIR_FILES) {
    QMAKE_POST_LINK += $$quote(cp $${FILE} $${DESTDIR}$$escape_expand(\n\t))
}

WPN114_AUDIO_REPOSITORY = ../WPN114-audio
INCLUDEPATH += $$WPN114_AUDIO_REPOSITORY
LIBS += -L$$QML_MODULE_DESTDIR/WPN114/Audio -lWPN114-audio
QMAKE_RPATHDIR += $$QML_MODULE_DESTDIR/WPN114/Audio

HEADERS += $$PWD/source/downmix/downmix.hpp
HEADERS += $$PWD/source/fork/fork.hpp
HEADERS += $$PWD/source/mapper/mapper.hpp
HEADERS += $$PWD/source/peakrms/peakrms.hpp

SOURCES += $$PWD/source/downmix/downmix.cpp
SOURCES += $$PWD/source/fork/fork.cpp
SOURCES += $$PWD/source/mapper/mapper.cpp
SOURCES += $$PWD/source/peakrms/peakrms.cpp

SOURCES += $$PWD/qml_plugin.cpp
HEADERS += $$PWD/qml_plugin.hpp
