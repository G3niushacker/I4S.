import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intelligentstudysuite/Screens/alarm_home_screen.dart';
import 'package:intelligentstudysuite/Screens/alarm_screen.dart';
import 'package:intelligentstudysuite/main.dart';
import 'package:intelligentstudysuite/services/media_handler.dart';
import 'package:intelligentstudysuite/stories/alarm_status.dart';
import 'package:wakelock/wakelock.dart';
class Alarm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
          AlarmStatus status = AlarmStatus();

          if (status.isAlarm) {
            final id = status.alarmId;
            final alarm = list.alarms
                .firstWhere((alarm) => alarm.id == id, orElse: () => null);

            MediaHandler mediaHandler = MediaHandler();

            mediaHandler.changeVolume(alarm);
            mediaHandler.playMusic(alarm);
            Wakelock.enable();

            return AlarmScreen(
                alarm: alarm,
                mediaHandler: mediaHandler);
          }
          return HomeScreen(alarms: list);
        });
  }
}