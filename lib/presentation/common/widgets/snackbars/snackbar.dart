import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:schedule_search_and_job_peek/i18n/translations.g.dart';

void showErrorNotification(String msg) {
  BotToast.showSimpleNotification(
    title: msg,
    backgroundColor: Colors.redAccent,
    duration: const Duration(seconds: 30),
    // titleStyle: context.primaryTextTheme.titleSmall,
    //TODO: ?.copyWith(color: AppColors.white),
    crossPage: true,
    hideCloseButton: false,
  );
}

void showSuccessNotification([String? msg]) {
  BotToast.showSimpleNotification(
    title: msg ?? t.common.success,
    backgroundColor: Colors.greenAccent,
    duration: const Duration(seconds: 5),
    // titleStyle: Theme.of(context).textTheme.titleSmall,
    // TODO: ?.copyWith(color: AppColors.white),
    crossPage: true,
    hideCloseButton: false,
  );
}

void showInfoNotification(String msg) {
  BotToast.showSimpleNotification(
    title: msg,
    backgroundColor: Colors.blueAccent,
    duration: const Duration(seconds: 5),
    // titleStyle: Theme.of(context).textTheme.titleSmall,
    // TODO: ?.copyWith(color: AppColors.white),
    hideCloseButton: false,
  );
}
