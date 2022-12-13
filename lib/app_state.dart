import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _userName = prefs.getString('ff_userName') ?? _userName;
    _history = prefs.getStringList('ff_history')?.map((x) {
          try {
            return jsonDecode(x);
          } catch (e) {
            print("Can't decode persisted json. Error: $e.");
            return {};
          }
        })?.toList() ??
        _history;
    _hasHistory = prefs.getBool('ff_hasHistory') ?? _hasHistory;
    if (prefs.containsKey('ff_lastValue')) {
      try {
        _lastValue = jsonDecode(prefs.getString('ff_lastValue'));
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    _hasLastValue = prefs.getBool('ff_hasLastValue') ?? _hasLastValue;
  }

  SharedPreferences prefs;

  String _userName = '';
  String get userName => _userName;
  set userName(String _value) {
    _userName = _value;
    prefs.setString('ff_userName', _value);
  }

  List<dynamic> _history = [];
  List<dynamic> get history => _history;
  set history(List<dynamic> _value) {
    _history = _value;
    prefs.setStringList(
        'ff_history', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToHistory(dynamic _value) {
    _history.add(_value);
    prefs.setStringList(
        'ff_history', _history.map((x) => jsonEncode(x)).toList());
  }

  void removeFromHistory(dynamic _value) {
    _history.remove(_value);
    prefs.setStringList(
        'ff_history', _history.map((x) => jsonEncode(x)).toList());
  }

  bool _hasHistory = false;
  bool get hasHistory => _hasHistory;
  set hasHistory(bool _value) {
    _hasHistory = _value;
    prefs.setBool('ff_hasHistory', _value);
  }

  dynamic _lastValue;
  dynamic get lastValue => _lastValue;
  set lastValue(dynamic _value) {
    _lastValue = _value;
    prefs.setString('ff_lastValue', jsonEncode(_value));
  }

  bool _hasLastValue = false;
  bool get hasLastValue => _hasLastValue;
  set hasLastValue(bool _value) {
    _hasLastValue = _value;
    prefs.setBool('ff_hasLastValue', _value);
  }
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
