import 'package:flutter/material.dart';
import 'package:tcc/app/view/Pilha/pilha22.dart';
import 'package:tcc/app/view/escolha.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Pilha21 extends StatelessWidget {
  const Pilha21({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const FundoPilha13(),
        Opacity(
            opacity: 0.6,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Pilha22()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 3,
                        color: verde,
                        child: const Center(
                            child: Text(
                                'Instrutora: Turma Dispensada\nJohan, Alex, Dominique: Sim instrutora!',
                                style: TextStyle(fontSize: 25))),
                      ))
                ]))
      ],
    );
  }
}
