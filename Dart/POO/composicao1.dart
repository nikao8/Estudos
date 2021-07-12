class BoletimEscolar {
  Map<String, double> notaAluno;
  Aluno aluno;

  // Construtor
  BoletimEscolar({required this.aluno, required this.notaAluno});
}

class Aluno {
  Disciplina disciplina; // Um aluno possui disciplina
  String nomealuno;
  String turma;
  int matricula;

  // Construct
  Aluno(
      {required this.nomealuno,
      required this.turma,
      required this.matricula,
      required this.disciplina});
}

class Disciplina {
  List nomeDisciplina;

  // Construct
  Disciplina({this.nomeDisciplina = const []});
}

void main() {
  var boletim1 = new BoletimEscolar(
      notaAluno: {'Nota 1': 10, 'Nota 2': 7, 'Nota 3': 8, 'Nota 4': 3},
      aluno: new Aluno(
          nomealuno: 'José Andrade',
          turma: 'A',
          matricula: 123456,
          disciplina:
              new Disciplina(nomeDisciplina: ['Matemática', 'História'])));

  print('Nome do aluno: ${boletim1.aluno.nomealuno}');
  print(
      'Nome da primeira disciplina: ${boletim1.aluno.disciplina.nomeDisciplina[0]}');
  print('Notas do aluno:');
  boletim1.notaAluno.forEach((key, value) {
    print('$key: $value');
  });
}
