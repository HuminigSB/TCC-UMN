import 'package:flutter/material.dart';

class FundoIntro1 extends StatelessWidget {
  const FundoIntro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        foregroundDecoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets\\images\\fachada.png'), fit: BoxFit.fill),
    ));
  }
}

class FundoIntro2 extends StatelessWidget {
  const FundoIntro2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        foregroundDecoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets\\images\\auditorioApresentação.png'),
          fit: BoxFit.fill),
    ));
  }
}

class FundoIntro3 extends StatelessWidget {
  const FundoIntro3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        foregroundDecoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets\\images\\auditorioZoom.png'),
          fit: BoxFit.fill),
    ));
  }
}

class FundoPlace extends StatelessWidget {
  const FundoPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        foregroundDecoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets\\images\\protoTipo fundo.png'),
          fit: BoxFit.fill),
    ));
  }
}
