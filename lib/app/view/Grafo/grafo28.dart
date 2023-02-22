import 'package:flutter/material.dart';
import 'package:tcc/app/view/Grafo/grafo29.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Grafo28 extends StatelessWidget {
  const Grafo28({super.key});

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
                            builder: (context) => const Grafo29()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 4,
                        color: fundoTexto,
                        child: const Center(
                            child: Text(
                                'Instrutora: Agora peguem a fita ciano de volta e soltem a fita vermelha.',
                                style:
                                    TextStyle(fontSize: 25, color: corTexto))),
                      ))
                ]))
      ],
    ));
  }
}
