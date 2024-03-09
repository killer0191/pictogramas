import 'package:flutter/material.dart';
import 'package:pictogramas/main.dart';
import 'package:audioplayers/audioplayers.dart';

class EmocionPage extends StatelessWidget {
  const EmocionPage({Key? key}) : super(key: key);

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
                    'Emociones',
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
                _buildFoodContainer(fem, 'assets/agradecimiento.jpg',
                    'agradecimiento.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/alegre.jpg', 'alegre.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/ansiedad.jpg', 'ansiedad.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/asco.jpg', 'asco.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/asombrado.jpg', 'asombrado.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/asombro.jpg', 'asombro.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/burlar.jpg', 'burlar.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/compasion.jpg', 'compasion.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/culpa.jpg', 'culpa.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/dudoso.jpg', 'dudoso.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/empatia.jpg', 'empatia.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/enojado.jpg', 'enojado.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/envidia.jpg', 'envidia.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/esperanza.jpg', 'esperanza.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/miedo.jpg', 'miedo.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/serenidad.jpg', 'serenidad.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/sonriente.jpg', 'sonriente.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/sorprendido.jpg',
                    'sorprendido.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/triste.jpg', 'triste.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/verguenza.jpg', 'verguenza.mp3', audioPlayer),
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
