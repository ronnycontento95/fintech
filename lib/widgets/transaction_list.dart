import 'package:fintech_ui_tutorial/generated/l10n.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    String? dateTime = DateTime.now().toString();
    return Expanded(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(dateTime),
                Row(
                  children: [
                    Text(S.current.lblAllTransactions),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 239, 243, 245),
              child: Icon(
                Icons.fitness_center,
                color: Colors.purpleAccent,
              ),
            ),
            title: Text(S.current.lblGym),
            subtitle: Text(S.current.lblPayment),
            trailing: const Text(
              "-\$45.99",
              // style: TextStyle(color: Colors.red),
            ),
          ),
          Divider(
            color: Colors.grey[200],
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 239, 243, 245),
              child: Icon(
                Icons.account_balance,
                color: Colors.teal,
              ),
            ),
            title: Text(S.current.lblBankAmerica),
            subtitle: Text(S.current.lblDep),
            trailing: const Text(
              "+\$1,328.00",
              style: TextStyle(color: Colors.teal),
            ),
          ),
          Divider(
            color: Colors.grey[200],
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 239, 243, 245),
              child: Icon(
                Icons.send,
                color: Colors.orangeAccent,
              ),
            ),
            title: Text(S.current.lblToBrodyArmando),
            subtitle: Text(S.current.lblSent),
            trailing: const Text(
              "-\$699.00",
              // style: TextStyle(color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
