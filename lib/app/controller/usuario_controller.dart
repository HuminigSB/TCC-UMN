import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

import 'package:tcc/app/model/usuario_model.dart';

Future<String> get pathFind async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

class UsuarioControler {
  Usuario user = Usuario();
  static UsuarioControler instance = UsuarioControler();

  Future completarRota(num rota) async {
    if (rota == 1) {
      user.setLista('true');
    }
    if (rota == 2) {
      user.setArvore('true');
    }
    if (rota == 3) {
      user.setPilha('true');
    }
    if (rota == 4) {
      user.setFila('true');
    }
    final file = File('${await pathFind}\\data.json');
    await file.delete();
    await file.create();
    await file.writeAsString(json.encode(user.toJson()));
  }

  bool rotasCompletas() {
    return (user.getLista() &
        user.getArvore() &
        user.getPilha() &
        user.getFila());
  }

  bool algumaRotaCompleta() {
    return (user.getLista() |
        user.getArvore() |
        user.getPilha() |
        user.getFila());
  }

  bool getLista() {
    return user.getLista();
  }

  bool getArvore() {
    return user.getArvore();
  }

  bool getPilha() {
    return user.getPilha();
  }

  bool getFila() {
    return user.getFila();
  }

  Future<bool> logaUsuario(String usuario) async {
    final file = File('${await pathFind}\\data.json');
    var response = await file.readAsString();
    var jasonUsuario = jsonDecode(response);
    user.setLista(jasonUsuario['lista']);
    user.setArvore(jasonUsuario['arvore']);
    user.setPilha(jasonUsuario['pilha']);
    user.setFila(jasonUsuario['fila']);
    return true;
  }

  Future criaUsuario() async {
    final file = File('${await pathFind}\\data.json');
    await file.delete();
    await file.create();
    await file.writeAsString(json.encode(user.toJson()));
  }
}
