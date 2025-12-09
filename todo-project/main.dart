import 'dart:io';

class Task {
  String title;
  String description;
  DateTime todoAt;
  bool completed;

  Task(this.title, this.description, this.todoAt, this.completed);
}

void main() {
  print('Qual seu nome?');
  String? name = stdin.readLineSync();

  print('Bem-vindo, $name!');

  Task primeira = Task('Estudar para prova de geografia', 'Preciso estudar os fundamentos do relevo', DateTime.now(), false);
  Task segunda = Task('Estudar para prova de geografia', 'Preciso estudar os fundamentos do relevo', DateTime.now(), false);
}
