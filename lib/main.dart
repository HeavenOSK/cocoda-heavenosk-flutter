import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Flutter APP Engineer / Prototyper',
            style: GoogleFonts.abrilFatface(),
          ),
          Text(
            'へぶん',
            style: GoogleFonts.sawarabiMincho(
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Text(
                'MAIL',
              ),
              Text(
                'heavenosk@gmail.com',
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'SNS',
              ),
              Text(
                '@heavenOSK',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
