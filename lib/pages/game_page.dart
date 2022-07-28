// ignore_for_file: must_be_immutable

import 'package:doors_game/components/door.dart';
import 'package:doors_game/games_data.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class GamePage extends StatefulWidget {
  int gameLevelRecord;
  int gameIndex;
  int appColorSelected;
  GamePage({
    Key? key,
    required this.gameLevelRecord,
    required this.gameIndex,
    required this.appColorSelected,
  }) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final _gameLevelBox = Hive.box('gameLevel');
  late int currentLevel;
  late int currentNumber;
  int doorsOpened = 0;
  double progressValue = 0;

  changeGameLevel() {
    var gameLevelSaved = _gameLevelBox.get('gameLevel');

    if (widget.gameIndex + 1 <= games.length - 1) {
      setState(() {
        widget.gameIndex++;

        if (gameLevelSaved <= widget.gameIndex) {
          _gameLevelBox.put('gameLevel', widget.gameIndex);
          widget.gameLevelRecord = widget.gameIndex;
        }
      });
    }
  }

  void updateNumber(int index) {
    switch (games[widget.gameIndex].doorsOptions[index].operator) {
      case '+':
        currentNumber =
            currentNumber + games[widget.gameIndex].doorsOptions[index].number;
        doorsOpened++;
        break;
      case '-':
        currentNumber =
            currentNumber - games[widget.gameIndex].doorsOptions[index].number;
        doorsOpened++;
        break;
      case '*':
        currentNumber =
            currentNumber * games[widget.gameIndex].doorsOptions[index].number;
        doorsOpened++;
        break;
      case '/':
        if (currentNumber %
                games[widget.gameIndex].doorsOptions[index].number ==
            0) {
          currentNumber = currentNumber ~/
              games[widget.gameIndex].doorsOptions[index].number;
          doorsOpened++;
        }
        break;
    }
  }

  void gameWon() {
    if (doorsOpened <= games[widget.gameIndex].totalMovements) {
      if (currentNumber == games[widget.gameIndex].finalNumber) {
        changeGameLevel();
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => AlertDialog(
            backgroundColor: appColors[widget.appColorSelected].alertColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            title: const Text(
              'Você conseguiu!',
              textAlign: TextAlign.center,
            ),
            content: widget.gameIndex <= games.length - 1
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: MaterialButton(
                          minWidth: 60,
                          height: 60,
                          padding: const EdgeInsets.all(0),
                          color: appColors[widget.appColorSelected]
                              .backgroundColor,
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context, widget.gameLevelRecord);
                          },
                          child: const Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: MaterialButton(
                          minWidth: 60,
                          height: 60,
                          padding: const EdgeInsets.all(0),
                          color: appColors[widget.appColorSelected]
                              .backgroundColor,
                          onPressed: () {
                            setState(() {
                              widget.gameIndex--;
                              restartGame();
                              Navigator.pop(context);
                            });
                          },
                          child: const Icon(
                            Icons.restart_alt,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: MaterialButton(
                          minWidth: 60,
                          height: 60,
                          padding: const EdgeInsets.all(0),
                          color: appColors[widget.appColorSelected]
                              .backgroundColor,
                          onPressed: () {
                            setState(() {
                              restartGame();
                              Navigator.pop(context);
                            });
                          },
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: MaterialButton(
                          minWidth: 60,
                          height: 60,
                          padding: const EdgeInsets.all(0),
                          color: appColors[widget.appColorSelected]
                              .backgroundColor,
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context, widget.gameLevelRecord);
                          },
                          child: const Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: MaterialButton(
                          minWidth: 60,
                          height: 60,
                          padding: const EdgeInsets.all(0),
                          color: appColors[widget.appColorSelected]
                              .backgroundColor,
                          onPressed: () {
                            setState(() {
                              widget.gameIndex--;
                              restartGame();
                              Navigator.pop(context);
                            });
                          },
                          child: const Icon(
                            Icons.restart_alt,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        );
      } else if (doorsOpened == games[widget.gameIndex].totalMovements &&
          currentNumber != games[widget.gameIndex].finalNumber) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => AlertDialog(
            backgroundColor: appColors[widget.appColorSelected].alertColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            title: const Text(
              'Você não conseguiu!',
              textAlign: TextAlign.center,
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: MaterialButton(
                    minWidth: 60,
                    height: 60,
                    padding: const EdgeInsets.all(0),
                    color: appColors[widget.appColorSelected].backgroundColor,
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context, widget.gameLevelRecord);
                    },
                    child: const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: MaterialButton(
                    minWidth: 60,
                    height: 60,
                    padding: const EdgeInsets.all(0),
                    color: appColors[widget.appColorSelected].backgroundColor,
                    onPressed: () {
                      setState(() {
                        restartGame();
                        Navigator.pop(context);
                      });
                    },
                    child: const Icon(
                      Icons.restart_alt,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    }
  }

  void restartGame() {
    setState(() {
      currentLevel = widget.gameIndex;
      currentNumber = games[currentLevel].startNumber;
      doorsOpened = 0;
      progressValue = 0;
    });
  }

  @override
  void initState() {
    restartGame();
    setState(() {
      currentLevel = widget.gameIndex;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors[widget.appColorSelected].backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, widget.gameLevelRecord);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text('Nível ${(currentLevel + 1)}'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                restartGame();
              });
            },
            icon: const Icon(Icons.restart_alt),
          ),
          const SizedBox(width: 4),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // objective number
              Column(
                children: [
                  Text(
                    games[currentLevel].finalNumber.toString(),
                    style: const TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const Text(
                    'Número final',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),

              // door options
              SizedBox(
                height: 200,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1 / 2,
                    crossAxisSpacing: 20,
                  ),
                  shrinkWrap: true,
                  itemCount: doorsColors.length,
                  itemBuilder: (context, index) {
                    String label = "";
                    switch (games[currentLevel].doorsOptions[index].operator) {
                      case '+':
                        label =
                            '+${games[currentLevel].doorsOptions[index].number}';
                        break;
                      case '-':
                        label =
                            '-${games[currentLevel].doorsOptions[index].number}';
                        break;
                      case '*':
                        label =
                            '×${games[currentLevel].doorsOptions[index].number}';
                        break;
                      case '/':
                        label =
                            '÷${games[currentLevel].doorsOptions[index].number}';
                        break;
                    }
                    return MyDoor(
                      label: label,
                      color: doorsColors[index],
                      number: games[currentLevel].doorsOptions[index].number,
                      operator:
                          games[currentLevel].doorsOptions[index].operator,
                      onTap: () {
                        setState(() {
                          updateNumber(index);
                          progressValue =
                              doorsOpened / games[currentLevel].totalMovements;
                        });
                        gameWon();
                      },
                    );
                  },
                ),
              ),

              // current number
              Column(
                children: [
                  Column(
                    children: [
                      Text(
                        currentNumber.toString(),
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Número inicial',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  // current progress
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        LinearProgressIndicator(
                          backgroundColor:
                              appColors[widget.appColorSelected].accentColor,
                          value: progressValue,
                          valueColor:
                              const AlwaysStoppedAnimation(Colors.white),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          '$doorsOpened / ${games[currentLevel].totalMovements}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
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
