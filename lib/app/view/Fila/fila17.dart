import 'package:flutter/material.dart';
import 'package:tcc/app/view/Fila/fila18.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Fila17 extends StatelessWidget {
  const Fila17({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const FundoFila7(),
        Opacity(
            opacity: 0.9,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Fila18()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 4,
                        color: fundoTexto,
                        child: const Center(
                            child: Text(
                                'Instrutora: Turma qual o tamanho da fila?',
                                style:
                                    TextStyle(fontSize: 25, color: corTexto))),
                      ))
                ]))
      ],
    ));
  }
}
