// ignore_for_file: must_be_immutable

import 'package:doors_game/games_data.dart';
import 'package:doors_game/pages/game_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LevelsPage extends StatefulWidget {
  int gameLevel;
  int appColorSelected;
  LevelsPage({
    Key? key,
    required this.gameLevel,
    required this.appColorSelected,
  }) : super(key: key);

  @override
  State<LevelsPage> createState() => _LevelsPageState();
}

class _LevelsPageState extends State<LevelsPage> {
  final _gameLevelBox = Hive.box('gameLevel');

  void resetGame() async {
    _gameLevelBox.put('gameLevel', 0);
    setState(() {
      widget.gameLevel = 0;
    });
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
            Navigator.pop(context, widget.gameLevel);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: GridView.builder(
            padding: const EdgeInsets.all(20),
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: games.length + 1,
            itemBuilder: (context, index) {
              if (index == games.length) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: MaterialButton(
                    padding: const EdgeInsets.all(0),
                    color: appColors[widget.appColorSelected].alertColor,
                    onPressed: () {
                      resetGame();
                    },
                    child: const Icon(
                      Icons.restart_alt,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                );
              }
              // if (index > widget.gameLevel) {
              //   return ClipRRect(
              //     borderRadius: BorderRadius.circular(10),
              //     child: Container(
              //       color: appColors[widget.appColorSelected].alertColor,
              //       child: const Icon(
              //         Icons.lock_outline,
              //         color: Colors.white,
              //         size: 16,
              //       ),
              //     ),
              //   );
              // }

              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: MaterialButton(
                  padding: const EdgeInsets.all(0),
                  color: appColors[widget.appColorSelected].alertColor,
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => GamePage(
                          gameIndex: index,
                          gameLevelRecord: widget.gameLevel,
                          appColorSelected: widget.appColorSelected,
                        ),
                      ),
                    ).then((value) {
                      setState(() {
                        widget.gameLevel = value;
                      });
                    });
                  },
                  child: Text(
                    (index + 1).toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
