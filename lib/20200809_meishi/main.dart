import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
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
        textTheme: TextTheme(),
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
      body: PageView(
        children: [
          _First(),
          Center(
            child: Container(
              color: Colors.black,
              child: Center(
                child: _CompanyLogo(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _First extends StatelessWidget {
  const _First({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(64),
                _CompanyLogo(
                  color: Colors.black,
                ),
                Spacer(),
                Text(
                  'Flutter App Engineer / Prototyper',
                  style: GoogleFonts.fahkwang(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          Gap(4),
          Text(
            'へぶん',
            style: GoogleFonts.abel(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          Expanded(
            child: Center(
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MAIL',
                        style: GoogleFonts.inconsolata(
                          fontSize: 15,
                        ),
                      ),
                      Gap(6),
                      Text(
                        'SNS',
                        style: GoogleFonts.inconsolata(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Gap(12),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'heavenosk@gmail.com',
                        style: GoogleFonts.inconsolata(
                          fontSize: 15,
                        ),
                      ),
                      Gap(6),
                      Text(
                        '@heavenOSK',
                        style: GoogleFonts.inconsolata(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CompanyLogo extends StatelessWidget {
  const _CompanyLogo({
    Key key,
    @required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PROTO-TYPE',
          style: GoogleFonts.fahkwang(
            fontSize: 15,
            color: color,
          ),
        ),
        Text(
          'STUDIO.',
          style: GoogleFonts.fahkwang(
            fontSize: 15,
            color: color,
          ),
        ),
      ],
    );
  }
}
