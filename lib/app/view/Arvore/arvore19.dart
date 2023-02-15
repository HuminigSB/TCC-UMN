import 'package:flutter/material.dart';
import 'package:tcc/app/view/Arvore/arvore20.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Arvore19 extends StatelessWidget {
  const Arvore19({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const FundoArvoreErgdulg(),
        Opacity(
            opacity: 0.9,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Arvore20()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 4,
                        color: fundoTexto,
                        child: const Center(
                            child: Text(
                                'Ergdulg: Como sou a raiz da árvore, minha altura é a altura da árvore ou seja 2.',
                                style:
                                    TextStyle(fontSize: 25, color: corTexto))),
                      ))
                ]))
      ],
    ));
  }
}
