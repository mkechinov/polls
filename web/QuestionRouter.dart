import 'Question.dart';
import 'dart:html';

// Вид вопроса - одиночный выбор из списка с последующим редиректом на какой-то другой вопрос, зависящий от выбора здесь.

class QuestionRouter extends Question {

  Integer id;
  Integer next;
  Boolean start = false;
  Boolean finish = false;
  String title;
  String input;
  String type = 'text';
  String description;
  String value;
  String datatype = 'text';

  QuestionRouter({id, input, title, description, value, datatype, next, validates, start, finish}) {
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
