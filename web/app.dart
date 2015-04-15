import 'dart:html';
import 'dart:convert' show JSON;
import 'Poll.dart';
import 'Question.dart';
import 'QuestionCheck.dart';
import 'QuestionRadio.dart';
import 'QuestionRange.dart';
import 'QuestionRouter.dart';
import 'QuestionString.dart';
import 'QuestionText.dart';


Poll poll;


void main() {

  // Загружаем опрос из файла
  loadFromDump('poll.json').then((_){
    print('Loaded');
    renderPoll(poll);
  }).catchError((error_message){
    print('Error initializing poll: $error_message');
  });

}

renderPoll(Poll poll) {
  querySelector('#title').text = poll.title;
  querySelector('#description').text = poll.description;
  querySelector('#questions').append(poll.toHTML(poll.findFirstQuestion()));
}




Future loadFromDump(String path) {
  return HttpRequest.getString(path).then(getPollFromJSON);
}

getPollFromJSON(String jsonString) {
  Map unpackedData = JSON.decode(jsonString);
  poll = new Poll(
      unpackedData["id"],
      unpackedData["title"],
      unpackedData["description"],
      unpackedData["questions"]
  );
}
