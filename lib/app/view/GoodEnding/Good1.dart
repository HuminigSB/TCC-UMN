import 'package:flutter/material.dart';
import 'package:tcc/app/view/GoodEnding/Good2.dart';
import 'package:tcc/app/view/app.dart';
import 'package:tcc/app/view/fundos.dart';

class Good1 extends StatelessWidget {
  const Good1({super.key});

  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height / 3;
    return Scaffold(
        body: Stack(
      children: [
        const FundoEscolha(),
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
                                  '"Após passar por todas as mostras você começa a ficar na dúvida"',
                                  style: TextStyle(
                                      fontSize: 25, color: corTexto))),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('/escolha');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blueAccent),
                                  color: fundoTexto),
                              height: (altura / 3) / 2,
                              width: MediaQuery.of(context).size.width,
                              child: const Center(
                                  child: Text('Rever algum curso',
                                      style: TextStyle(
                                          fontSize: 25, color: corTexto))),
                            )),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Good2()));
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
