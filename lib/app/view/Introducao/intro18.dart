import 'package:flutter/material.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Intro18 extends StatelessWidget {
  const Intro18({super.key});

  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height / 3;
    return Stack(
      children: [
        const FundoIntro3(),
        Opacity(
            opacity: 0.6,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                      width: double.infinity,
                      height: altura,
                      child: Column(children: [
                        Container(
                          height: (altura / 3) * 2,
                          color: verde,
                          child: const Center(
                              child: Text(
                                  'Diretor: Se voce se tornar um nó sem proposito voce é destruido pelo coletor de lixo.\nEu: Ai meu deus eu não quero ser destruido, obrigado diretor vou ir para as mostras tchau.',
                                  style: TextStyle(fontSize: 25))),
                        ),
                        Row(children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('/lista');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.blueAccent),
                                    color: verde),
                                height: (altura / 3) / 2,
                                width: MediaQuery.of(context).size.width / 2,
                                child: const Center(
                                    child: Text('Ir para mostra de lista',
                                        style: TextStyle(fontSize: 25))),
                              )),
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('/arvore');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.blueAccent),
                                    color: verde),
                                height: (altura / 3) / 2,
                                width: MediaQuery.of(context).size.width / 2,
                                child: const Center(
                                    child: Text('Ir para mostra de arvore',
                                        style: TextStyle(fontSize: 25))),
                              )),
                        ]),
                        Row(children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('/pilha');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.blueAccent),
                                    color: verde),
                                height: (altura / 3) / 2,
                                width: MediaQuery.of(context).size.width / 2,
                                child: const Center(
                                    child: Text('Ir para mostra de pilha',
                                        style: TextStyle(fontSize: 25))),
                              )),
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('/fila');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.blueAccent),
                                    color: verde),
                                height: (altura / 3) / 2,
                                width: MediaQuery.of(context).size.width / 2,
                                child: const Center(
                                    child: Text('Ir para mostra de fila',
                                        style: TextStyle(fontSize: 25))),
                              )),
                        ]),
                      ]))
                ]))
      ],
    );
  }
}
