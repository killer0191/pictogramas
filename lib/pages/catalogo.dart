import 'package:flutter/material.dart';
import 'package:pictogramas/pages/catalogo/foods.dart';
import 'package:pictogramas/pages/catalogo/animales.dart';
import 'package:pictogramas/pages/catalogo/emociones.dart';
import 'package:pictogramas/pages/catalogo/letreros.dart';
import 'package:pictogramas/pages/catalogo/body.dart';
import 'package:pictogramas/pages/catalogo/lugares.dart';
import 'package:pictogramas/pages/catalogo/objetos.dart';
import 'package:pictogramas/pages/catalogo/ropa.dart';
import 'package:pictogramas/pages/catalogo/transporte.dart';

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
  runApp(const CatalogoPage());
}

class CatalogoPage extends StatelessWidget {
  const CatalogoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: Color(0xffc1c1c1),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        textTheme: TextTheme(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffc1c1c1),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                          responsiveMargin(10.0, context),
                          0,
                          responsiveMargin(10.0, context),
                          responsiveHeight(30.0, context),
                        ),
                        child: Center(
                          child: Text(
                            'Catálogo',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: responsiveWidth(40.0, context),
                              fontWeight: FontWeight.w400,
                              height: responsiveHeight(1.2125, context),
                              color: Color(0xff333333),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FoodsPage(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                responsiveMargin(10.0, context),
                                0,
                                responsiveMargin(5.0, context),
                                responsiveHeight(15.0, context),
                              ),
                              constraints: BoxConstraints(
                                minHeight: responsiveHeight(100.0, context),
                                maxHeight: responsiveHeight(118.0, context),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffeaeaea),
                                borderRadius: BorderRadius.circular(30 * fem),
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
                                  'Alimentos',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: responsiveWidth(24.0, context),
                                    fontWeight: FontWeight.w400,
                                    height: responsiveHeight(1.2125, context),
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AnimalPage(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                responsiveMargin(5.0, context),
                                0,
                                responsiveMargin(10.0, context),
                                responsiveHeight(15.0, context),
                              ),
                              constraints: BoxConstraints(
                                minHeight: responsiveHeight(100.0, context),
                                maxHeight: responsiveHeight(118.0, context),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffeaeaea),
                                borderRadius: BorderRadius.circular(30 * fem),
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
                                  'Animales',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: responsiveWidth(24.0, context),
                                    fontWeight: FontWeight.w400,
                                    height: responsiveHeight(1.2125, context),
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EmocionPage(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                responsiveMargin(10.0, context),
                                0,
                                responsiveMargin(5.0, context),
                                responsiveHeight(15.0, context),
                              ),
                              constraints: BoxConstraints(
                                minHeight: responsiveHeight(100.0, context),
                                maxHeight: responsiveHeight(118.0, context),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffeaeaea),
                                borderRadius: BorderRadius.circular(30 * fem),
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
                                  'Emociones',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: responsiveWidth(24.0, context),
                                    fontWeight: FontWeight.w400,
                                    height: responsiveHeight(1.2125, context),
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LetreroPage(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                responsiveMargin(5.0, context),
                                0,
                                responsiveMargin(10.0, context),
                                responsiveHeight(15.0, context),
                              ),
                              constraints: BoxConstraints(
                                minHeight: responsiveHeight(100.0, context),
                                maxHeight: responsiveHeight(118.0, context),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffeaeaea),
                                borderRadius: BorderRadius.circular(30 * fem),
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
                                  'Letreros',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: responsiveWidth(24.0, context),
                                    fontWeight: FontWeight.w400,
                                    height: responsiveHeight(1.2125, context),
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LugaresPage(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                responsiveMargin(10.0, context),
                                0,
                                responsiveMargin(5.0, context),
                                responsiveHeight(15.0, context),
                              ),
                              constraints: BoxConstraints(
                                minHeight: responsiveHeight(100.0, context),
                                maxHeight: responsiveHeight(118.0, context),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffeaeaea),
                                borderRadius: BorderRadius.circular(30 * fem),
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
                                  'Lugares',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: responsiveWidth(24.0, context),
                                    fontWeight: FontWeight.w400,
                                    height: responsiveHeight(1.2125, context),
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ObjetosPage(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                responsiveMargin(5.0, context),
                                0,
                                responsiveMargin(10.0, context),
                                responsiveHeight(15.0, context),
                              ),
                              constraints: BoxConstraints(
                                minHeight: responsiveHeight(100.0, context),
                                maxHeight: responsiveHeight(118.0, context),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffeaeaea),
                                borderRadius: BorderRadius.circular(30 * fem),
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
                                  'Objetos',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: responsiveWidth(24.0, context),
                                    fontWeight: FontWeight.w400,
                                    height: responsiveHeight(1.2125, context),
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TransportePage(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                responsiveMargin(10.0, context),
                                0,
                                responsiveMargin(5.0, context),
                                responsiveHeight(15.0, context),
                              ),
                              constraints: BoxConstraints(
                                minHeight: responsiveHeight(100.0, context),
                                maxHeight: responsiveHeight(118.0, context),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffeaeaea),
                                borderRadius: BorderRadius.circular(30 * fem),
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
                                  'Transporte',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: responsiveWidth(24.0, context),
                                    fontWeight: FontWeight.w400,
                                    height: responsiveHeight(1.2125, context),
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BodyPage(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                responsiveMargin(5.0, context),
                                0,
                                responsiveMargin(10.0, context),
                                responsiveHeight(15.0, context),
                              ),
                              constraints: BoxConstraints(
                                minHeight: responsiveHeight(100.0, context),
                                maxHeight: responsiveHeight(118.0, context),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffeaeaea),
                                borderRadius: BorderRadius.circular(30 * fem),
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
                                  'Partes del cuerpo',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: responsiveWidth(24.0, context),
                                    fontWeight: FontWeight.w400,
                                    height: responsiveHeight(1.2125, context),
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RopaPage(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                responsiveMargin(10.0, context),
                                0,
                                responsiveMargin(5.0, context),
                                responsiveHeight(15.0, context),
                              ),
                              constraints: BoxConstraints(
                                minHeight: responsiveHeight(100.0, context),
                                maxHeight: responsiveHeight(118.0, context),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffeaeaea),
                                borderRadius: BorderRadius.circular(30 * fem),
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
                                  'Ropa',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: responsiveWidth(24.0, context),
                                    fontWeight: FontWeight.w400,
                                    height: responsiveHeight(1.2125, context),
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Métodos responsive...

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
