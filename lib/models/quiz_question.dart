class QuizQuestion {
  const QuizQuestion(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> getShuffledList () {
    final shuffledQuestions = List.of(answers);
    shuffledQuestions.shuffle();
    return shuffledQuestions;
  }
}
