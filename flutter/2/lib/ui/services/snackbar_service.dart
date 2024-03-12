// ignore_for_file: type_annotate_public_apis
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

enum SnackBarType {
  notAvailibleAuth,
  errorWithLogins,
  notInArea,
  errorService,
  refreshing,
  parralelJob,
  notAllDone,
}

class SnackBarService {
  String getDescription(SnackBarType error) {
    switch (error) {
      case SnackBarType.notAvailibleAuth:
        return 'Авторизация не доступна';
      case SnackBarType.errorWithLogins:
        return 'Не верный логин или пароль';
      case SnackBarType.notInArea:
        return 'Вы находитесь вне области';
      case SnackBarType.errorService:
        return 'Проблемы со стороны сервиса';
      case SnackBarType.refreshing:
        return 'Обновление';
      case SnackBarType.parralelJob:
        return 'Нельзя иметь парралельно две задачи';
      case SnackBarType.notAllDone:
        return 'Не все подзадачи выполнены или что-то не так с сервисом';
    }
  }

  ContentType getColor(SnackBarType error) {
    if (error == SnackBarType.notInArea || error == SnackBarType.parralelJob || error == SnackBarType.notAllDone) {
      return ContentType.warning;
    } else if (error == SnackBarType.refreshing) {
      return ContentType.success;
    } else {
      return ContentType.failure;
    }
  }

  void showSnackBar(context, SnackBarType error) {
    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: '',
        message: getDescription(error),
        contentType: getColor(error),
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
