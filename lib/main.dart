import 'package:flutter/material.dart';

// Define tus variables fem y ffem aquí
double fem = 1.0; // Reemplaza 1.0 con el valor correcto
double ffem = 1.0; // Reemplaza 1.0 con el valor correcto

// Define la función SafeGoogleFont aquí
TextStyle SafeGoogleFont(String font,
    {double? fontSize, FontWeight? fontWeight, double? height, Color? color}) {
  // Implementa la lógica necesaria para la función SafeGoogleFont
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
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding:
                EdgeInsets.fromLTRB(5 * fem, 44.5 * fem, 5 * fem, 30 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  // pictogramasgVz (13:27)
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                        1 * fem, 0 * fem, 0 * fem, 26.5 * fem),
                    child: Text(
                      'Pictogramas',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 40 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                  width: double.infinity,
                  height: 118 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 14 * fem, 0 * fem),
                        width: 168 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffd9d9d9),
                        ),
                        child: Center(
                          child: Center(
                            child: Text(
                              'Alimentos',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 24 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 168 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffd9d9d9),
                        ),
                        child: Center(
                          child: Center(
                            child: Text(
                              'Animales',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 24 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                  width: double.infinity,
                  height: 118 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 14 * fem, 0 * fem),
                        width: 168 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffd9d9d9),
                        ),
                        child: Center(
                          child: Center(
                            child: Text(
                              'Emociones',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 24 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 168 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffd9d9d9),
                        ),
                        child: Center(
                          child: Center(
                            child: Text(
                              'Letreros',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 24 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                  width: double.infinity,
                  height: 118 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 14 * fem, 0 * fem),
                        width: 168 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffd9d9d9),
                        ),
                        child: Center(
                          child: Center(
                            child: Text(
                              'Lugares',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 24 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 168 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffd9d9d9),
                        ),
                        child: Center(
                          child: Center(
                            child: Text(
                              'Objetos',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 24 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                  width: double.infinity,
                  height: 118 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 14 * fem, 0 * fem),
                        width: 168 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffd9d9d9),
                        ),
                        child: Center(
                          child: Center(
                            child: Text(
                              'Alimentos',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 24 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(
                            26.5 * fem, 29.5 * fem, 26.5 * fem, 29.5 * fem),
                        width: 168 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffd9d9d9),
                        ),
                        child: Center(
                          child: Center(
                            child: SizedBox(
                              child: Container(
                                constraints: BoxConstraints(
                                  maxWidth: 115 * fem,
                                ),
                                child: Text(
                                  'Partes del cuerpo',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 24 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(84 * fem, 0 * fem, 98 * fem, 0 * fem),
                  width: double.infinity,
                  height: 118 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xffd9d9d9),
                  ),
                  child: Center(
                    child: Center(
                      child: Text(
                        'Ropa',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 24 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xff000000),
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
    );
  }
}
