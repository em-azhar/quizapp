import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  AboutPage({Key? key}) : super(key: key);

  final _instagram =
      Uri(scheme: "https", host: "instagram.com", path: "/thisizazhar/");
  final _facebook =
      Uri(scheme: "https", host: "facebook.com", path: "/thisizazhar/");
  final _github = Uri(scheme: "https", host: "github.com", path: "/em-azhar/");

  Future<void> _openLinks(Uri url) async {
    if (!await launchUrl(url)) {
      throw "not found";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 16.0, right: 10),
            child: Text("ver 0.1"),
          ),
        ],
        automaticallyImplyLeading: false,
        leading: CupertinoButton(
          child: const Icon(
            CupertinoIcons.back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color.fromRGBO(29, 15, 67, 100),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 40, right: 40),
        child: Center(
          child: Column(
            children: [
              const Text(
                "Hello, World!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              const Text(
                "Made by",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              const Text(
                "Azhar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CupertinoButton(
                    child: const Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      _openLinks(_instagram);
                    },
                  ),
                  CupertinoButton(
                    child: const Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      _openLinks(_facebook);
                    },
                  ),
                  CupertinoButton(
                    child: const Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      _openLinks(_github);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
