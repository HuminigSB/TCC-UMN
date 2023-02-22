import 'package:flutter/material.dart';
import 'package:tcc/app/view/Grafo/grafo22.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Grafo21 extends StatelessWidget {
  const Grafo21({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const FundoGrafoCurugaer(),
        Opacity(
            opacity: 0.9,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Grafo22()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 4,
                        color: fundoTexto,
                        child: const Center(
                            child: Text('Curugaer: Um!',
                                style:
                                    TextStyle(fontSize: 25, color: corTexto))),
                      ))
                ]))
      ],
    ));
  }
}
