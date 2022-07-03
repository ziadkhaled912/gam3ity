import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:gam3ity/core/app/app_config.dart';
import 'package:gam3ity/core/data/interceptors/language_interceptor.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'injection_container.dart';

@module
abstract class AppModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  Dio get dio {
    final appConfig = getIt<AppConfig>();
    final aDio = Dio(
      BaseOptions(
        baseUrl: appConfig.getBaseUrl(),
        connectTimeout: 30000,
        receiveTimeout: 30000,
        sendTimeout: 30000,
        followRedirects: true,
      ),
    );

    aDio.interceptors.addAll([LanguageInterceptor()]);
    if (kDebugMode) {
      aDio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (log) => debugPrint(log.toString()),
      ),);
    }
    return aDio;

  }
}