import 'dart:io';
void main() {
  print('Insira quantos quantos habitantes participarão da pesquisa: ');
  int numHabitantes = int.parse(stdin.readLineSync()!);
  //  Variáveis iniciadas, evitando problemas com null safety
  int contador = 0;
  double salario = 0;
  double filhosMed = 0;
  double salTot = 0;
  double maiorSal = 1;
  double salPorcentagem = 0;
  while (contador < numHabitantes) {
    print('\nInsira o salário do habitante ${contador + 1}:');
    salario = double.parse(stdin.readLineSync()!);
    salTot = salTot + salario;

    if (maiorSal < salario) {
      maiorSal = salario;
    }

    print('\nInsira quantos filhos possui o habitante ${contador + 1}:');
    int numFilhos = int.parse(stdin.readLineSync()!);
    filhosMed += numFilhos;
    contador++;

    if (salario <= 150.0) {
      salPorcentagem++;
    }
    print('\n-------------------------------------------------------\n');
  }
  print('A media de salario da população é de ${salTot / numHabitantes}');
  print('A media de filhos é de: ${filhosMed / numHabitantes}');
  print('O maior salario foi de: $maiorSal');
  print(
      'A porcentagem de habitantes com salario menor que 150 é: ${(salPorcentagem * 100) / numHabitantes}');
}
