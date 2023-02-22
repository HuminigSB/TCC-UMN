import 'package:flutter/material.dart';
import 'package:tcc/app/view/GoodEnding/Good4.dart';
import 'package:tcc/app/view/app.dart';
import 'package:tcc/app/view/fundos.dart';

class Good3 extends StatelessWidget {
  const Good3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const FundoGoodSala(),
        Opacity(
            opacity: 0.9,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Good4()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 4,
                        color: fundoTexto,
                        child: const Center(
                            child: Text(
                                '(Uhh! Não acredito eu dormi na aula denovo. Cade todo mundo?)',
                                style:
                                    TextStyle(fontSize: 25, color: corTexto))),
                      ))
                ]))
      ],
    ));
  }
}
