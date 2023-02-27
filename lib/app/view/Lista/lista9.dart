import 'package:flutter/material.dart';
import 'package:tcc/app/view/Lista/lista10.dart';
import 'package:tcc/app/view/fundos.dart';
import '../app.dart';

class Lista9 extends StatelessWidget {
  const Lista9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const FundoListaFinlas(),
        Opacity(
            opacity: 0.9,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Lista10()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 4,
                        color: fundoTexto,
                        child: const Center(
                            child: Text(
                                'Instrutora: Agora turma os alunos que não estão na escada vão falar os nós vazios e os que estão na escada vão falar seu nome em ordem.',
                                style:
                                    TextStyle(fontSize: 25, color: corTexto))),
                      ))
                ]))
      ],
    ));
  }
}
