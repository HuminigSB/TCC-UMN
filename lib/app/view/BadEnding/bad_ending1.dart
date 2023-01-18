import 'package:flutter/material.dart';
import 'package:tcc/app/view/Introducao/intro2.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class BadEnding1 extends StatelessWidget {
  const BadEnding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const FundoPlace(),
        Opacity(
            opacity: 0.6,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Intro2()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 3,
                        color: verde,
                        child: const Center(
                            child: Text('...', style: TextStyle(fontSize: 25))),
                      ))
                ]))
      ],
    );
  }
}