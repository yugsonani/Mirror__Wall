//import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mirror/education.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:mirror/web.dart';
import 'global.dart';
import 'movies.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) {
    await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
  }
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: edu(),
  ));
}

class edu extends StatefulWidget {
  const edu({Key? key}) : super(key: key);

  @override
  State<edu> createState() => _eduState();
}

class _eduState extends State<edu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.black26,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => educationpage()));
                },
                child: Container(
                  height: 200,
                  width: 300,
                  alignment: Alignment.center,
                  child: Text(
                    'Education',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red.shade400,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => moviepage()));
                },
                child: Container(
                  height: 200,
                  width: 300,
                  alignment: Alignment.center,
                  child: Text(
                    'Movies',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green.shade400,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => webpage()));
                  setState(() {
                    Global.weburl = 'https://www.google.co.in';
                  });
                },
                child: Container(
                  height: 200,
                  width: 300,
                  alignment: Alignment.center,
                  child: Text(
                    'Web',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade400,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
