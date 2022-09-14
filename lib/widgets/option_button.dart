import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({
    Key? key,
    required this.text,
    required this.number,
    required this.onClick,
  }) : super(key: key);
  final String text;
  final int number;
  final VoidCallback onClick;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: 50,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
              color: Color.fromARGB(255, 105, 73, 254),
            ),
            child: Center(
              child: Text(
                "0$number",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SizedBox(
              height: 60,
              width: 280,
              child: CupertinoButton(
                padding: const EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                onPressed: onClick,
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                color: const Color.fromARGB(255, 105, 73, 254),
                pressedOpacity: 0.8,
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
