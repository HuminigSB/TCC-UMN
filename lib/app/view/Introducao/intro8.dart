import 'package:flutter/material.dart';
import 'package:tcc/app/view/fundos.dart';
import 'package:tcc/app/view/Introducao/intro9.dart';

import '../app.dart';

class Intro8 extends StatelessWidget {
  const Intro8({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const FundoIntro2(),
        Opacity(
            opacity: 0.6,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Intro9()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 3,
                        color: verde,
                        child: const Center(
                            child: Text(
                                'Diretor: Por conta disso lembrem-se de pegar os comprovantes de participação das mostras.\nPodem ir às suas seções seguindo as indicações dos corredores.\n(o que é isso? acho que estou no lugar errado. Esse diretor parece saber das coisas vou falar com ele.)',
                                style: TextStyle(fontSize: 25))),
                      ))
                ]))
      ],
    );
  }
}
