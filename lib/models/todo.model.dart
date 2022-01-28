class Todo {
  String text = '';
  bool editMode = false;

  Todo({
    this.text = '',
    this.editMode = false
  });

  Todo edit() {
    editMode = true;
    return this;
  }
}
