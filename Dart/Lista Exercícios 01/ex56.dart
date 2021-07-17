import 'dart:io';

void main() {
  print('Digite um numero para descobrir o fatorial:');
  int n = int.parse(stdin.readLineSync()!);
  int res = n;
  int i;
  for (i = 1; n > 1; n--) {
    i = i * n;
  }
  print('$res! = $i');
}
