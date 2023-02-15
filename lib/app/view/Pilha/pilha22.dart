import 'package:flutter/material.dart';
import 'package:tcc/app/controller/usuario_controller.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Pilha22 extends StatelessWidget {
  const Pilha22({super.key});

  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height / 3;
    return Scaffold(
        body: Stack(
      children: [
        const FundoPilha13(),
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
                                  'Instrutora: Quem decidiu por fazer o curso de pilha assine a folha na direita da porta de saida, quem ainda não tem certeza de qual curso vai fazer pegue um botton na esquerda',
                                  style: TextStyle(
                                      fontSize: 25, color: corTexto))),
                        ),
                        GestureDetector(
                            onTap: () {
                              UsuarioControler.instance.completarRota(3);
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
                              UsuarioControler.instance.completarRota(3);
                              Navigator.of(context).pushNamed('/escolha');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blueAccent),
                                  color: fundoTexto),
                              height: (altura / 3) / 2,
                              width: MediaQuery.of(context).size.width,
                              child: const Center(
                                  child: Text('Pegar botton',
                                      style: TextStyle(
                                          fontSize: 25, color: corTexto))),
                            )),
                      ]))
                ]))
      ],
    ));
  }
}
