import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pictogramas/pages/catalogo.dart';
import 'package:pictogramas/pages/juegos.dart';

double fem = 1.0;
double ffem = 1.0;

TextStyle SafeGoogleFont(String font,
    {double? fontSize, FontWeight? fontWeight, double? height, Color? color}) {
  return TextStyle(
    fontFamily: font,
    fontSize: fontSize,
    fontWeight: fontWeight,
    height: height,
    color: color,
  );
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: Color(0xffc1c1c1),
        appBarTheme: AppBarTheme(),
        textTheme: TextTheme(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

double responsiveWidth(double width, BuildContext context) {
  double deviceWidth = MediaQuery.of(context).size.width;
  return (width / 375.0) * deviceWidth;
}

double responsiveHeight(double height, BuildContext context) {
  double deviceHeight = MediaQuery.of(context).size.height;
  return (height / 667.0) * deviceHeight;
}

double responsiveMargin(double margin, BuildContext context) {
  double deviceWidth = MediaQuery.of(context).size.width;
  return (margin / 375.0) * deviceWidth;
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(
                47 * fem,
                93 * fem,
                59 * fem,
                101 * fem,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffc1c1c1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                        0 * fem,
                        0 * fem,
                        0 * fem,
                        64 * fem,
                      ),
                      child: Text(
                        'Pictogramas',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 40 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xff333333),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CatalogoPage(),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30 * fem),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                          0 * fem,
                          0 * fem,
                          0 * fem,
                          55 * fem,
                        ),
                        width: double.infinity,
                        height: 219 * fem,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff000000)),
                          color: Color(0xffeaeaea),
                          borderRadius: BorderRadius.circular(30 * fem),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              '[Image url]',
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Catálogo',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 32 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff5c5c5c),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JuegosPage(),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30 * fem),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                          0 * fem,
                          0 * fem,
                          0 * fem,
                          55 * fem,
                        ),
                        width: double.infinity,
                        height: 219 * fem,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff000000)),
                          color: Color(0xffeaeaea),
                          borderRadius: BorderRadius.circular(30 * fem),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              '[Image url]',
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Juegos',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 32 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff5c5c5c),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
