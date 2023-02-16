class ToDo {
  String id;
  String title;
  int isDone;

  ToDo({
    required this.id,
    required this.title,
    this.isDone = 0,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(
        id: '1',
        title: "title 1",
        isDone: 0,
      ),
      ToDo(
        id: '2',
        title: "title 2",
        isDone: 0,
      ),
      ToDo(
        id: '3',
        title: "title 3",
        isDone: 0,
      ),
      ToDo(
        id: '4',
        title: "title 4",
        isDone: 0,
      ),
      ToDo(
        id: '5',
        title: "title 5",
        isDone: 0,
      ),
      ToDo(
        id: '6',
        title: "title 6",
        isDone: 0,
      ),
    ];
  }
}
