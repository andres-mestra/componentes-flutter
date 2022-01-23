import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders and Checks'),
        ),
        body: Column(
          children: [
            //adaptive: ajustas los estilos al sistema donde correo la app
            Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: _sliderEnabled
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null,
            ),
            // Checkbox(
            //   value: _sliderEnabled,
            //   onChanged: (value) {
            //     _sliderEnabled = value ?? true;
            //     setState(() {});
            //   },
            // ),
            // Switch(
            //   value: _sliderEnabled,
            //   onChanged: (value) => setState(() {
            //     _sliderEnabled = value;
            //   }),
            // ),
            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                _sliderEnabled = value ?? true;
              }),
            ),
            SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                _sliderEnabled = value;
              }),
            ),
            const AboutListTile(),
            //SingleChildScrollView: cuando el contenido se sale de la pantalla
            //habilita el scroll
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://source.unsplash.com/1600x1600'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
          ],
        ));
  }
}
