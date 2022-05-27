import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/domain/repositories/rest_failure.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/features/borrowing/domain/entities/borrowing.dart';

Gender genderFromString(String value) {
  switch (value) {
    case 'male':
      return Gender.male;
    case 'female':
      return Gender.female;
    case 'other':
      return Gender.other;
    default:
      return Gender.unknown;
  }
}

EquipmentStatus equipmentStatusFromString(String value) {
  switch (value) {
    case 'ล่าช้า':
      return EquipmentStatus.late;
    case 'ยืมอยู่':
      return EquipmentStatus.borrowing;
    case 'ส่งซ่อม':
      return EquipmentStatus.fixing;
    default:
      return EquipmentStatus.available;
  }
}

BorrowingStatus borrowingStatusFromString(String value) {
  switch (value) {
    case 'คืนแล้ว':
      return BorrowingStatus.returned;
    default:
      return BorrowingStatus.borrowing;
  }
}

void handleErrorCase(BuildContext context, RestFailure failure) {
  FlushbarHelper.createError(
    message: failure.map<String>(
      serverError: (e) => 'serverError',
      badRequest: (e) => e.message,
      unAuthorized: (e) => 'unAuthorized',
      notFound: (e) => 'notFound',
      unknownError: (e) => 'unknownError',
      forBidden: (e) => e.message,
    ),
  ).show(context);
}
