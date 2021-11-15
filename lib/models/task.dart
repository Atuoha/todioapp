class Task {
  final String title;
  final String description;
  bool isDone;

  Task({
    required this.title,
    required this.description,
    this.isDone = false,
  });

  void toggleDone() {
    isDone = !isDone;
  }
}
