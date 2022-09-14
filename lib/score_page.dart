import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/home_page.dart';
import 'package:quizapp/quiz_page.dart';

class ScorePage extends StatelessWidget {
  final int score;
  const ScorePage({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(29, 15, 67, 100),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: CupertinoButton(
          child: const Icon(
            CupertinoIcons.home,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const Home(),
              ),
            );
          },
        ),
        title: const Text(
          "Results",
          style: TextStyle(
            fontSize: 30,
            color: Color.fromARGB(156, 50, 250, 197),
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, top: 150, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Total correct answers",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "0$score out of 12 Questions",
                style: const TextStyle(
                  color: Color.fromARGB(156, 50, 250, 197),
                  fontSize: 25,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: const Color.fromRGBO(116, 89, 240, 100),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.amber,
                      ),
                    ),
                    Text(
                      "${score * 10}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: (score < 10) ? 130 : 100,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: CupertinoButton(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      CupertinoIcons.restart,
                      size: 30,
                    ),
                    Text(
                      "Try Again",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const QuizHandler(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
