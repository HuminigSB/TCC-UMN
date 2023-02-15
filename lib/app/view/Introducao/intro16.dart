import 'package:flutter/material.dart';
import 'package:tcc/app/view/fundos.dart';
import 'package:tcc/app/view/Introducao/intro17.dart';

import '../app.dart';

class Intro16 extends StatelessWidget {
  const Intro16({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const FundoIntro3(),
        Opacity(
            opacity: 0.9,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Intro17()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 4,
                        color: fundoTexto,
                        child: const Center(
                            child: Text(
                                'Diretor: Você veio parar na dimensão das estruturas de dados normalmente só tem nós aqui, mas de tempos em tempos acontece de um humano ser escolhido pra vir pra cá. Não sabemos como isso funciona exatamente e nem se você será capaz de voltar para o seu mundo, mas se eu fosse você prestava muita atenção em todos os cursos pois se você não conseguir voltar, você não vai querer ser um nó sem proposito',
                                style:
                                    TextStyle(fontSize: 25, color: corTexto))),
                      ))
                ]))
      ],
    ));
  }
}
