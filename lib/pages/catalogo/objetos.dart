import 'package:flutter/material.dart';
import 'package:pictogramas/main.dart';
import 'package:audioplayers/audioplayers.dart';

class ObjetosPage extends StatelessWidget {
  const ObjetosPage({Key? key}) : super(key: key);

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
                    'Objetos',
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
                    fem, 'assets/almohadas.jpg', 'almohadas.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/balon.jpg', 'balon.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/bicicleta.jpg', 'bicicleta.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/bocinas.jpg', 'bocinas.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/brocha.jpg', 'brocha.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/caja_colores.jpg',
                    'caja_colores.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/cama.jpg', 'cama.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/celular.jpg', 'celular.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/cepillo_dientes.jpg',
                    'cepillo_dientes.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/cubiertos.jpg', 'cubiertos.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/gorra.jpg', 'gorra.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/guitarra.jpg', 'guitarra.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/juguetes.jpg', 'juguetes.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/lapicera.jpg', 'lapicera.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/lapiz.jpg', 'lapiz.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/lavadora.jpg', 'lavadora.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/libros.jpg', 'libros.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/licuadora.jpg', 'licuadora.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/llaves.jpg', 'llaves.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/lonchera.jpg', 'lonchera.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/mochila.jpg', 'mochila.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/monitor.jpg', 'monitor.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/patineta.jpg', 'patineta.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/plato.jpg', 'plato.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/refrigerador.jpg',
                    'refrigerador.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/reloj.jpg', 'reloj.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/silla.jpg', 'silla.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/tambor.jpg', 'tambor.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/tazas.jpg', 'tazas.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/teclado.jpg', 'teclado.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/ventilador.jpg',
                    'ventilador.mp3', audioPlayer),
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
