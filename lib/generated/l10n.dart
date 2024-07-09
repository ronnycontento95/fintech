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

  /// `Activity page`
  String get lblActivityPage {
    return Intl.message(
      'Activity page',
      name: 'lblActivityPage',
      desc: '',
      args: [],
    );
  }

  /// `Daily Activities`
  String get lblDailyActivities {
    return Intl.message(
      'Daily Activities',
      name: 'lblDailyActivities',
      desc: '',
      args: [],
    );
  }

  /// `Transactions Overview`
  String get lblTransactionsOverview {
    return Intl.message(
      'Transactions Overview',
      name: 'lblTransactionsOverview',
      desc: '',
      args: [],
    );
  }

  /// `Activity Distribution`
  String get lblActivityDistribution {
    return Intl.message(
      'Activity Distribution',
      name: 'lblActivityDistribution',
      desc: '',
      args: [],
    );
  }

  /// `Sent`
  String get lblSent {
    return Intl.message(
      'Sent',
      name: 'lblSent',
      desc: '',
      args: [],
    );
  }

  /// `Received`
  String get lblReceived {
    return Intl.message(
      'Received',
      name: 'lblReceived',
      desc: '',
      args: [],
    );
  }

  /// `Withdrawal`
  String get lblWithdrawal {
    return Intl.message(
      'Withdrawal',
      name: 'lblWithdrawal',
      desc: '',
      args: [],
    );
  }

  /// `Deposit`
  String get lblDeposit {
    return Intl.message(
      'Deposit',
      name: 'lblDeposit',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back!`
  String get lblWelcomeBack {
    return Intl.message(
      'Welcome back!',
      name: 'lblWelcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Ronny`
  String get lblName {
    return Intl.message(
      'Ronny',
      name: 'lblName',
      desc: '',
      args: [],
    );
  }

  /// `My Card`
  String get lblMyCard {
    return Intl.message(
      'My Card',
      name: 'lblMyCard',
      desc: '',
      args: [],
    );
  }

  /// `Add new card`
  String get lblAddNewCard {
    return Intl.message(
      'Add new card',
      name: 'lblAddNewCard',
      desc: '',
      args: [],
    );
  }

  /// `**** **** **** 1990`
  String get lblNumberCard {
    return Intl.message(
      '**** **** **** 1990',
      name: 'lblNumberCard',
      desc: '',
      args: [],
    );
  }

  /// `ronny@example.com`
  String get lblEmail {
    return Intl.message(
      'ronny@example.com',
      name: 'lblEmail',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get lblSetting {
    return Intl.message(
      'Setting',
      name: 'lblSetting',
      desc: '',
      args: [],
    );
  }

  /// `Payment Sent`
  String get lblPaymentSent {
    return Intl.message(
      'Payment Sent',
      name: 'lblPaymentSent',
      desc: '',
      args: [],
    );
  }

  /// `You sent \$200 to Ronny`
  String get lblYouSent {
    return Intl.message(
      'You sent \\\$200 to Ronny',
      name: 'lblYouSent',
      desc: '',
      args: [],
    );
  }

  /// `'Payment Received',`
  String get lblPaymentReceived {
    return Intl.message(
      '\'Payment Received\',',
      name: 'lblPaymentReceived',
      desc: '',
      args: [],
    );
  }

  /// `You received \$150 from Alice`
  String get lblReceivedFrom {
    return Intl.message(
      'You received \\\$150 from Alice',
      name: 'lblReceivedFrom',
      desc: '',
      args: [],
    );
  }

  /// `You withdrew \$300 from ATM`
  String get lblYouWithDrew {
    return Intl.message(
      'You withdrew \\\$300 from ATM',
      name: 'lblYouWithDrew',
      desc: '',
      args: [],
    );
  }

  /// `You deposited \$500 to your savings account`
  String get lblDeposited {
    return Intl.message(
      'You deposited \\\$500 to your savings account',
      name: 'lblDeposited',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get lblLogout {
    return Intl.message(
      'Logout',
      name: 'lblLogout',
      desc: '',
      args: [],
    );
  }

  /// `Scan page`
  String get lblScanPage {
    return Intl.message(
      'Scan page',
      name: 'lblScanPage',
      desc: '',
      args: [],
    );
  }

  /// `All Transactions`
  String get lblAllTransactions {
    return Intl.message(
      'All Transactions',
      name: 'lblAllTransactions',
      desc: '',
      args: [],
    );
  }

  /// `Gym`
  String get lblGym {
    return Intl.message(
      'Gym',
      name: 'lblGym',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get lblPayment {
    return Intl.message(
      'Payment',
      name: 'lblPayment',
      desc: '',
      args: [],
    );
  }

  /// `Bank of America`
  String get lblBankAmerica {
    return Intl.message(
      'Bank of America',
      name: 'lblBankAmerica',
      desc: '',
      args: [],
    );
  }

  /// `Deposit`
  String get lblDep {
    return Intl.message(
      'Deposit',
      name: 'lblDep',
      desc: '',
      args: [],
    );
  }

  /// `To Brody Armando`
  String get lblToBrodyArmando {
    return Intl.message(
      'To Brody Armando',
      name: 'lblToBrodyArmando',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get lblHome {
    return Intl.message(
      'Home',
      name: 'lblHome',
      desc: '',
      args: [],
    );
  }

  /// `My Card`
  String get lblCardHome {
    return Intl.message(
      'My Card',
      name: 'lblCardHome',
      desc: '',
      args: [],
    );
  }

  /// `Activity`
  String get lblActivity {
    return Intl.message(
      'Activity',
      name: 'lblActivity',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get lblProfile {
    return Intl.message(
      'Profile',
      name: 'lblProfile',
      desc: '',
      args: [],
    );
  }

  /// `Español`
  String get lblSpanish {
    return Intl.message(
      'Español',
      name: 'lblSpanish',
      desc: '',
      args: [],
    );
  }

  /// `Accept`
  String get lblAccept {
    return Intl.message(
      'Accept',
      name: 'lblAccept',
      desc: '',
      args: [],
    );
  }

  /// `System`
  String get lblSystem {
    return Intl.message(
      'System',
      name: 'lblSystem',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get lblEnglish {
    return Intl.message(
      'English',
      name: 'lblEnglish',
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
      Locale.fromSubtags(languageCode: 'es'),
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
