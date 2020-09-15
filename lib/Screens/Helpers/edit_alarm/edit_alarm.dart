import 'package:flutter/material.dart';
import 'package:intelligentstudysuite/Screens/Helpers/edit_alarm/components/edit_alarm_days.dart';
import 'package:intelligentstudysuite/Screens/Helpers/edit_alarm/components/edit_alarm_head.dart';
import 'package:intelligentstudysuite/Screens/Helpers/edit_alarm/components/edit_alarm_music.dart';
import 'package:intelligentstudysuite/Screens/Helpers/edit_alarm/components/edit_alarm_slider.dart';
import 'package:intelligentstudysuite/Screens/Helpers/edit_alarm/components/edit_alarm_time.dart';
import 'package:intelligentstudysuite/components/default_container.dart';
import 'package:intelligentstudysuite/services/alarm_list_manager.dart';
import 'package:intelligentstudysuite/services/alarm_sheduler.dart';
import 'package:intelligentstudysuite/stories/observable_alarm.dart';

class EditAlarm extends StatelessWidget {
  final ObservableAlarm alarm;
  final AlarmListManager manager;

  EditAlarm({this.alarm, this.manager});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print('$alarm');
        await manager.saveAlarm(alarm);
        await AlarmScheduler().scheduleAlarm(alarm);
        return true;
      },
      child: DefaultContainer(
        child: SingleChildScrollView(
          child: Column(children: [
            Text(
              'Alarm',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    EditAlarmHead(alarm: this.alarm),
                    Divider(),
                    EditAlarmTime(alarm: this.alarm),
                    Divider(),
                    EditAlarmDays(alarm: this.alarm),
                    Divider(),
                    EditAlarmMusic(alarm: this.alarm),
                    Divider(),
                    EditAlarmSlider(alarm: this.alarm)
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}