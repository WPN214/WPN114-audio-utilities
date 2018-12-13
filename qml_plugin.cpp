#include "qml_plugin.hpp"

#include <source/downmix/downmix.hpp>
#include <source/fork/fork.hpp>
#include <source/mapper/mapper.hpp>
#include <source/peakrms/peakrms.hpp>

#include <QQmlEngine>
#include <qqml.h>

void qml_plugin::registerTypes(const char *uri)
{
    Q_UNUSED    ( uri );

   qmlRegisterType<Fork, 1>             ( "WPN114.Audio.Utilities", 1, 0, "Fork" );
   qmlRegisterType<PeakRMS, 1>          ( "WPN114.Audio.Utilities", 1, 0, "PeakRMS" );
   qmlRegisterType<Downmix, 1>          ( "WPN114.Audio.Utilities", 1, 0, "Downmix" );
   qmlRegisterType<ChannelMapper, 1>    ( "WPN114.Audio.Utilities", 1, 0, "ChannelMapper" );
}
