import 'dart:convert';

import 'package:tcc/app/model/usuario_model.dart';
import 'package:http/http.dart' as http;

class UsuarioControler {
  Usuario user = Usuario();
  static UsuarioControler instance = UsuarioControler();

  Future completarRota(num rota) async {
    var usuario = user.getUsuario();
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
    var url = Uri.https(
        '63c0d560376b9b2e646e3873.mockapi.io', '/UMN/Usuario/$usuario');
    var response = await http.put(url, body: user.toJson());
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
    var url = Uri.https(
        '63c0d560376b9b2e646e3873.mockapi.io', '/UMN/Usuario/$usuario');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jasonUsuario = jsonDecode(response.body);
      user.setUsuario(usuario);
      user.setLista(jasonUsuario['lista']);
      user.setArvore(jasonUsuario['arvore']);
      user.setPilha(jasonUsuario['pilha']);
      user.setFila(jasonUsuario['fila']);
      return true;
    } else {
      return false;
    }
  }

  Future<String> criaUsuario() async {
    var url = Uri.https('63c0d560376b9b2e646e3873.mockapi.io', '/UMN/Usuario');
    var response = await http.post(url, body: user.toJson());
    var jasonUsuario = jsonDecode(response.body);
    String usuario = jasonUsuario['id'];
    user.setUsuario(usuario);
    return usuario;
  }
}
