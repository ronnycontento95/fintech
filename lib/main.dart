import 'package:fintech_ui_tutorial/pages/activity.dart';
import 'package:fintech_ui_tutorial/pages/home.dart';
import 'package:fintech_ui_tutorial/pages/my_card.dart';
import 'package:fintech_ui_tutorial/pages/profile.dart';
import 'package:fintech_ui_tutorial/pages/scan.dart';
import 'package:fintech_ui_tutorial/provider/change_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var localeMode = 'es';

    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ProviderLanguagePreference())],
      child: ChangeNotifierProvider(
        create: (_) => ProviderLanguagePreference(),
        builder: (context, _) => MaterialApp(
          title: 'Fintech App',
          theme: ThemeData(
            colorScheme:
                ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 16, 80, 98)),
            useMaterial3: true,
          ),
          home: const MainPage(),
          locale: Locale(
              context.watch<ProviderLanguagePreference>().localeMode ?? localeMode),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            S.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
        ),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const Home(),
    const MyCardPage(),
    ScanPage(),
    const ActivityPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            tabItem(Icons.home, S.current.lblHome, 0),
            tabItem(Icons.credit_card, S.current.lblCardHome, 1),
            FloatingActionButton(
              onPressed: () => onTabTapped(2),
              backgroundColor: Colors.lightBlue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              child: const Icon(
                Icons.qr_code_scanner,
                color: Colors.white,
              ),
            ),
            tabItem(Icons.bar_chart, S.current.lblActivity, 3),
            tabItem(Icons.person, S.current.lblProfile, 4),
          ],
        ),
      ),
    );
  }

  Widget tabItem(IconData icon, String label, int index) {
    return IconButton(
      onPressed: () => onTabTapped(index),
      icon: Column(
        children: [
          Icon(
            icon,
            color: currentIndex == index ? Colors.black : Colors.grey,
          ),
          Text(
            label,
            style: TextStyle(
                fontSize: 10,
                color:
                    currentIndex == index ? Theme.of(context).primaryColor : Colors.grey),
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
