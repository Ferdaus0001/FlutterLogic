import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // This function will launch a URL
  void _launchURL() async {
    const url = 'https://www.google.com'; // Your desired URL
    if (await canLaunch(url)) {
      await launch(url); // Opens the URL in the default browser
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('URL Launcher Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _launchURL, // Button to launch the URL
          child: Text('Launch URL'),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}
