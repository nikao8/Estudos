class Aluno {
  String nome;
  double nota;

  Aluno({required this.nome, required this.nota});
}

void main() {
  // Composição: uma classe utilizando outra classe
  List<Aluno> alunos = [];

  // Inserindo dados na lista
  alunos.add(Aluno(nome: 'João', nota: 8));
  alunos.add(Aluno(nome: 'Maria', nota: 1));
  alunos.add(Aluno(nome: 'José', nota: 5));
  alunos.add(Aluno(nome: 'Cláudia', nota: 10));

  // Saida

  for (var aluno in alunos) {
    print('Nome do Aluno: ${aluno.nome}\t| Nota: ${aluno.nota}');
  }
}
