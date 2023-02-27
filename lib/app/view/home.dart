import 'package:flutter/material.dart';
import 'package:tcc/app/controller/usuario_controller.dart';
import 'package:tcc/app/view/app.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String usuario = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text('UMN: Uma aventura em outra dimensão')),
        body: Stack(children: [
          Opacity(
              opacity: 0.5,
              child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  color: fundoTexto)),
          SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets\\images\\Logo.png'),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                if (await UsuarioControler.instance
                                    .logaUsuario(usuario)) {
                                  if (UsuarioControler.instance
                                      .algumaRotaCompleta()) {
                                    Navigator.of(context).pushNamed('/escolha');
                                  } else {
                                    Navigator.of(context).pushNamed('/intro');
                                  }
                                }
                              },
                              child: const Text('Continuar'),
                            ),
                            Container(
                              width: 15,
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                await UsuarioControler.instance.criaUsuario();
                                Navigator.of(context).pushNamed('/intro');
                              },
                              child: const Text('Novo Jogo'),
                            )
                          ]),
                    ]),
              ))
        ]));
  }
}
