// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_status.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AlarmStatus on _AlarmStatus, Store {
  final _$isAlarmAtom = Atom(name: '_AlarmStatus.isAlarm');

  @override
  bool get isAlarm {
    _$isAlarmAtom.context.enforceReadPolicy(_$isAlarmAtom);
    _$isAlarmAtom.reportObserved();
    return super.isAlarm;
  }

  @override
  set isAlarm(bool value) {
    _$isAlarmAtom.context.conditionallyRunInAction(() {
      super.isAlarm = value;
      _$isAlarmAtom.reportChanged();
    }, _$isAlarmAtom, name: '${_$isAlarmAtom.name}_set');
  }
}
