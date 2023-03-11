class Question {
  final question;
  final answerIndex;
  final answer;
  bool? isLocked;
  // Option? selectedOption;

  Question({
    this.question,
    this.answerIndex,
    this.answer,
    this.isLocked,
  });
}

//Se volessimo strutturare dati senza array di option optare per classe di option
// class Option {
//   final text;
//   Option({this.text});
// }
