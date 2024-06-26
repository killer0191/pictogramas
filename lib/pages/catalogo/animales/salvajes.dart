import 'package:flutter/material.dart';
import 'package:pictogramas/main.dart';
import 'package:audioplayers/audioplayers.dart';

class SalvajePage extends StatelessWidget {
  const SalvajePage({Key? key}) : super(key: key);

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
                    'Salvajes',
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
                    fem, 'assets/aguila.jpg', 'aguila.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/ballena.jpg', 'ballena.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/caiman.jpg', 'caiman.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/canguro.jpg', 'canguro.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/cebra.jpg', 'cebra.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/delfin.jpg', 'delfin.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/elefante.jpg', 'elefante.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/flamingo.jpg', 'flamingo.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/garza.jpg', 'garza.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/jaguar.jpg', 'jaguar.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/leon.jpg', 'leon.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/leopardo.jpg', 'leopardo.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/mapache.jpg', 'mapache.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/mono.jpg', 'mono.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/ocelote.jpg', 'ocelote.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/orangutan.jpg', 'orangutan.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/pejelagarto.jpg',
                    'pejelagarto.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/pinguino.jpg', 'pinguino.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/serpiente.jpg', 'serpiente.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/tejon.jpg', 'tejon.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/tiburon.jpg', 'tiburon.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/tigre.jpg', 'tigre.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/tlacuache.jpg', 'tlacuache.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/tucan.jpg', 'tucan.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/venado.jpg', 'venado.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/zorrillo.jpg', 'zorrillo.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/zorro.jpg', 'zorro.mp3', audioPlayer),
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
