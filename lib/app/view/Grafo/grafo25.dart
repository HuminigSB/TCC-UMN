import 'package:flutter/material.dart';
import 'package:tcc/app/view/Grafo/grafo26.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Grafo25 extends StatelessWidget {
  const Grafo25({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const FundoGrafoDesconexo(),
        Opacity(
            opacity: 0.9,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Grafo26()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 4,
                        color: fundoTexto,
                        child: const Center(
                            child: Text(
                                'Instrutora: Identifiquem os pedaços desse grafo na ordem do maior para o menor.',
                                style:
                                    TextStyle(fontSize: 25, color: corTexto))),
                      ))
                ]))
      ],
    ));
  }
}
