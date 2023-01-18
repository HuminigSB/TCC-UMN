import 'package:flutter/material.dart';
import 'package:tcc/app/view/fundos.dart';
import 'package:tcc/app/view/Introducao/intro16.dart';

import '../app.dart';

class Intro15 extends StatelessWidget {
  const Intro15({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const FundoIntro3(),
        Opacity(
            opacity: 0.6,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Intro16()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 3,
                        color: verde,
                        child: const Center(
                            child: Text(
                                'Eu: Acho que houve algum engano, eu nunca ouvi falar desse lugar e porque todos aqui são bolas brancas?\nDiretor: Acho que entendo o seu caso você é humano?\nEu: Como assim se eu sou humano, lógico que sou humano!!',
                                style: TextStyle(fontSize: 25))),
                      ))
                ]))
      ],
    );
  }
}
