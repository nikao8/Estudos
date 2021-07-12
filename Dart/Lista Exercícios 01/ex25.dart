import 'dart:io';

void main() {
  print('Insira uma letra para descobrir se é uma vogal ou consoante!');
  String letra = stdin.readLineSync()!;
  if (letra == 'a' ||
      letra == 'e' ||
      letra == 'i' ||
      letra == 'o' ||
      letra == 'u') {
    print('A letra > $letra < é uma vogal!');
  } else {
    print('A letra > $letra < é uma consoante!');
  }
}
