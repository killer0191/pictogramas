import 'package:flutter/material.dart';
import 'package:pictogramas/main.dart';
import 'package:audioplayers/audioplayers.dart';

class DomesticPage extends StatelessWidget {
  const DomesticPage({Key? key}) : super(key: key);

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
            //margin: EdgeInsets.all(10 * fem),
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
                    'Domesticos',
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
                    fem, 'assets/araña.jpg', 'araña.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/borrego.jpg', 'borrego.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/burro.jpg', 'burro.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/caballo.jpg', 'caballo.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/cabra.jpg', 'cabra.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/cangrejo.jpg', 'cangrejo.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/caracol.jpg', 'caracol.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/cerdo.jpg', 'cerdo.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/chicharra.jpg', 'chicharra.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/colibri.jpg', 'colibri.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/conejo.jpg', 'conejo.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/cotorro.jpg', 'cotorro.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/cucaracha.jpg', 'cucaracha.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/cuyos.jpg', 'cuyos.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/gallina.jpg', 'gallina.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/ganso.jpg', 'ganso.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/gato.jpg', 'gatos.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/guacamayo.jpg', 'guacamayo.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/hamsters.jpg', 'hamsters.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/hormiga.jpg', 'hormiga.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/iguana.jpg', 'iguana.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/loro.jpg', 'loro.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/mariposa.jpg', 'mariposa.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/mosca.jpg', 'mosca.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/paloma.jpg', 'paloma.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/pato.jpg', 'patos.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/pavo.jpg', 'pavo.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/pavo_Real.jpg', 'pavo_Real.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/perro.jpg', 'perro.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/pez.jpg', 'pez.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/raton.jpg', 'raton.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/tortuga.jpg', 'tortuga.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/vaca.jpg', 'vacas.mp3', audioPlayer),
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
