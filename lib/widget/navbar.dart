import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Navbar extends StatelessWidget with PreferredSizeWidget {
  final String widget;
  final int? incrementAnswer;
  final bool stateQuiz;
  const Navbar(this.widget, this.incrementAnswer, this.stateQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: const Color(0xFF4200FF),
        flexibleSpace: Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //  Text(
              //   widget,
              //   style: const TextStyle(
              //     fontSize: 20,
              //     color: Colors.white,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              SizedBox(
                width: 100,
                child: Image(image: AssetImage("assets/images/logo.png")),
              ),
              stateQuiz
                  ? Text(
                      "${incrementAnswer! + 1}/10",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : Text(
                      "Inizia ora!",
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
            ],
          ),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
