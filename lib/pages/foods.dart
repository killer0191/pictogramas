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
      body: ListView(
        children: [
          Container(
            padding:
                EdgeInsets.fromLTRB(47 * fem, 93 * fem, 59 * fem, 101 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                        11 * fem, 0 * fem, 0 * fem, 64 * fem),
                    child: Text(
                      'Alimentos',
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
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 55 * fem),
                  width: double.infinity,
                  height: 219 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xffd9d9d9),
                  ),
                  child: Center(
                    child: Center(
                      child: Text(
                        'Comidas',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 32 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 219 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xffd9d9d9),
                  ),
                  child: Center(
                    child: Center(
                      child: Text(
                        'Bebidas',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 32 * ffem,
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
        ],
      ),
    );
  }
}
