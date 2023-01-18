import 'package:flutter/material.dart';
import 'package:tcc/app/view/Introducao/intro3.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Intro2 extends StatelessWidget {
  const Intro2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const FundoIntro1(),
        Center(
            child: SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.height,
                child: const Image(
                    image: AssetImage('assets\\images\\panfletoMostra.png')))),
        Opacity(
            opacity: 0.6,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Intro3()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 3,
                        color: verde,
                        child: const Center(
                            child: Text('(O que é esse panfleto?)',
                                style: TextStyle(fontSize: 25))),
                      ))
                ]))
      ],
    );
  }
}
