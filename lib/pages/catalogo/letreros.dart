import 'package:flutter/material.dart';
import 'package:pictogramas/main.dart';
import 'package:audioplayers/audioplayers.dart';

class LetreroPage extends StatelessWidget {
  const LetreroPage({Key? key}) : super(key: key);

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
                    'Letreros',
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
                    fem, 'assets/alto.jpg', 'alto.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/area_de_juegos.jpg',
                    'area_de_juegos.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/baños.jpg', 'baños.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/botiquin.jpg', 'botiquin.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/ceda_el_paso.jpg',
                    'ceda_el_paso.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/cruce_animales.jpg',
                    'cruce_animales.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/cruce_peatonal.jpg',
                    'cruce_peatonal.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/cruce_peatones.jpg',
                    'cruce_peatones.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/discapacitados.jpg',
                    'discapacitados.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/emergencia.jpg',
                    'emergencia.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/escaleras.jpg', 'escaleras.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/extintor.jpg', 'extintor.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/guardar_silencio.jpg',
                    'guardar_silencio.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/lavarse_manos.jpg',
                    'lavarse_manos.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/no_celular.jpg',
                    'no_celular.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/no_correr.jpg', 'no_correr.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/no_empujo.jpg', 'no_empujo.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/no_estacionar.jpg',
                    'no_estacionar.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/no_fumar.jpg', 'no_fumar.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/no_gritar.jpg', 'no_gritar.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/no_molestar.jpg',
                    'no_molestar.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/no_tirar_basura.jpg',
                    'no_tirar_basura.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/no_tocar.jpg', 'no_tocar.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/parada_de_autobus.jpg',
                    'parada_de_autobus.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/peligro_electricidad.jpg',
                    'peligro_electricidad.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/piso_mojado.jpg',
                    'piso_mojado.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/prohibido_el_paso.jpg',
                    'prohibido_el_paso.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/punto_de_reunion.jpg',
                    'punto_de_reunion.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/ruta_de_evacuacion.jpg',
                    'ruta_de_evacuacion.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/salida_de_emergencia.jpg',
                    'salida_de_emergencia.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/zona_escolar.jpg',
                    'zona_escolar.mp3', audioPlayer),
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
