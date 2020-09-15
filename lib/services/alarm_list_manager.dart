import 'package:intelligentstudysuite/services/file_proxy.dart';
import 'package:intelligentstudysuite/stories/alarm_list.dart';
import 'package:intelligentstudysuite/stories/observable_alarm.dart';

class AlarmListManager {
  final AlarmList _alarms;
  final JsonFileStorage _storage = JsonFileStorage();

  AlarmListManager(this._alarms);

  saveAlarm(ObservableAlarm alarm) async {
    await alarm.updateMusicPaths();
    final index = _alarms.alarms.indexWhere((findAlarm) => alarm.id == findAlarm.id);
    _alarms.alarms[index] = alarm;
    await _storage.writeList(_alarms.alarms);
  }
}