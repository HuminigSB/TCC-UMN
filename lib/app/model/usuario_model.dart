class Usuario {
  bool lista = false;
  bool arvore = false;
  bool pilha = false;
  bool fila = false;

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
