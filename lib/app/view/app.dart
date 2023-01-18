import 'package:flutter/material.dart';
import 'package:tcc/app/view/Arvore/arvore1.dart';
import 'package:tcc/app/view/Fila/fila1.dart';
import 'package:tcc/app/view/Lista/lista1.dart';
import 'package:tcc/app/view/Pilha/pilha1.dart';
import 'package:tcc/app/view/login_page.dart';
import 'package:tcc/app/view/Introducao/intro1.dart';

final Map<int, Color> verdeMap = {
  50: Colors.lightGreen.shade50,
  100: Colors.lightGreen.shade100,
  200: Colors.lightGreen.shade200,
  300: Colors.lightGreen.shade300,
  400: const Color.fromARGB(255, 0, 253, 13),
  500: Colors.lightGreen.shade500,
  600: Colors.lightGreen.shade600,
  700: Colors.lightGreen.shade700,
  800: Colors.lightGreen.shade800,
  900: Colors.lightGreen.shade900,
};

final MaterialColor verde =
    MaterialColor(const Color.fromARGB(255, 0, 253, 13).value, verdeMap);

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: verde),
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/intro': (context) => const Intro1(),
        '/lista': (context) => const Lista1(),
        '/arvore': (context) => const Arvore1(),
        '/pilha': (context) => const Pilha1(),
        '/fila': (context) => const Fila1(),
      },
    );
  }
}
