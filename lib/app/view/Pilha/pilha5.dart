import 'package:flutter/material.dart';
import 'package:tcc/app/view/Pilha/pilha6.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Pilha5 extends StatelessWidget {
  const Pilha5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const FundoPilha4(),
        Opacity(
            opacity: 0.6,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Pilha6()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 3,
                        color: fundoTexto,
                        child: const Center(
                            child: Text('...',
                                style:
                                    TextStyle(fontSize: 25, color: corTexto))),
                      ))
                ]))
      ],
    ));
  }
}
