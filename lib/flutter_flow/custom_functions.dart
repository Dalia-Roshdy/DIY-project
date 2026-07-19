import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

String? formatHp(double? hp) {
  if (hp == null) return '';

  const tolerance = 0.01;

  if ((hp - 0.1667).abs() < tolerance) return '1/6';
  if ((hp - 0.25).abs() < tolerance) return '1/4';
  if ((hp - 0.3333).abs() < tolerance) return '1/3';
  if ((hp - 0.5).abs() < tolerance) return '1/2';
  if ((hp - 0.6667).abs() < tolerance) return '2/3';
  if ((hp - 0.75).abs() < tolerance) return '3/4';
  if ((hp - 1.25).abs() < tolerance) return '1 1/4';
  if ((hp - 1.5).abs() < tolerance) return '1 1/2';

  if (hp == hp.roundToDouble()) {
    return hp.toInt().toString();
  }

  return hp.toString();
}
