import 'package:flutter/material.dart';
import 'package:tcc/app/view/Arvore/arvore16.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Arvore15 extends StatelessWidget {
  const Arvore15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const FundoArvoreXyugaso(),
        Opacity(
            opacity: 0.9,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Arvore16()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 4,
                        color: fundoTexto,
                        child: const Center(
                            child: Text(
                                'Xyugaso: Como sou um nó folha meu caminho até um nó folha é 0 então minha altura é 0.',
                                style:
                                    TextStyle(fontSize: 25, color: corTexto))),
                      ))
                ]))
      ],
    ));
  }
}
