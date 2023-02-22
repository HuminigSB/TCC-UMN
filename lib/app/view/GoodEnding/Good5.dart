import 'package:flutter/material.dart';
import 'package:tcc/app/view/app.dart';
import 'package:tcc/app/view/fundos.dart';

class Good5 extends StatelessWidget {
  const Good5({super.key});

  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height / 3;
    return Scaffold(
        body: Stack(
      children: [
        const FundoGoodFim(),
        Opacity(
            opacity: 0.9,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueAccent),
                              color: fundoTexto),
                          height: (altura / 3) / 2,
                          width: MediaQuery.of(context).size.width / 2,
                          child: const Center(
                              child: Text('Voltar ao inicio.',
                                  style: TextStyle(
                                      fontSize: 25, color: corTexto))),
                        )),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/escolha');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueAccent),
                              color: fundoTexto),
                          height: (altura / 3) / 2,
                          width: MediaQuery.of(context).size.width / 2,
                          child: const Center(
                              child: Text('Voltar a escolha de cursos.',
                                  style: TextStyle(
                                      fontSize: 25, color: corTexto))),
                        )),
                  ]),
                ]))
      ],
    ));
  }
}
