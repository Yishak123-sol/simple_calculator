import 'package:calculater/statemanagmentmethod/buttonstate.dart';
import 'package:calculater/widget/reusablebutton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constraints.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> listOfNumbers = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kasciiColors,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              children: [
                Container(
                  width: 300,
                  margin: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Text(
                    Provider.of<ButtonState>(context).kbottomText,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              color: Colors.blue,
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Reusablebutton(
                        flex: 1,
                        lable: 'C',
                        color: kasciiColors,
                        onTap: () {
                          Provider.of<ButtonState>(context, listen: false)
                              .clearKbottom();
                        },
                      ),
                      Reusablebutton(
                        flex: 1,
                        lable: '+/-',
                        color: kasciiColors,
                        onTap: () {},
                      ),
                      Reusablebutton(
                        flex: 1,
                        lable: '<-',
                        color: kasciiColors,
                        onTap: () {
                          Provider.of<ButtonState>(context, listen: false)
                              .removeTheLastChar();
                        },
                      ),
                      Reusablebutton(
                        flex: 1,
                        lable: '/',
                        color: Colors.orangeAccent,
                        onTap: () {
                          Provider.of<ButtonState>(context, listen: false)
                              .asciiProvider(currentButtonAscii: '/');
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Reusablebutton(
                        flex: 1,
                        lable: '7',
                        color: kasciiColors,
                        onTap: () {
                          Provider.of<ButtonState>(context, listen: false)
                              .numberProvider(currentButtonAscii: '7');
                        },
                      ),
                      Reusablebutton(
                        flex: 1,
                        lable: '8',
                        color: kasciiColors,
                        onTap: () {
                          Provider.of<ButtonState>(context, listen: false)
                              .numberProvider(currentButtonAscii: '8');
                        },
                      ),
                      Reusablebutton(
                        flex: 1,
                        lable: '9',
                        color: kasciiColors,
                        onTap: () {
                          Provider.of<ButtonState>(context, listen: false)
                              .numberProvider(currentButtonAscii: '9');
                        },
                      ),
                      Reusablebutton(
                        flex: 1,
                        lable: 'X',
                        color: Colors.orangeAccent,
                        onTap: () {
                          Provider.of<ButtonState>(context, listen: false)
                              .asciiProvider(currentButtonAscii: 'X');
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Reusablebutton(
                        flex: 1,
                        lable: '4',
                        color: kasciiColors,
                        onTap: () {
                          Provider.of<ButtonState>(context, listen: false)
                              .numberProvider(currentButtonAscii: '4');
                        },
                      ),
                      Reusablebutton(
                        flex: 1,
                        lable: '5',
                        color: kasciiColors,
                        onTap: () {
                          Provider.of<ButtonState>(context, listen: false)
                              .numberProvider(currentButtonAscii: '5');
                        },
                      ),
                      Reusablebutton(
                        flex: 1,
                        lable: '6',
                        color: kasciiColors,
                        onTap: () {
                          Provider.of<ButtonState>(context, listen: false)
                              .numberProvider(currentButtonAscii: '6');
                        },
                      ),
                      Reusablebutton(
                        flex: 1,
                        lable: '-',
                        color: Colors.orangeAccent,
                        onTap: () {
                          Provider.of<ButtonState>(context, listen: false)
                              .asciiProvider(
                            currentButtonAscii: '-',
                          );
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Reusablebutton(
                        flex: 1,
                        lable: '1',
                        color: kasciiColors,
                        onTap: () {
                          Provider.of<ButtonState>(context, listen: false)
                              .numberProvider(
                            currentButtonAscii: '1',
                          );
                        },
                      ),
                      Reusablebutton(
                        flex: 1,
                        lable: '2',
                        color: kasciiColors,
                        onTap: () {
                          Provider.of<ButtonState>(context, listen: false)
                              .numberProvider(currentButtonAscii: '2');
                        },
                      ),
                      Reusablebutton(
                        flex: 1,
                        lable: '3',
                        color: kasciiColors,
                        onTap: () {
                          Provider.of<ButtonState>(context, listen: false)
                              .numberProvider(currentButtonAscii: '3');
                        },
                      ),
                      Reusablebutton(
                        flex: 1,
                        lable: '+',
                        color: Colors.orangeAccent,
                        onTap: () {
                          Provider.of<ButtonState>(context, listen: false)
                              .asciiProvider(currentButtonAscii: '+');
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Reusablebutton(
                        flex: 1,
                        lable: '0',
                        color: kasciiColors,
                        onTap: () {
                          Provider.of<ButtonState>(context, listen: false)
                              .numberProvider(currentButtonAscii: '0');
                        },
                      ),
                      Reusablebutton(
                        flex: 1,
                        lable: '.',
                        color: kasciiColors,
                        onTap: () {
                          Provider.of<ButtonState>(context, listen: false)
                              .asciiProvider(currentButtonAscii: '.');
                        },
                      ),
                      Reusablebutton(
                        flex: 2,
                        lable: '=',
                        color: Colors.orangeAccent,
                        onTap: () {
                          Provider.of<ButtonState>(context, listen: false)
                              .answerProvider();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



