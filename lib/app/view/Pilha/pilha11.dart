import 'package:flutter/material.dart';
import 'package:tcc/app/view/Pilha/pilha12.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Pilha11 extends StatelessWidget {
  const Pilha11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const FundoPilha10(),
        Opacity(
            opacity: 0.9,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Pilha12()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 4,
                        color: fundoTexto,
                        child: const Center(
                            child: Text(
                                'Instrutora: Os nós de pilha sempre devem saber responder duas perguntas, a primeira delas é quem está no topo da pilha?\nJohan, Alex, Dominique: Dominique!\nInstrutora: E a segunda perguta é como está a pilha?\nJohan, Alex, Dominique: Cheia!',
                                style:
                                    TextStyle(fontSize: 25, color: corTexto))),
                      ))
                ]))
      ],
    ));
  }
}
