import 'package:flutter/material.dart';
import 'package:tcc/app/view/escolha.dart';

import '../app.dart';

class BadEnding3 extends StatelessWidget {
  const BadEnding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(children: [
            Container(color: const Color.fromARGB(255, 255, 145, 0)),
            Center(
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Container(
                        foregroundDecoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets\\images\\noctis.png'),
                          fit: BoxFit.fill),
                    ))))
          ]),
        ),
        Opacity(
            opacity: 0.6,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Escolha()));
                      },
                      child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height / 5,
                          color: fundoTexto,
                          child: Center(
                              child: Column(children: [
                            const Center(
                                child: Text('"Noctis te enganou, Final Ruim"',
                                    style: TextStyle(fontSize: 50))),
                            const Center(
                                child: Text(
                                    '(clique para retornar as escolhas e tentar um caminho diferente)',
                                    style: TextStyle(
                                        fontSize: 25, color: corTexto)))
                          ]))))
                ]))
      ],
    ));
  }
}
