// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom action code
Future<String> buildWeightTweet(double weight) async {
  var formattedResult = (weight / 46).toStringAsFixed(2);
  var dt = DateTime.now();
  return '[${dt.hour}:${dt.minute}] Un Olivies a converti son poids en Ol. \n Il pèse $formattedResult Ol.\n';
}
