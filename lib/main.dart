import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gam3ity/core/app/config_reader.dart';
import 'package:gam3ity/core/presentation/cubit/bloc_observer.dart';
import 'package:gam3ity/utilities/router.dart';
import 'package:gam3ity/utilities/theme/cubit/theme_cubit.dart';
import 'package:gam3ity/utilities/theme/cubit/theme_state.dart';
import 'package:gam3ity/di/injection_container.dart' as di;
import 'package:gam3ity/utilities/theme/light_theme/light_theme.dart';
import 'package:intl/intl.dart';
import 'firebase_options.dart';
import 'generated/l10n.dart';

void main() async {
  await BlocOverrides.runZoned(
    () async {
      await initialize();
      preventLandscape();
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit()..getCurrentLocale(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Gam3ity',
            debugShowCheckedModeBanner: false,
            supportedLocales: S.delegate.supportedLocales,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            routeInformationProvider: router.routeInformationProvider,
            routeInformationParser: router.routeInformationParser,
            routerDelegate: router.routerDelegate,
            locale: BlocProvider.of<ThemeCubit>(context).locale,
            theme: Gam3ityLightTheme.lightTheme(
              locale: BlocProvider.of<ThemeCubit>(context).locale,
            ),
          );
        },
      ),
    );
  }
}

void preventLandscape() {
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
}

Future<void> initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();
  await di.configure();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
