import 'package:flutter/material.dart';
import 'package:tcc/app/view/fundos.dart';
import 'package:tcc/app/view/Introducao/intro8.dart';

import '../app.dart';

class Intro7 extends StatelessWidget {
  const Intro7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
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
                            builder: (context) => const Intro8()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 3,
                        color: fundoTexto,
                        child: const Center(
                            child: Text(
                                'Diretor: Eu sou o diretor Noctis, e espero ter vocês como alunos da UMN no próximo ano.\nTeremos várias sessões da amostra dos nossos cursos de pilha, fila, lista e árvore iniciando agora e para os alunos que não conseguirem se identificar com eles mais tarde teremos início às sessões da mostra do curso de grafos, contudo apenas os alunos que passaram por todas as 4 mostras poderão assistir a ela.',
                                style:
                                    TextStyle(fontSize: 25, color: corTexto))),
                      ))
                ]))
      ],
    ));
  }
}
