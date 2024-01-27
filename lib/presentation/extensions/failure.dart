import 'package:schedule_search_and_job_peek/core/errors/index.dart';
import 'package:schedule_search_and_job_peek/i18n/translations.g.dart';

extension FailuresMapper on Failure {
  String get message => map(
        authFailure: (af) => af.f.map(
          // tokenExpired: (_) => t.errors.authFailures.tokenExpired,
          // emailVerificationFailed: (_) => t.errors.authFailures.emailVerificationFailed,
          // passwordResetFailed: (_) => t.errors.authFailures.passwordResetFailed,
          validationFailed: (f) => f.error,
        ),
        unexpectedError: (sf) => sf.message,
        cacheFailure: (cf) => cf.f.map(
          cacheClearFailure: (f) => f.message ?? t.errors.common.failures.cacheClearFailure,
          cacheSetFailure: (f) => f.message ?? t.errors.common.failures.cacheGetFailure,
          cacheGetFailure: (f) => f.message ?? t.errors.common.failures.cacheGetFailure,
        ),
        networkFailure: (nf) => nf.f.map(
          // TODO - Add rest of error messages to translations
          requestCancelled: (f) => t.errors.common.failures.somethingWentWrong,
          unauthorisedRequest: (f) => f.errorMessage ?? t.errors.common.failures.unauthorized,
          badRequest: (f) => t.errors.common.failures.somethingWentWrong,
          notFound: (f) => f.error.toString(),
          methodNotAllowed: (f) => t.errors.common.failures.somethingWentWrong,
          notAcceptable: (f) => t.errors.common.failures.somethingWentWrong,
          requestTimeout: (f) => t.errors.common.failures.somethingWentWrong,
          conflict: (f) => t.errors.common.failures.somethingWentWrong,
          internalServerError: (f) => t.errors.common.failures.somethingWentWrong,
          notImplemented: (f) => t.errors.common.failures.somethingWentWrong,
          serviceUnavailable: (f) => t.errors.common.failures.somethingWentWrong,
          connectionRefused: (f) => t.errors.common.failures.somethingWentWrong,
          noInternetConnection: (f) => t.errors.common.failures.somethingWentWrong,
          defaultError: (f) => f.error,
          unexpectedError: (f) => f.data.toString(),
          badCertificate: (f) => t.errors.common.failures.somethingWentWrong,
          badResponse: (f) => t.errors.common.failures.somethingWentWrong,
          connectionError: (f) => t.errors.common.failures.somethingWentWrong,
        ),
        ignoringFailure: (_) => '',
        formatException: (fe) => fe.message,
        unableToProcess: (uf) => uf.error,
        settingsFailure: (sf) => t.splash.failures.unsupportedVersion(curVersion: sf.f.appVersion),
        websocketFailure: (wf) => wf.f.map(
          connectionRefused: (cf) => cf.error ?? t.errors.common.failures.somethingWentWrong,
          error: (e) => e.error,
          unknown: (e) => e.error ?? t.errors.common.failures.somethingWentWrong,
        ),
      );
}
