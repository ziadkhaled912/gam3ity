// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Something went wrong, please try again later`
  String get somethingWentWrong {
    return Intl.message(
      'Something went wrong, please try again later',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `You don't have internet connection, Please connect with the internet and try again`
  String get no_internet {
    return Intl.message(
      'You don\'t have internet connection, Please connect with the internet and try again',
      name: 'no_internet',
      desc: '',
      args: [],
    );
  }

  /// `Service unavailable, please try again later.`
  String get serviceError {
    return Intl.message(
      'Service unavailable, please try again later.',
      name: 'serviceError',
      desc: '',
      args: [],
    );
  }

  /// `You don't have the adequate permissions to view this.`
  String get forbiddenAccessError {
    return Intl.message(
      'You don\'t have the adequate permissions to view this.',
      name: 'forbiddenAccessError',
      desc: '',
      args: [],
    );
  }

  /// `This content is unavailable currently, please try again later`
  String get contentError {
    return Intl.message(
      'This content is unavailable currently, please try again later',
      name: 'contentError',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet connection`
  String get internetError {
    return Intl.message(
      'Please check your internet connection',
      name: 'internetError',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get lang {
    return Intl.message(
      'English',
      name: 'lang',
      desc: '',
      args: [],
    );
  }

  /// `Secure`
  String get onBoardingTitle1 {
    return Intl.message(
      'Secure',
      name: 'onBoardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Easy`
  String get onBoardingTitle2 {
    return Intl.message(
      'Easy',
      name: 'onBoardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Customize your own circle`
  String get onBoardingTitle3 {
    return Intl.message(
      'Customize your own circle',
      name: 'onBoardingTitle3',
      desc: '',
      args: [],
    );
  }

  /// `All circles are guaranteed because all users\nThey offer legal guarantees`
  String get onBoardingSubtitle1 {
    return Intl.message(
      'All circles are guaranteed because all users\nThey offer legal guarantees',
      name: 'onBoardingSubtitle1',
      desc: '',
      args: [],
    );
  }

  /// `You will be able to find the circle that suits you, as well\nEasily adjust payment and receivable dates`
  String get onBoardingSubtitle2 {
    return Intl.message(
      'You will be able to find the circle that suits you, as well\nEasily adjust payment and receivable dates',
      name: 'onBoardingSubtitle2',
      desc: '',
      args: [],
    );
  }

  /// `You can create your own circle and invite your friends to it`
  String get onBoardingSubtitle3 {
    return Intl.message(
      'You can create your own circle and invite your friends to it',
      name: 'onBoardingSubtitle3',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get thisFieldIsRequired {
    return Intl.message(
      'This field is required',
      name: 'thisFieldIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `The number you have entered is invalid`
  String get mobileNumberValidation {
    return Intl.message(
      'The number you have entered is invalid',
      name: 'mobileNumberValidation',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your phone number`
  String get enterPhoneNumber {
    return Intl.message(
      'Enter Your phone number',
      name: 'enterPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get enterPassword {
    return Intl.message(
      'Enter your password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get enterName {
    return Intl.message(
      'Enter your name',
      name: 'enterName',
      desc: '',
      args: [],
    );
  }

  /// `Don't have account? `
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have account? ',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Agree to`
  String get agreeTo {
    return Intl.message(
      'Agree to',
      name: 'agreeTo',
      desc: '',
      args: [],
    );
  }

  /// `terms & conditions`
  String get termsAndConditions {
    return Intl.message(
      'terms & conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `The phone you have entered is already in use`
  String get thePhoneIsUsedBefore {
    return Intl.message(
      'The phone you have entered is already in use',
      name: 'thePhoneIsUsedBefore',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
