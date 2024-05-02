import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String currentDate() {
  try {
    return DateFormat('dd MMM yyyy').format(DateTime.now());
  } catch (e) {
    debugPrint(e.toString());
    return "";
  }
}
