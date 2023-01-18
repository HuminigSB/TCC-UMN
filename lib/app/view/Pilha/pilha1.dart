import 'package:flutter/material.dart';
import 'package:tcc/app/view/fundos.dart';
import 'package:tcc/app/view/Introducao/intro15.dart';

import '../app.dart';

class Pilha1 extends StatelessWidget {
  const Pilha1({super.key});

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
                            builder: (context) => const Intro15()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 3,
                        color: verde,
                        child: const Center(
                            child: Text(
                                'Diretor: Se voce se tornar um nó sem proposito voce é destruido pelo coletor de lixo.',
                                style: TextStyle(fontSize: 25))),
                      ))
                ]))
      ],
    );
  }
}
