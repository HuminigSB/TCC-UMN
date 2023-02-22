import 'package:flutter/material.dart';
import 'package:tcc/app/view/Pilha/pilha2.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Pilha1 extends StatelessWidget {
  const Pilha1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const FundoPilha1(),
        Opacity(
            opacity: 0.9,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Pilha2()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 4,
                        color: fundoTexto,
                        child: const Center(
                            child: Text(
                                'Instrutora: Bom dia futuros alunos da UMN, quantos rostos bonitos, sou a instrutora Jenner e minha turma irá demonstrar a função dos nós de pilha.',
                                style:
                                    TextStyle(fontSize: 25, color: corTexto))),
                      ))
                ]))
      ],
    ));
  }
}
