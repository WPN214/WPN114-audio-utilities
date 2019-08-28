#include "qml_plugin.hpp"

#include <source/downmix/downmix.hpp>
#include <source/mapper/mapper.hpp>

#include <QQmlEngine>
#include <qqml.h>

//-------------------------------------------------------------------------------------------------
void
qml_plugin::registerTypes(const char *uri)
//-------------------------------------------------------------------------------------------------
{
    Q_UNUSED(uri)

   qmlRegisterType<Downmix, 1>
   ("WPN114.Audio.Utilities", 1, 0, "Downmix");

   qmlRegisterType<ChannelMapper, 1>
   ("WPN114.Audio.Utilities", 1, 0, "ChannelMapper");
}
