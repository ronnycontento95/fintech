import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scan/scan.dart';


class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  ScanController controller = ScanController();
  String platformVersion = 'Unknown';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    String platformVersion;
    try {
      platformVersion = await Scan.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }
    if (!mounted) return;

    setState(() {
      platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScanView(
      controller: controller,
      scanAreaScale: .7,
      scanLineColor: Colors.green,
      onCapture: (data) {
        Navigator.push(context, MaterialPageRoute(
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('scan result'),
              ),
              body: Center(
                child: Text(data),
              ),
            );
          },
        )).then((value) {
          controller.resume();
        });
      },
    );
  }
}
