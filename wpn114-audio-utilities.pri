QT += widgets
DEFINES += QT_DEPRECATED_WARNINGS

WPN114_AUDIO_REPOSITORY = ../WPN114-audio
INCLUDEPATH += $$WPN114_AUDIO_REPOSITORY
LIBS += -L$$[QT_INSTALL_QML]/WPN114/Audio -lWPN114-audio

macx {
    QMAKE_MAC_SDK = macosx10.14
}

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
