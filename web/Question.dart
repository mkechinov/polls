import 'dart:html';

// Абстрактный класс, описывающий сущность вопроса.

abstract class Question {

  Integer id;
  Integer next;
  Boolean start = false;
  Boolean finish = false;
  String title;
  String input;
  String type = 'generic';
  String description;
  String value;
  String datatype = 'generic';

  String html = '';

  Question();

  DivElement toHTML() {
    var button = new ButtonElement()
      ..text = 'Next';
//      ..onClick.listen((e) => print('clicked'));
    var container = new DivElement()
      ..append(button);
    return container;
  }

}
