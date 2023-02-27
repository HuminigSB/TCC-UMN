import 'package:flutter/material.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Grafo35 extends StatelessWidget {
  const Grafo35({super.key});

  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height / 3;
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
                  SizedBox(
                      width: double.infinity,
                      height: altura,
                      child: Column(children: [
                        Container(
                          height: (altura / 3) * 2,
                          color: fundoTexto,
                          child: const Center(
                              child: Text(
                                  'Instrutora: Vocês já sabem como funciona assine a folha na direita se gostaram do curso. Ah, já ia me esquecendo, aqui não premiamos indecisos, então se não se decidiu pode ir embora.',
                                  style: TextStyle(
                                      fontSize: 25, color: corTexto))),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('/badEnding');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blueAccent),
                                  color: fundoTexto),
                              height: (altura / 3) / 2,
                              width: MediaQuery.of(context).size.width,
                              child: const Center(
                                  child: Text('Assinar folha',
                                      style: TextStyle(
                                          fontSize: 25, color: corTexto))),
                            )),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('/good');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blueAccent),
                                  color: fundoTexto),
                              height: (altura / 3) / 2,
                              width: MediaQuery.of(context).size.width,
                              child: const Center(
                                  child: Text('Ir embora',
                                      style: TextStyle(
                                          fontSize: 25, color: corTexto))),
                            )),
                      ]))
                ]))
      ],
    ));
  }
}
