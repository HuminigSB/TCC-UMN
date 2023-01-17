import 'package:flutter/material.dart';
import 'package:tcc/app/controller/usuario_controller.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String usuario = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text('Login')),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextField(
                      onChanged: (text) {
                        usuario = text;
                      },
                      decoration: InputDecoration(
                          labelText: 'Usuário', border: OutlineInputBorder()),
                    ),
                    Container(
                      height: 30,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () async {
                              if (await UsuarioControler.instance
                                  .logaUsuario(usuario)) {
                                Navigator.of(context).pushNamed('/tela');
                              }
                            },
                            child: Text('Entrar'),
                          ),
                          Container(
                            width: 15,
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              String usuario =
                                  await UsuarioControler.instance.criaUsuario();
                              showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  content: Text(
                                      'Guarde seu usuario!\nSeu usuário é: $usuario'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'OK'),
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: Text('criar usuário'),
                          )
                        ]),
                  ]),
            )));
  }
}
