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
import '/auth/firebase_auth/auth_util.dart';

DateTime? restriccionFechas() {
  // Octavo dia despues de hoy
  DateTime today = DateTime.now();
  DateTime eighthDay = today.add(Duration(days: 8));
  return eighthDay;
}

DateTime? apagarHorasOcupadas(
  DateTime? fechaInicio,
  DateTime? fechaFin,
) {
  // Quiero que me desabilites las hora ocupatas en un rango de 2 fechas, fecha de inicio y fecha de fin
// First, we need to retrieve the list of occupied time slots from the database
  List<DateTimeRange> occupiedSlots = []; // replace with actual database query

  // Then, we need to create a list of all possible time slots within the given date range
  List<DateTimeRange> allSlots = [];
  DateTime currentDate = fechaInicio!;
  while (currentDate.isBefore(fechaFin!)) {
    DateTimeRange slot = DateTimeRange(
      start: DateTime(
        currentDate.year,
        currentDate.month,
        currentDate.day,
        0,
        0,
      ),
      end: DateTime(
        currentDate.year,
        currentDate.month,
        currentDate.day,
        23,
        59,
      ),
    );
    allSlots.add(slot);
    currentDate = currentDate.add(Duration(days: 1));
  }

  // Finally, we can filter out the occupied time slots from the list of all possible time slots
  List<DateTimeRange> availableSlots = allSlots.where((slot) {
    for (DateTimeRange occupiedSlot in occupiedSlots) {
      if (slot.start.isBefore(occupiedSlot.end) &&
          slot.end.isAfter(occupiedSlot.start)) {
        return false;
      }
    }
    return true;
  }).toList();

  // We can then return the first available time slot, or null if there are none
  if (availableSlots.isNotEmpty) {
    return availableSlots.first.start;
  } else {
    return null;
  }
}

DateTime? obtenerUltimoDiaMes() {
  // obten el ultimo dia de cada mes y devuelvelo
  DateTime now = DateTime.now();
  int year = now.year;
  int month = now.month;
  DateTime lastDayOfMonth = DateTime(year, month + 1, 0);
  return lastDayOfMonth;
}

DateTime? obtenerDiaAnterior() {
  // Dia Anterior
  DateTime now = DateTime.now();
  DateTime yesterday = now.subtract(Duration(days: 1));
  return yesterday;
}

DateTime? eventosProximos() {
  DateTime today = DateTime.now();
  DateTime prioridad = today.add(Duration(days: 3));
  return prioridad;
}

String? estadoProximosEventos(DateTime? inicio) {
  // Calcula estado Eventos
  if (inicio != null) {
    final now = DateTime.now();
    if (inicio.year == now.year &&
        inicio.month == now.month &&
        inicio.day == now.day) {
      return 'En ejecucion';
    } else if (inicio.day > now.day) {
      return 'Preparando';
    } else
      return 'Proximamente';
  }
  return null;
}

bool? verificarArrayVacio() {
  // verifica si una lista es vacia o no
  List<int> lista = [1, 2, 3];
  if (lista.isEmpty) {
    return true;
  } else {
    return false;
  }
}

DateTime? agendarRev(DateTime? revision) {
  //  quiero obtener dia 3 posterior al de hoy
  if (revision == null) {
    return null;
  }
  final now = DateTime.now();
  final diff = revision.difference(now).inDays;
  final targetDay = now.add(Duration(days: diff + 3)).day;
  return revision.day == targetDay ? revision : null;
}
