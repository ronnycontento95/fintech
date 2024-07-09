import 'dart:ffi';

import 'package:fintech_ui_tutorial/provider/change_language.dart';
import 'package:fintech_ui_tutorial/widgets/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../generated/l10n.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage:
                  NetworkImage('https://via.placeholder.com/150'), // Imagen de perfil
            ),
            const SizedBox(height: 20),
            Text(
              S.current.lblName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              S.current.lblEmail,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    widgetBottomSheet(context, widget: const Configuration());
                  },
                  icon: const Icon(Icons.settings),
                  label: Text(S.current.lblSetting),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.logout),
                  label: Text(S.current.lblLogout),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class LanguageOption {
  static const system = "_";
  static const spanish = 'es';
  static const english = 'en';
}

class Configuration extends StatefulWidget {
  const Configuration({super.key});

  @override
  State<Configuration> createState() => _ConfigurationState();
}

class _ConfigurationState extends State<Configuration> {
  String? _languageOption = LanguageOption.system;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            S.current.lblSystem,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Radio<String>(
            value: LanguageOption.system,
            groupValue: _languageOption,
            activeColor: Colors.black,
            onChanged: (String? value) {
              setState(() {
                _languageOption = value;
              });
            },
          ),
        ),
        ListTile(
          title:  Text(
            S.current.lblEnglish,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Radio<String>(
            value: LanguageOption.english,
            groupValue: _languageOption,
            activeColor: Colors.black,
            onChanged: (String? value) {
              setState(() {
                _languageOption = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text(
            S.current.lblSpanish,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Radio<String>(
            value: LanguageOption.spanish,
            groupValue: _languageOption,
            activeColor: Colors.black,
            onChanged: (String? value) {
              setState(() {
                _languageOption = value;
              });
            },
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: ElevatedButton(
            onPressed: () {
              context.read<ProviderLanguagePreference>().localeMode = _languageOption;
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
            child: Text(
              S.current.lblAccept,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
