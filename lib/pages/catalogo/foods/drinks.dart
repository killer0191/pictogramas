import 'package:flutter/material.dart';
import 'package:pictogramas/main.dart';
import 'package:audioplayers/audioplayers.dart';

class DrinkPage extends StatelessWidget {
  const DrinkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fem = 1.0;
    double ffem = 1.0;

    final AudioPlayer audioPlayer = AudioPlayer();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: EdgeInsets.all(10 * fem),
            child: Image.asset('assets/regresar.png'),
          ),
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
              child: Image.asset('assets/home.png'),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffc1c1c1),
        ),
        child: SingleChildScrollView(
          child: Container(
            padding:
                EdgeInsets.fromLTRB(47 * fem, 93 * fem, 59 * fem, 101 * fem),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin:
                      EdgeInsets.fromLTRB(11 * fem, 0 * fem, 0 * fem, 64 * fem),
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
                _buildFoodContainer(
                    fem, 'assets/agua.jpg', 'agua.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/atole.jpg', 'atole.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/cafe.jpg', 'cafe.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/chocolate.jpg', 'chocolate.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/chocomilk.jpg', 'chocomilk.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/horchata.jpg', 'horchata.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/jamaica.jpg', 'jamaica.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/jugo.jpg', 'jugo.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/leche.jpg', 'leche.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/limonada.jpg', 'limonada.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/malteada.jpg', 'malteada.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/pozol.jpg', 'pozol.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/refresco.jpg', 'refresco.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/tamarindo.jpg', 'tamarindo.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/te.jpg', 'te.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/vino.jpg', 'vino.mp3', audioPlayer),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFoodContainer(
      double fem, String imagePath, String audioPath, AudioPlayer audioPlayer) {
    return GestureDetector(
      onTap: () async {
        await audioPlayer.play(AssetSource(audioPath));
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 55 * fem),
        width: double.infinity,
        height: 300 * fem,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

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
