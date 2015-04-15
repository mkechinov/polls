import 'Question.dart';
import 'dart:html';

// Тип вопроса – выбор одного из вариантов.
// Варианты типов данных ответов:
// - число
// - строка


class QuestionRadio extends Question {

  Integer id;
  Integer next;
  Boolean start = false;
  Boolean finish = false;
  String title;
  String input;
  String type = 'radio';
  String description;
  String value;
  String datatype = 'string';

  QuestionRadio({id, input, title, description, value, datatype, next, validates, start, finish}) {
    this.id = id;
    this.input = input;
    this.title = title;
    this.description = description;
    this.value = value;
    this.datatype = datatype;
    this.next = next;
    this.start = start == true;
    this.finish = finish == true;
  }


  Element toHTML() {
    return super.toHTML();
  }

}
