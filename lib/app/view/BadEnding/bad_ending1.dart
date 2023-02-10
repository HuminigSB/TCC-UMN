import 'package:flutter/material.dart';
import 'package:tcc/app/view/BadEnding/bad_ending2.dart';
import 'package:tcc/app/view/Introducao/intro2.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class BadEnding1 extends StatelessWidget {
  const BadEnding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const FundoBadEnding(),
        Opacity(
            opacity: 0.6,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const BadEnding2()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 3,
                        color: fundoTexto,
                        child: const Center(
                            child: Text(
                                '"Apos se matricular no curso da UMN você estudou."',
                                style:
                                    TextStyle(fontSize: 25, color: corTexto))),
                      ))
                ]))
      ],
    ));
  }
}
