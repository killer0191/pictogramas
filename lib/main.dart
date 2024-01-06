import 'package:flutter/material.dart';
import 'package:pictogramas/pages/foods.dart';

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
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
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
                          'Pictogramas',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: responsiveWidth(40.0, context),
                            fontWeight: FontWeight.w400,
                            height: responsiveHeight(1.2125, context),
                            color: Color(0xff000000),
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
                              color: Color(0xffd9d9d9),
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
                            color: Color(0xffd9d9d9),
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
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
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
                            color: Color(0xffd9d9d9),
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
                      Expanded(
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
                            color: Color(0xffd9d9d9),
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
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
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
                            color: Color(0xffd9d9d9),
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
                      Expanded(
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
                            color: Color(0xffd9d9d9),
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
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
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
                            color: Color(0xffd9d9d9),
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
                      Expanded(
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
                            color: Color(0xffd9d9d9),
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
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
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
                            color: Color(0xffd9d9d9),
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
                    ],
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
