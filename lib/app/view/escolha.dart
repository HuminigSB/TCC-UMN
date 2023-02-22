import 'package:flutter/material.dart';
import 'package:tcc/app/controller/usuario_controller.dart';
import 'package:tcc/app/view/app.dart';
import 'package:tcc/app/view/fundos.dart';

class EscolhaGrafo extends StatelessWidget {
  const EscolhaGrafo({super.key});

  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height / 3;
    if (UsuarioControler.instance.rotasCompletas()) {
      return GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/grafo');
          },
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
                color: fundoTexto),
            height: (altura / 3),
            width: MediaQuery.of(context).size.width,
            child: const Center(
                child: Text('Ir para mostra de grafo',
                    style: TextStyle(fontSize: 25, color: corTexto))),
          ));
    }
    return Container();
  }
}

class Bottons extends StatelessWidget {
  const Bottons({super.key});

  @override
  Widget build(BuildContext context) {
    if (UsuarioControler.instance.getLista() &&
        UsuarioControler.instance.getPilha() &&
        UsuarioControler.instance.getArvore() &&
        UsuarioControler.instance.getFila()) {
      return Center(
          child: Row(children: [
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonLista.png'),
                  fit: BoxFit.fill),
            )),
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonArvore.png'),
                  fit: BoxFit.fill),
            )),
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonPilha.png'),
                  fit: BoxFit.fill),
            )),
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonFila.png'),
                  fit: BoxFit.fill),
            ))
      ]));
    }

    if (UsuarioControler.instance.getLista() &&
        UsuarioControler.instance.getArvore() &&
        UsuarioControler.instance.getFila()) {
      return Center(
          child: Row(children: [
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonLista.png'),
                  fit: BoxFit.fill),
            )),
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonArvore.png'),
                  fit: BoxFit.fill),
            )),
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonFila.png'),
                  fit: BoxFit.fill),
            ))
      ]));
    }

    if (UsuarioControler.instance.getPilha() &&
        UsuarioControler.instance.getLista() &&
        UsuarioControler.instance.getFila()) {
      return Center(
          child: Row(children: [
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonLista.png'),
                  fit: BoxFit.fill),
            )),
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonPilha.png'),
                  fit: BoxFit.fill),
            )),
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonFila.png'),
                  fit: BoxFit.fill),
            ))
      ]));
    }

    if (UsuarioControler.instance.getPilha() &&
        UsuarioControler.instance.getArvore() &&
        UsuarioControler.instance.getLista()) {
      return Center(
          child: Row(children: [
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonLista.png'),
                  fit: BoxFit.fill),
            )),
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonPilha.png'),
                  fit: BoxFit.fill),
            )),
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonArvore.png'),
                  fit: BoxFit.fill),
            ))
      ]));
    }

    if (UsuarioControler.instance.getPilha() &&
        UsuarioControler.instance.getArvore() &&
        UsuarioControler.instance.getFila()) {
      return Center(
          child: Row(children: [
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonArvore.png'),
                  fit: BoxFit.fill),
            )),
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonPilha.png'),
                  fit: BoxFit.fill),
            )),
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonFila.png'),
                  fit: BoxFit.fill),
            ))
      ]));
    }

    if (UsuarioControler.instance.getLista() &&
        UsuarioControler.instance.getFila()) {
      return Center(
          child: Row(children: [
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonLista.png'),
                  fit: BoxFit.fill),
            )),
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonFila.png'),
                  fit: BoxFit.fill),
            ))
      ]));
    }

    if (UsuarioControler.instance.getLista() &&
        UsuarioControler.instance.getArvore()) {
      return Center(
          child: Row(children: [
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonLista.png'),
                  fit: BoxFit.fill),
            )),
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonArvore.png'),
                  fit: BoxFit.fill),
            ))
      ]));
    }

    if (UsuarioControler.instance.getPilha() &&
        UsuarioControler.instance.getLista()) {
      return Center(
          child: Row(children: [
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonLista.png'),
                  fit: BoxFit.fill),
            )),
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonPilha.png'),
                  fit: BoxFit.fill),
            ))
      ]));
    }

    if (UsuarioControler.instance.getPilha() &&
        UsuarioControler.instance.getArvore()) {
      return Center(
          child: Row(children: [
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonArvore.png'),
                  fit: BoxFit.fill),
            )),
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonPilha.png'),
                  fit: BoxFit.fill),
            ))
      ]));
    }

    if (UsuarioControler.instance.getPilha() &&
        UsuarioControler.instance.getFila()) {
      return Center(
          child: Row(children: [
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonPilha.png'),
                  fit: BoxFit.fill),
            )),
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonFila.png'),
                  fit: BoxFit.fill),
            ))
      ]));
    }

    if (UsuarioControler.instance.getFila() &&
        UsuarioControler.instance.getArvore()) {
      return Center(
          child: Row(children: [
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonArvore.png'),
                  fit: BoxFit.fill),
            )),
        Container(
            height: MediaQuery.of(context).size.width / 3 / 4,
            width: MediaQuery.of(context).size.width / 3 / 4,
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets\\images\\bottonFila.png'),
                  fit: BoxFit.fill),
            ))
      ]));
    }

    if (UsuarioControler.instance.getLista()) {
      return Center(
          child: Container(
              height: MediaQuery.of(context).size.width / 3 / 4,
              width: MediaQuery.of(context).size.width / 3 / 4,
              foregroundDecoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets\\images\\bottonPilha.png'),
                    fit: BoxFit.fill),
              )));
    }

    if (UsuarioControler.instance.getPilha()) {
      return Center(
          child: Container(
              height: MediaQuery.of(context).size.width / 3 / 4,
              width: MediaQuery.of(context).size.width / 3 / 4,
              foregroundDecoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets\\images\\bottonPilha.png'),
                    fit: BoxFit.fill),
              )));
    }

    if (UsuarioControler.instance.getArvore()) {
      return Center(
          child: Container(
              height: MediaQuery.of(context).size.width / 3 / 4,
              width: MediaQuery.of(context).size.width / 3 / 4,
              foregroundDecoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets\\images\\bottonArvore.png'),
                    fit: BoxFit.fill),
              )));
    }

    if (UsuarioControler.instance.getFila()) {
      return Center(
          child: Container(
              height: MediaQuery.of(context).size.width / 3 / 4,
              width: MediaQuery.of(context).size.width / 3 / 4,
              foregroundDecoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets\\images\\bottonFila.png'),
                    fit: BoxFit.fill),
              )));
    }

    return Container();
  }
}

class Escolha extends StatelessWidget {
  const Escolha({super.key});

  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height / 3;
    return Scaffold(
        body: Stack(
      children: [
        const FundoEscolha(),
        SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 5,
            child: Stack(children: [
              Opacity(
                opacity: 0.9,
                child: Container(color: fundoTexto),
              ),
              Column(children: [
                Text('Bottons',
                    style: const TextStyle(fontSize: 15, color: corTexto)),
                const Bottons()
              ])
            ])),
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
                          height: (altura / 3),
                          color: fundoTexto,
                          child: const Center(
                              child: Text('(Umh qual mostra eu vejo agora?)',
                                  style: TextStyle(
                                      fontSize: 25, color: corTexto))),
                        ),
                        Row(children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('/lista');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.blueAccent),
                                    color: fundoTexto),
                                height: (altura / 3) / 2,
                                width: MediaQuery.of(context).size.width / 2,
                                child: const Center(
                                    child: Text('Ir para mostra de lista',
                                        style: TextStyle(
                                            fontSize: 25, color: corTexto))),
                              )),
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('/arvore');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.blueAccent),
                                    color: fundoTexto),
                                height: (altura / 3) / 2,
                                width: MediaQuery.of(context).size.width / 2,
                                child: const Center(
                                    child: Text('Ir para mostra de árvore',
                                        style: TextStyle(
                                            fontSize: 25, color: corTexto))),
                              )),
                        ]),
                        Row(children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('/pilha');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.blueAccent),
                                    color: fundoTexto),
                                height: (altura / 3) / 2,
                                width: MediaQuery.of(context).size.width / 2,
                                child: const Center(
                                    child: Text('Ir para mostra de pilha',
                                        style: TextStyle(
                                            fontSize: 25, color: corTexto))),
                              )),
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('/fila');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.blueAccent),
                                    color: fundoTexto),
                                height: (altura / 3) / 2,
                                width: MediaQuery.of(context).size.width / 2,
                                child: const Center(
                                    child: Text('Ir para mostra de fila',
                                        style: TextStyle(
                                            fontSize: 25, color: corTexto))),
                              )),
                        ]),
                        const EscolhaGrafo(),
                      ]))
                ]))
      ],
    ));
  }
}
