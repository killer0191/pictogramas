import 'package:flutter/material.dart';
import 'package:pictogramas/main.dart';
import 'package:audioplayers/audioplayers.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({Key? key}) : super(key: key);

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
                    'Comidas',
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
                    fem, 'assets/carne.jpg', 'carne.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/ceviche.jpg', 'ceviche.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/chilaquiles.jpg',
                    'chilaquiles.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/churros.jpg', 'churros.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/cochinita.jpg', 'cochinita.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/empanadas.jpg', 'empanadas.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/enchiladas.jpg',
                    'enchiladas.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/garbanzos.jpg', 'garbanzos.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/hamburguesa.jpg',
                    'hamburguesa.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/lentejas.jpg', 'lentejas.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/macarrones.jpg',
                    'macarrones.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/mole.jpg', 'mole.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/molletes.jpg', 'molletes.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/pan.jpg', 'pan.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/panuchos.jpg', 'panuchos.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/pastel.jpg', 'pastel.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/pescado.jpg', 'pescado.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/pollo_Frito.jpg',
                    'pollo_Frito.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/pozole.jpg', 'pozole.mp3', audioPlayer),
                _buildFoodContainer(fem, 'assets/quesadillas.jpg',
                    'quesadillas.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/sandwich.jpg', 'sandwich.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/sopas.jpg', 'sopas.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/tacos.jpg', 'tacos.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/tamales.jpg', 'tamales.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/tamalitos.jpg', 'tamalitos.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/torta.jpg', 'torta.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/tortilla.jpg', 'tortilla.mp3', audioPlayer),
                _buildFoodContainer(
                    fem, 'assets/tostadas.jpg', 'tostadas.mp3', audioPlayer),
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
