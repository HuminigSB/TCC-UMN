import 'package:flutter/material.dart';
import 'package:tcc/app/view/Pilha/pilha16.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Pilha15 extends StatelessWidget {
  const Pilha15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const FundoPilha11(),
        Opacity(
            opacity: 0.9,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Pilha16()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 4,
                        color: fundoTexto,
                        child: const Center(
                            child: Text(
                                'Instrutora: Quem está no topo da pilha?\nJohan, Alex, Dominique: Alex!\nInstrutora: Como está a pilha?\nJohan, Alex, Dominique: Nem cheia, nem vazia!',
                                style:
                                    TextStyle(fontSize: 25, color: corTexto))),
                      ))
                ]))
      ],
    ));
  }
}
