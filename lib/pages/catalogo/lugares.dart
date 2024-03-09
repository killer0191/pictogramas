import 'package:flutter/material.dart';
import 'package:pictogramas/main.dart';
import 'package:audioplayers/audioplayers.dart';

class LugaresPage extends StatelessWidget {
  const LugaresPage({Key? key}) : super(key: key);

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
                    'Lugares',
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
                _buildFoodContainer(fem, 'assets/aereopuerto.jpg',
                    'aereopuerto.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/alberca.jpg', 'alberca.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/banco.jpg', 'banco.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/baño.jpg', 'baño.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/bosque.jpg', 'bosque.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/campo_de_futbol.jpg',
                    'campo_de_futbol.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/carniceria.jpg',
                    'carniceria.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/casa.jpg', 'casa.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/cine.jpg', 'cine.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/circo.jpg', 'circo.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/cocina.jpg', 'cocina.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/cuarto.jpg', 'cuarto.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/escuela.jpg', 'escuela.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/farmacia.jpg', 'farmacia.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/feria.jpg', 'feria.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/gasolinera.jpg',
                    'gasolinera.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/hospital.jpg', 'hospital.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/hotel.jpg', 'hotel.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/iglesia.jpg', 'iglesia.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/mercado.jpg', 'mercado.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/montaña.jpg', 'montaña.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/museo.jpg', 'museo.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/parque.jpg', 'parque.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/patio.jpg', 'patio.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/playa.jpg', 'playa.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/restaurante.jpg',
                    'restaurante.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/selva.jpg', 'selva.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/super.jpg', 'supermercado.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/tienda.jpg', 'tienda.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/tobogan.jpg', 'tobogan.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/zoologico.jpg', 'zoologico.mp3', audioPlayer),
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
