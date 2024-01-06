import 'package:flutter/material.dart';
import 'package:pictogramas/pages/foods/food.dart';
import 'package:pictogramas/pages/foods/drinks.dart';

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

class FoodsPage extends StatelessWidget {
  const FoodsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset('regresar.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              FoodPage()), // Reemplaza con tu ruta correcta
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 55 * fem),
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
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DrinksPage()), // Reemplaza con tu ruta correcta
                    );
                  },
                  child: Container(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
