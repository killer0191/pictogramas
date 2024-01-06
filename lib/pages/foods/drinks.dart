import 'package:flutter/material.dart';
import 'package:pictogramas/main.dart';

double fem = 1.0; // Reemplaza 1.0 con el valor correcto
double ffem = 1.0; // Reemplaza 1.0 con el valor correcto

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

class DrinksPage extends StatelessWidget {
  const DrinksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.all(10 * fem),
                child: Image.asset('regresar.png'),
              ),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyApp(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10 * fem),
              child: Image.asset(
                  'home.png'), // Reemplaza 'otra_imagen.png' con tu imagen deseada
            ),
          ),
        ],
      ),
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
                      'Bebidas',
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
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 55 * fem),
                  width: double.infinity,
                  height: 219 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xffd9d9d9),
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
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 55 * fem),
                  width: double.infinity,
                  height: 219 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xffd9d9d9),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
