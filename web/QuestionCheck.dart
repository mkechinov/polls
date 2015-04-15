import 'Question.dart';
import 'dart:html';

// Тип вопроса - выбор нескольких вариантов.

class QuestionCheck extends Question {

  Integer id;
  Integer next;
  Boolean start = false;
  Boolean finish = false;
  String title;
  String input;
  String type = 'check';
  String description;
  String value;
  String datatype = 'string';


  QuestionCheck({id, input, title, description, value, datatype, next, validates, start, finish}) {
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


//  QuestionCheck.fromJson(Map json) {
//    id = json['id'];
//    title = json['title'];
//    input = json['input'];
//    type = json['type'];
//    description = json['description'];
//    value = json['value'];
//    datatype = json['datatype'];
//    next = json['next'];
//  }


  Element toHTML() {
    return super.toHTML();
  }

}
