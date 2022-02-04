import 'question.dart';
import "dart:math";

class QuizBrain {
  int _questionNumber = 0;
  final List _answeredQuestions = [];
  final List<Question> _questionBank = [
    Question(
        q: 'Meriadoc Brandybuck and Peregrin Took are first cousins', a: true),
    Question(
        q: 'When Frodo meets Bilbo in Rivendell, he is surprise that Bilbo refers to Aragorn as Strider',
        a: false),
    Question(
        q: 'When the four Hobbits are captured by the barrow-wights, Sam called Tom Bombadil to save them using the song he taught them',
        a: false),
    Question(
        q: 'Frodo is related to Meriadoc and Peregrin on his mother\'s side',
        a: true),
    Question(
        q: 'The rings of power were forged in Eregion by Feanor\'s son, Celebrimbor',
        a: false),
    Question(q: 'Elrond has two sons: Elladan and Elros', a: false),
    Question(
        q: 'After he is stabbed by the Witch King, Frodo is ridden across the Ford of Bruinen by a white horse of Arwen\'s',
        a: false),
    Question(
        q: 'The night before the Council of Elrond, Bilbo writes and sings a song about Beren and Luthien in the Hall of Fire',
        a: false),
    Question(
        q: 'Bill the pony belonged to Bill Ferny before the hobbits purchased it',
        a: true),
    Question(
        q: 'Barliman Butterbur had a letter from Bilbo for Frodo that vouched for Strider',
        a: false),
    Question(
        q: 'Gandalf fought the Nine on Weathertop before Frodo arrived there',
        a: true),
    Question(
        q: 'Tom Bombadil can still see Frodo when he puts on the ring',
        a: true),
    Question(
        q: 'Merry and Pippin knew Frodo was leaving the Shire before he even left Bag End',
        a: true),
    Question(
        q: 'There are 17 years between Bilbo\'s farewell party and Frodo leaving the Shire with the ring',
        a: true),
    Question(
        q: 'Eärendil and his wife, Idril, sailed to Aman in his ship, Vingilótë, for the sake of both Elves and Men',
        a: false),
    Question(
        q: 'Boromir wanted to use the ring against Sauron as a weapon to defend Gondor',
        a: true),
    Question(q: 'Saruman wanted to get to ring for Sauron', a: false),
    Question(
        q: 'When Gandalf teh Grey visited Orthanc, he found Saruman the White had become Saruman of Many Colors',
        a: true),
    Question(
        q: 'At the Council of Elrond, Bilbo offered to take the ring to Mordor',
        a: true),
    Question(
        q: 'When Boromir first meets Aragorn, he scoffs at the idea of the heir of Isildor coming to Gondor',
        a: false),
    Question(
        q: 'Gildor suggested that they toss the one ring into the ocean to eliminate its threat',
        a: false),
  ];

  String getQuestionText() {
    randomQuestion();
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  void randomQuestion() {
    final random = Random();
    _questionNumber = random.nextInt(_questionBank.length);
    // var newQuestion = random.nextInt(_questionBank.length);
    if (_answeredQuestions.length < 15) {
      if (_answeredQuestions.contains(_questionNumber)) {
        _questionNumber = random.nextInt(_questionBank.length);
      } else {
        // _questionNumber = newQuestion;
        _answeredQuestions.add(_questionNumber);
      }
    }
  }
}
