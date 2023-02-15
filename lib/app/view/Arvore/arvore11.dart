import 'package:flutter/material.dart';
import 'package:tcc/app/view/Arvore/arvore12.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Arvore11 extends StatelessWidget {
  const Arvore11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const FundoArvoreZugan(),
        Opacity(
            opacity: 0.9,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Arvore12()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 4,
                        color: fundoTexto,
                        child: const Center(
                            child: Text(
                                'Zugan: Como não possuo descendetes não possuo subarvores, logo meu grau é 0 e isso me faz um nó folha.',
                                style:
                                    TextStyle(fontSize: 25, color: corTexto))),
                      ))
                ]))
      ],
    ));
  }
}
