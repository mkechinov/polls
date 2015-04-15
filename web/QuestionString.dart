import 'Question.dart';
import 'dart:html';

// Вид вопроса - текстовая строка.

class QuestionString extends Question {

  Integer id;
  Integer next;
  Boolean start = false;
  Boolean finish = false;
  String title;
  String input;
  String type = 'string';
  String description;
  String value;
  String datatype = 'string';

  QuestionString({id, input, title, description, value, datatype, next, validates, start, finish}) {
    this.id = id;
    this.input = input;
    this.title = title;
    this.description = description;
    this.value = value;
    this.datatype = datatype;
    this.next = next;
    this.start = (start == true);
    this.finish = (finish == true);
  }

  Element toHTML() {
//    Button button = super.toHTML();
    DivElement container = new DivElement();
//    DivElement inputContainer = new DivElement();
    InputElement input = new InputElement()
      ..attributes['data-id'] = id.toString()
      ..id = inputID()
      ..type = "text";
    container.append(input);
//    container.append(inputContainer).append(button);
    return container;
  }


  void storeValue(String value) {
    this.value = value;
  }


  String inputID() {
    return "poll-answer-${id.toString()}";
  }

}
