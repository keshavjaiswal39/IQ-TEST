import 'question.dart';

class QuizBrain {

  int _questionNumber = 0 ;

  List<Question> questionBank = [
  Question ('A baby has more bones than an ant.', true),
  Question ('A shark can blink its eyes.', true),
  Question ('The U.S dollars are made from fiber.',false), 
  Question ('Sandwich is named after a person.',true),
  Question ('A tiger has stripes on its skin.', true),
  Question ('An Ostrich has the largest eye in the world.',false), 
  Question ('Some 16 billion emails are sent daily.',false),
  Question ('Gorilla\'s blood type is all "B".', true),
  Question ('Snoopy is yellow in Brazil.', false),
  Question ('You can lead a cow down stairs but not up stairs.',false),
  Question ('Approximately one quarter of human bones are in the feet.',true),
  Question ('A slug\'s blood is green.',true),
  Question ('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
  Question ('It is illegal to pee in the Ocean in Portugal.', true),
  Question ('No piece of square dry paper can be folded in half more than 7 times.', false),
  ];

 void nextQuestion() {
    if (_questionNumber < questionBank.length - 1) {
    _questionNumber++;
    }
  }

 String getQuestionText() {
    return questionBank[_questionNumber].questionText;
  }
 bool getCorrectAnswer() {
    return questionBank[_questionNumber].questionAnswer;
  }
 bool isFinished() {
   if (_questionNumber >= questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }
 void reset() {
    _questionNumber = 0;
  }
}