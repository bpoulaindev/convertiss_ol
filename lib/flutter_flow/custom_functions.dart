import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';

dynamic updateHistory(
  String type,
  double value,
) {
  var dt = DateTime.now();
  switch (type) {
    case "weight":
      return {
        "type": "weight",
        "readableType": "Poids",
        "value": (value / 46).toStringAsFixed(2),
        "date": '${dt.day}/${dt.month}/${dt.year}'
      };
    case "size":
      return {
        "type": "size",
        "readableType": "Taille",
        "value": (value / 158).toStringAsFixed(2),
        "date": '${dt.day}/${dt.month}/${dt.year}'
      };
    case "speed":
      return {
        "type": "speed",
        "readableType": "Vitesse",
        "value": (value / 4).toStringAsFixed(2),
        "date": '${dt.day}/${dt.month}/${dt.year}'
      };
  }
}

bool verifyUsername(String userName) {
  return userName.length <= 10;
}

dynamic updateLastValue(
  String type,
  double value,
) {
  var dt = DateTime.now();
  switch (type) {
    case "weight":
      return {
        "type": "weight",
        "readableType": "Poids",
        "value": (value / 46).toStringAsFixed(2),
        "date": '${dt.day}/${dt.month}/${dt.year}'
      };
    case "size":
      return {
        "type": "size",
        "readableType": "Taille",
        "value": (value / 158).toStringAsFixed(2),
        "date": '${dt.day}/${dt.month}/${dt.year}'
      };
    case "speed":
      return {
        "type": "speed",
        "readableType": "Vitesse",
        "value": (value / 4).toStringAsFixed(2),
        "date": '${dt.day}/${dt.month}/${dt.year}'
      };
  }
}

String feedbackMessage(
  String type,
  double value,
) {
  var value2 = value.toString;
  switch (type) {
    case "size":
      return '$value2 cm';
    case "weight":
      return '$value2 kg';
    case "speed":
      return '$value2 km/h';
  }
  return 'valeur inconnue';
}
