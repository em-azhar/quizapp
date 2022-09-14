import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/about_page.dart';
import 'package:quizapp/quiz_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 90),
              child: SizedBox(
                height: 120,
                width: 120,
                child: Image(image: AssetImage("assets/images/logo.png")),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 100,
                child: Image(image: AssetImage("assets/images/text.png")),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                "Let's Play!",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Play now and Test Yourself.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: SizedBox(
                height: 60,
                width: 350,
                child: CupertinoButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (context) => const QuizHandler(),
                      ),
                    );
                  },
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  color: const Color.fromARGB(255, 105, 73, 254),
                  pressedOpacity: 0.8,
                  child: const Text(
                    "Play Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                  height: 60,
                  width: 350,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                          border: Border.all(
                            color: const Color.fromRGBO(74, 48, 182, 100),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        width: 350,
                        child: CupertinoButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => AboutPage(),
                              ),
                            );
                          },
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: Colors.transparent,
                          pressedOpacity: 0.8,
                          child: const Text(
                            "About",
                            style: TextStyle(
                              color: Color.fromRGBO(109, 76, 246, 100),
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
