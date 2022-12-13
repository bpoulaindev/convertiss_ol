// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom action code
Future<String> buildSizeTweet(double size) async {
  var formattedResult = (size / 158).toStringAsFixed(2);
  var dt = DateTime.now();
  return '[${dt.hour}:${dt.minute}] Un Olivies a converti sa taille en Ol. \n Il mesure $formattedResult Ol.\n';
}
