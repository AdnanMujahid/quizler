import 'package:quizzler/main.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'question.dart';

class QuizBrain {
  int questNo = 0;
  List<Question> questionBank = [
  Question('Some cats are actually allergic to humans', true),
  Question('You can lead a cow down stairs but not up stairs.', false),
  Question('Approximately one quarter of human bones are in the feet.', true),
  Question('A slug\'s blood is green.', true),
  Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
  Question('It is illegal to pee in the Ocean in Portugal.', true),
  Question(
  'No piece of square dry paper can be folded in half more than 7 times.',
  false),
  Question(
  'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
  true),
  Question(
  'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
  false),
  Question(
  'The total surface area of two human lungs is approximately 70 square metres.',
  true),
  Question('Google was originally called \"Backrub\".', true),
  Question(
  'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
  true),
  Question(
  'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
  true),
  ];

  get context => null;
  void nextQuestion() {
    if (questNo < questionBank.length - 1) {
      questNo++;
    }
    else{
      Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();
    }
  }
  String getQuestionText(){
    return questionBank[questNo].questText;
  }
  bool getQuestionAns(){
    return questionBank[questNo].questAns;
  }
  bool isFinished() {
    if (questNo >= questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    questNo = 0;
  }
}