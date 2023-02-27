import 'package:flutter/material.dart';
import 'package:tcc/app/view/Grafo/grafo20.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Grafo19 extends StatelessWidget {
  const Grafo19({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const FundoGrafo3(),
        Opacity(
            opacity: 0.9,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Grafo20()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 4,
                        color: fundoTexto,
                        child: const Center(
                            child: Text(
                                'Instrutora: O grau de vértice é no caso dessa demonstração é a quantia de arestas/fitas ligadas a cada vértice/nó, pois na demonstração estamos trabalhando apenas com o grafo não dirigido que é um pouco mais simples.',
                                style:
                                    TextStyle(fontSize: 25, color: corTexto))),
                      ))
                ]))
      ],
    ));
  }
}
