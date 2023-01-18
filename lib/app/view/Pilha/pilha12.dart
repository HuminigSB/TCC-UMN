import 'package:flutter/material.dart';
import 'package:tcc/app/view/Pilha/pilha13.dart';
import 'package:tcc/app/view/escolha.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Pilha12 extends StatelessWidget {
  const Pilha12({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const FundoPilha10(),
        Opacity(
            opacity: 0.6,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Pilha13()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 3,
                        color: verde,
                        child: const Center(
                            child: Text(
                                'Instrutora: Observem que no momento nem Johan nem Alex podem sair, apenas Dominique consegue sair nesse momento. Dominique desempilhar.\nDominique: A caminho do solo instrutora.',
                                style: TextStyle(fontSize: 25))),
                      ))
                ]))
      ],
    );
  }
}
