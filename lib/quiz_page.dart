import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/home_page.dart';
import 'package:quizapp/question_bank.dart';
import 'package:quizapp/score_page.dart';
import 'package:quizapp/widgets/option_button.dart';

QuestionBank questionBank = QuestionBank();

class QuizHandler extends StatefulWidget {
  const QuizHandler({Key? key}) : super(key: key);

  @override
  State<QuizHandler> createState() => _QuizHandlerState();
}

class _QuizHandlerState extends State<QuizHandler> {
  int _score = 0;
  int _questionNumber = 0;

  void _checkAnswer(int option) {
    setState(() {
      if (_questionNumber < 11) {
        if (questionBank.questionBank[_questionNumber].index[option] ==
            questionBank.questionBank[_questionNumber].answer) {
          _score++;
        } else {}
        _questionNumber++;
      } else {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => ScorePage(
              score: _score,
            ),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(29, 15, 67, 100),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            CupertinoButton(
              child: const Icon(
                CupertinoIcons.home,
              ),
              onPressed: () {
                _showDialog(context);
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 25, top: 150, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "0${_questionNumber + 1}/12",
                style: const TextStyle(
                  color: Color.fromARGB(156, 50, 250, 197),
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 80,
                  child: Text(
                    questionBank.questionBank[_questionNumber].questions,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: ListView(
                    children: List.generate(
                      4,
                      (index) => OptionButton(
                        text: questionBank
                            .questionBank[_questionNumber].options[index],
                        number: questionBank
                                .questionBank[_questionNumber].index[index] +
                            1,
                        onClick: () {
                          _checkAnswer(index);
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showDialog(BuildContext context) {
    showDialog(
        builder: (context) => CupertinoAlertDialog(
              title: const Text("Alert!"),
              content: const Text("You sure want to quit?"),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: const Text("Cancel"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                CupertinoDialogAction(
                  child: const Text("Yes"),
                  onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (context) => const Home(),
                      ),
                    );
                  },
                ),
              ],
            ),
        context: context);
  }
}
