import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pictogramas/pages/juegos.dart';
import 'dart:math';

class ImageModel {
  final String imagePath;
  final String id;

  ImageModel(this.imagePath, this.id);
}

class MemoramaPage extends StatefulWidget {
  @override
  _MemoramaPageState createState() => _MemoramaPageState();
}

class _MemoramaPageState extends State<MemoramaPage> {
  final List<ImageModel> _imagesTotales = [
    ImageModel('assets/abrigo.jpg', 'abrigo'), // Juego 1
    ImageModel('assets/ballena.jpg', 'ballena'),
    ImageModel('assets/cabeza.jpg', 'cabeza'),
    ImageModel('assets/casa.jpg', 'casa'),
    ImageModel('assets/agua.jpg', 'agua'),
    ImageModel('assets/cine.jpg', 'cine'),
    ImageModel('assets/aereopuerto.jpg', 'aereopuerto'), // Juego 2
    ImageModel('assets/aguila.jpg', 'aguila'),
    ImageModel('assets/alto.jpg', 'alto'),
    ImageModel('assets/ansiedad.jpg', 'ansiedad'),
    ImageModel('assets/araña.jpg', 'araña'),
    ImageModel('assets/asco.jpg', 'asco'), // Juego 3
    ImageModel('assets/autobus.jpg', 'autobus'),
    ImageModel('assets/balon.jpg', 'balon'),
    ImageModel('assets/banco.jpg', 'banco'),
    ImageModel('assets/cine.jpg', 'cine'),
    ImageModel('assets/barco.jpg', 'barco'),
    ImageModel('assets/borrego.jpg', 'borrego'), // Juego 4
    ImageModel('assets/brazo.jpg', 'brazo'),
    ImageModel('assets/burro.jpg', 'burro'),
    ImageModel('assets/caiman.jpg', 'caiman'),
    ImageModel('assets/caja_colores.jpg', 'caja de colores'),
    ImageModel('assets/cama.jpg', 'cama'),
    ImageModel('assets/camaron.jpg', 'camaron'),
    ImageModel('assets/camion.jpg', 'camion'), // Juego 5
    ImageModel('assets/campo_de_futbol.jpg', 'campo de futbol'),
    ImageModel('assets/canguro.jpg', 'canguro'),
    ImageModel('assets/ceda_el_paso.jpg', 'ceda el paso'),
    ImageModel('assets/cepillo_dientes.jpg', 'cepillo de dientes'),
    ImageModel('assets/cerdo.jpg', 'cerdo'),
    ImageModel('assets/ceviche.jpg', 'ceviche'),
  ];
  final List<ImageModel> _images = [];

  void seleccionarImagenesAlAzar() {
    // Obtener una lista de índices únicos aleatorios
    List<int> indicesAleatorios =
        List.generate(_imagesTotales.length, (index) => index)..shuffle();

    // Seleccionar las primeras 8 palabras según los índices aleatorios
    _images.clear(); // Limpiar la lista actual de palabras
    for (int i = 0; i < min(_imagesTotales.length, 6); i++) {
      _images.add(_imagesTotales[indicesAleatorios[i]]);
    }
  }

  ImageModel? _selectedImage;
  Set<String> _foundPairs = {};

  List<ImageModel> _imagesList = [];

  @override
  void initState() {
    super.initState();
    seleccionarImagenesAlAzar();
    _imagesList = _generateImagesList();
  }

  List<ImageModel> _generateImagesList() {
    List<ImageModel> duplicatedImages = [];
    for (int i = 0; i < _images.length; i++) {
      duplicatedImages.add(_images[i]);
      duplicatedImages
          .add(ImageModel(_images[i].imagePath, '${_images[i].id}2'));
    }
    duplicatedImages.shuffle();
    return duplicatedImages;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Memorama'),
        leading: IconButton(
          icon: Image.asset('assets/regresar.png'),
          onPressed: () {
            Navigator.pop(context);
            SystemChrome.setPreferredOrientations([
              DeviceOrientation.portraitUp,
              DeviceOrientation.portraitDown,
            ]);
          },
        ),
      ),
      backgroundColor: const Color(0xffc1c1c1),
      body: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 1.0,
        children: List.generate(_imagesList.length, (index) {
          final image = _imagesList[index];
          return GestureDetector(
            onTap: () {
              _handleImageSelection(image);
            },
            child: Center(
              child: Container(
                width: 150.0,
                height: 150.0,
                padding: const EdgeInsets.all(8.0),
                color: _selectedImage == image || _foundPairs.contains(image.id)
                    ? Colors.white
                    : const Color(0xFF2EB8AC),
                child: _selectedImage == image || _foundPairs.contains(image.id)
                    ? Image.asset(
                        image.imagePath,
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        'assets/memorama.jpg',
                        fit: BoxFit.cover,
                      ),
              ),
            ),
          );
        }),
      ),
    );
  }

  void _handleImageSelection(ImageModel image) {
    setState(() {
      if (_selectedImage == null && !_foundPairs.contains(image.id)) {
        _selectedImage = image;
      } else if (_selectedImage != null &&
          _selectedImage!.id != image.id &&
          !_foundPairs.contains(image.id)) {
        if ((_selectedImage!.id.endsWith('2') &&
                _selectedImage!.id
                        .substring(0, _selectedImage!.id.length - 1) ==
                    image.id) ||
            (image.id.endsWith('2') &&
                image.id.substring(0, image.id.length - 1) ==
                    _selectedImage!.id)) {
          _foundPairs.add(_selectedImage!.id);
          _foundPairs.add(image.id);
          _selectedImage = null;
          if (_foundPairs.length == _images.length * 2) {
            _showCongratulationsDialog();
          }
        } else {
          _selectedImage = image;
        }
      }
    });
  }

  void _showCongratulationsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('¡Felicidades!'),
          content: Text('Has encontrado todas las parejas de imágenes.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JuegosPage(),
                  ),
                );
                SystemChrome.setPreferredOrientations([
                  DeviceOrientation.portraitUp,
                  DeviceOrientation.portraitDown,
                ]);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
