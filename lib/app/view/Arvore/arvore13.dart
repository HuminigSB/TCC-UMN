import 'package:flutter/material.dart';
import 'package:tcc/app/view/Arvore/arvore14.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Arvore13 extends StatelessWidget {
  const Arvore13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const FundoArvoreHeico(),
        Opacity(
            opacity: 0.9,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Arvore14()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 4,
                        color: fundoTexto,
                        child: const Center(
                            child: Text(
                                'Heico: Meu grau é 1, como meu grau é maior que 0 eu sou um nó interno.',
                                style:
                                    TextStyle(fontSize: 25, color: corTexto))),
                      ))
                ]))
      ],
    ));
  }
}
