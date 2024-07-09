import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.lblDailyActivities),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            BuildActivityCard(
              title: S.current.lblPaymentSent,
              subtitle: S.current.lblYouSent,
              icon: Icons.send,
              iconColor:  Colors.green,
            ),
            BuildActivityCard(
              title: S.current.lblPaymentReceived,
              subtitle: S.current.lblReceivedFrom,
              icon:  Icons.call_received,
              iconColor: Colors.blue,
            ),
            BuildActivityCard(
              title:S.current.lblWithdrawal,
              subtitle:S.current.lblYouWithDrew,
              icon:Icons.money_off,
              iconColor:Colors.red,
            ),
            BuildActivityCard(
              title: S.current.lblDeposit,
              subtitle:S.current.lblDeposited,
              icon:Icons.account_balance_wallet,
              iconColor:Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}


class BuildActivityCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconColor;

  const BuildActivityCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: iconColor,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
