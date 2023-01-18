import 'package:flutter/material.dart';
import 'package:tcc/app/view/Pilha/pilha10.dart';
import 'package:tcc/app/view/fundos.dart';

import '../app.dart';

class Pilha9 extends StatelessWidget {
  const Pilha9({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const FundoPilha8(),
        Opacity(
            opacity: 0.6,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Pilha10()));
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
