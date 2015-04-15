import 'dart:html';
import 'QuestionString.dart';
import 'QuestionRadio.dart';
import 'QuestionCheck.dart';
import 'QuestionText.dart';
import 'QuestionRouter.dart';
import 'QuestionRange.dart';

class Poll {

  Integer id;
  String title;
  String description;
  List<Question> questions = new List();

  Poll(this.id, this.title, this.description, questions_list) {
    this.id = id;
    this.title = title;
    this.description = description;

    for(var question in questions_list) {
      switch(question['input']) {
        case 'string':
          QuestionString q = new QuestionString(
              id: question['id'],
              input: question['input'],
              title: question['title'],
              description: question['description'],
              value: question['value'],
              datatype: question['datatype'],
              next: question['next'],
              validates: question['validates'],
              start: question['start'],
              finish: question['finish']
          );
          questions.add(q);
          break;

        case 'radio':
          QuestionRadio q = new QuestionRadio(
              id: question['id'],
              input: question['input'],
              title: question['title'],
              description: question['description'],
              value: question['value'],
              datatype: question['datatype'],
              next: question['next'],
              validates: question['validates'],
              start: question['start'],
              finish: question['finish']
          );
          questions.add(q);
          break;

        case 'checkbox':
          QuestionCheck q = new QuestionCheck(
              id: question['id'],
              input: question['input'],
              title: question['title'],
              description: question['description'],
              value: question['value'],
              datatype: question['datatype'],
              next: question['next'],
              validates: question['validates'],
              start: question['start'],
              finish: question['finish']
          );
          questions.add(q);
          break;

        case 'text':
          QuestionText q = new QuestionText(
              id: question['id'],
              input: question['input'],
              title: question['title'],
              description: question['description'],
              value: question['value'],
              datatype: question['datatype'],
              next: question['next'],
              validates: question['validates'],
              start: question['start'],
              finish: question['finish']
          );
          questions.add(q);
          break;


        case 'router':
          QuestionRouter q = new QuestionRouter(
              id: question['id'],
              input: question['input'],
              title: question['title'],
              description: question['description'],
              value: question['value'],
              datatype: question['datatype'],
              next: question['next'],
              validates: question['validates'],
              start: question['start'],
              finish: question['finish']
          );
          questions.add(q);
          break;


        case 'range':
          QuestionRange q = new QuestionRange(
              id: question['id'],
              input: question['input'],
              title: question['title'],
              description: question['description'],
              value: question['value'],
              datatype: question['datatype'],
              next: question['next'],
              validates: question['validates'],
              start: question['start'],
              finish: question['finish']
          );
          questions.add(q);
          break;

      }
    }

  }

  /**
   * Находит самый первый вопрос опросника.
   */
  Question findFirstQuestion() {
    for(var question in questions) {
      if(question.start == true) {
        return question;
      }
    }
    throw new ExpectException("First question is not found");
  }


  /**
   * Находит вопрос по идентификатору.
   */
  Question findById(int id) {
    for(var question in questions) {
      if(question.id == id) {
        return question;
      }
    }
    throw new ExpectException("Question ${id} not found");
  }


  Element toHTML(Question question) {
    DivContainer inputContainer = new DivElement();
    DivContainer buttonContainer = new DivElement();
    DivContainer container = new DivElement();
    inputContainer.append(question.toHTML());
    ButtonElement button = new ButtonElement()
      ..text = 'Next'
      ..onClick.listen((e){
      collectFromHTMLAndProceed(question);
    });
    buttonContainer.append(button);
    container.append(inputContainer).append(buttonContainer);
    return container;
  }



  void collectFromHTMLAndProceed(Question question) {
    switch(question.input) {
      case 'string':
        String value = querySelector("#${question.inputID()}").value;
        question.storeValue(value);
//        querySelector('#questions').innerHtml(toHTML(findById(question.next)));
        // Валидировать значение
        // Если прошло, то
          // Сохранить в поле
          // Показать следующий вопрос
        // Иначе
          // Отобразить сообщение пользователю
        break;
    }
  }



}
