import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
  Curve _animationCurve = Curves.easeInOut;

  final Random _random = Random();

  Color _getRandomColor() {
    return Color.fromRGBO(
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
      1,
    );
  }

  Curve _getRandomCurve() {
    const List<Curve> curves = [
      Curves.easeIn,
      Curves.easeOut,
      Curves.easeInOut,
      Curves.bounceIn,
      Curves.bounceOut,
      Curves.bounceInOut,
      Curves.elasticIn,
      Curves.elasticOut,
      Curves.elasticInOut,
      Curves.linear,
      Curves.fastOutSlowIn,
      Curves.slowMiddle,
      Curves.decelerate,
      Curves.easeInCirc,
      Curves.easeOutCirc,
      Curves.easeInOutCirc,
      Curves.easeInCubic,
      Curves.easeOutCubic,
      Curves.easeInOutCubic,
      Curves.easeInExpo,
      Curves.easeOutExpo,
      Curves.easeInOutExpo,
      Curves.easeInQuad,
      Curves.easeOutQuad,
      Curves.easeInOutQuad,
      Curves.easeInQuart,
      Curves.easeOutQuart,
      Curves.easeInOutQuart,
      Curves.easeInQuint,
      Curves.easeOutQuint,
      Curves.easeInOutQuint,
    ];
    return curves[_random.nextInt(curves.length)];
  }

  void _changeShape() {
    setState(() {
      _width = _random.nextDouble() * 200 + 50;
      _height = _random.nextDouble() * 200 + 50;
      _color = _getRandomColor();
      _borderRadius = BorderRadius.circular(_random.nextDouble() * 100);
      _animationCurve = _getRandomCurve();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'AnimatedContainer con colores, forma y animación random'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: _animationCurve,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeShape,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
