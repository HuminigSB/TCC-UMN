class Usuario {
  String? usuario;
  bool lista = false;
  bool arvore = false;
  bool pilha = false;
  bool fila = false;

  String? getUsuario() {
    return usuario;
  }

  bool getLista() {
    return lista;
  }

  bool getArvore() {
    return arvore;
  }

  bool getPilha() {
    return pilha;
  }

  bool getFila() {
    return fila;
  }

  void setUsuario(usuario) {
    this.usuario = usuario;
  }

  void setLista(lista) {
    this.lista = lista == 'true';
  }

  void setArvore(arvore) {
    this.arvore = arvore == 'true';
  }

  void setPilha(pilha) {
    this.pilha = pilha == 'true';
  }

  void setFila(fila) {
    this.fila = fila == 'true';
  }

  Map toJson() {
    return {
      'lista': lista.toString(),
      'arvore': arvore.toString(),
      'pilha': pilha.toString(),
      'fila': fila.toString(),
    };
  }
}
