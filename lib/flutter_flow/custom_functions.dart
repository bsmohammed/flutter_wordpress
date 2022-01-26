import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String total(
  int countNum,
  int pricenum,
) {
  // get total of calculated numbers
  String total = BigInt.from(countNum * pricenum).toString();
  return total;
}

LatLng realtimemovin() {
  // get my location matrix

  final DateTime timewhen = DateTime.now();
  if (timewhen.hour < 7) {
    return new LatLng(51.1367, -114.2764);
  } else if (timewhen.hour >= 7 && timewhen.hour < 10) {
    return new LatLng(51.1171, -114.0804);
  } else if (timewhen.hour >= 10 && timewhen.hour < 18) {
    return new LatLng(51.0689, -113.9455);
  } else if (timewhen.hour >= 18 && timewhen.hour <= 23) {
    return new LatLng(51.1286, -113.9320);
  }

  return new LatLng(51.1285, -113.9323);
}
