import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

double volumebalok(
  double? panjang,
  double? lebar,
  double? tinggi,
) {
  // multiply panjang, lebar, and tinggi
  if (panjang == null || lebar == null || tinggi == null) {
    return 0.0;
  }
  return panjang * lebar * tinggi;
}

double luasbalok(
  double? panjanglu,
  double? lebarlu,
  double? tinggilu,
) {
  if (panjanglu == null || lebarlu == null || tinggilu == null) {
    return 0.0;
  }
  return 2 * (panjanglu * lebarlu) +
      (panjanglu * tinggilu) +
      (lebarlu * tinggilu);
}

double volume(double? jarijari) {
  // sphere volume with jarijari as radius. make the decimals no more than 2
  if (jarijari == null) {
    return 0.0;
  }
  final double volume = (4 / 3) * math.pi * math.pow(jarijari, 3);
  return double.parse(volume.toStringAsFixed(2));
}

double kelbelk(double? sisi) {
  // multiply sisi by 4
  if (sisi == null) {
    return 0.0;
  }
  return sisi * 4;
}

double lubelk(
  double? d1,
  double? d2,
) {
  // multiply d1, d2, and 1/2
  if (d1 == null || d2 == null) {
    return 0.0;
  }
  return (d1 * d2) / 2;
}

double kelper(double? sisi) {
  // multiply sisi by 4
  if (sisi == null) {
    return 0.0;
  }
  return sisi * 4;
}

double luper(double? sisi) {
  // multiply sisi by sisi
  if (sisi == null) {
    return 0.0;
  }
  return sisi * sisi;
}

double? luperp(
  double? panjang,
  double? lebar,
) {
  // panjang times lebar
// multiply panjang and lebar
  if (panjang == null || lebar == null) {
    return null;
  }
  return panjang * lebar;
}

double kelperp(
  double? panjang,
  double? lebar,
) {
  // multiply 2, panjang, and lebar
  if (panjang == null || lebar == null) {
    return 0.0;
  }
  return 2 * (panjang + lebar);
}

double luling(double? jari) {
  // phi times jari to the power of 2. make the decimals no more than 2
// phi times jari to the power of 2
  if (jari == null) {
    return 0.0;
  }
  final double luas = math.pi * math.pow(jari, 2);
  return double.parse(luas.toStringAsFixed(2));
}

double kelling(double? jari) {
  // 2 times phi times jari. make the decimals no more than 2
  if (jari == null) return 0.0;
  final phi = math.pi;
  final result = 2 * phi * jari;
  return double.parse(result.toStringAsFixed(2));
}

double lulay(
  double? d1,
  double? d2,
) {
  // 1/2 times d1 times d2. make the decimals no more than 2
  if (d1 == null || d2 == null) {
    return 0.0;
  }
  double result = 0.5 * d1 * d2;
  return double.parse(result.toStringAsFixed(2));
}

double? kellay(
  double? s1,
  double? s2,
) {
  // 2 times (s1 + s2). make the  decimals no more than 2
  if (s1 == null || s2 == null) {
    return null;
  }
  double result = 2 * (s1 + s2);
  return double.parse(result.toStringAsFixed(2));
}

double lutrap(
  double? s1,
  double? s2,
  double? tinggi,
) {
  // 1/2 times (s1+s2) times tinggi. make the decimals no more than 2
  if (s1 == null || s2 == null || tinggi == null) {
    return 0.0;
  }
  double result = 0.5 * (s1 + s2) * tinggi;
  return double.parse(result.toStringAsFixed(2));
}

double luseg(
  double? alas,
  double? tinggi,
) {
  // 1/2 times alas times tinggi. make the decimals no more than 2
  if (alas == null || tinggi == null || alas <= 0 || tinggi <= 0) {
    return 0.0;
  }
  double result = (alas * tinggi) / 2;
  return double.parse(result.toStringAsFixed(2));
}

double lujaja(
  double? alas,
  double? tinggi,
) {
  // alas times tinggi. make the decimals no more than 2
  if (alas == null || tinggi == null || alas <= 0 || tinggi <= 0) {
    return 0.0;
  }
  double result = (alas * tinggi) / 2;
  return double.parse(result.toStringAsFixed(2));
}
