import 'package:flutter/material.dart';
import 'package:tcc/app/view/Fila/fila7.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Fila6 extends StatelessWidget {
  const Fila6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const FundoFila5(),
        Opacity(
            opacity: 0.9,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Fila7()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 4,
                        color: fundoTexto,
                        child: const Center(
                            child: Text(
                                'Instrutora: Como podem ver sempre que um nó é enfileirado ele entra no fim da fila, agora vamos relembrar os elementos da fila, estudades digam os nomes na ordem da fila.',
                                style:
                                    TextStyle(fontSize: 25, color: corTexto))),
                      ))
                ]))
      ],
    ));
  }
}
