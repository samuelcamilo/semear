import 'dart:io';

class Task {
  String title;
  String description;
  DateTime todoAt;
  bool completed;

  Task(this.title, this.description, this.todoAt, this.completed);
  
  // Método útil para exibir a task de forma formatada
  void exibir() {
    String status = completed ? '✓ Concluída' : '○ Pendente';
    print('\n$status - $title');
    print('Descrição: $description');
    print('Data: ${todoAt.day}/${todoAt.month}/${todoAt.year}');
  }
}

void main() {
  print('Qual seu nome?');
  String? name = stdin.readLineSync();
  print('Bem-vindo, $name!\n');
  
  // Criando a lista de tasks
  List<Task> tasks = [];
  
  Task primeira = Task(
    'Estudar para prova de geografia', 
    'Preciso estudar os fundamentos do relevo', 
    DateTime.now(), 
    false
  );
  
  Task segunda = Task(
    'Fazer exercícios de matemática', 
    'Resolver os problemas da página 45', 
    DateTime.now().add(Duration(days: 1)), 
    false
  );
  
  Task terceira = Task(
    'Ler capítulo de história', 
    'Terminar o capítulo sobre revolução industrial', 
    DateTime.now().add(Duration(days: 2)), 
    true
  );
  
  // Adicionando tasks à lista
  tasks.add(primeira);
  tasks.add(segunda);
  tasks.add(terceira);
  
  print('=== SUAS TAREFAS ===');
  
  // Forma 1: Usando for tradicional
  print('\n--- Usando for tradicional ---');
  for (int i = 0; i < tasks.length; i++) {
    print('\nTarefa ${i + 1}: ${tasks[i].title}');
  }
  
  // Forma 2: Usando for-in (mais simples)
  print('\n\n--- Usando for-in ---');
  for (Task task in tasks) {
    task.exibir();
  }
  
  // Forma 3: Usando forEach
  print('\n\n--- Usando forEach ---');
  tasks.forEach((task) {
    print('• ${task.title} - ${task.completed ? "Feita" : "A fazer"}');
  });
  
  // Estatísticas
  int concluidas = tasks.where((t) => t.completed).length;
  print('\n\n=== RESUMO ===');
  print('Total de tarefas: ${tasks.length}');
  print('Concluídas: $concluidas');
  print('Pendentes: ${tasks.length - concluidas}');
}