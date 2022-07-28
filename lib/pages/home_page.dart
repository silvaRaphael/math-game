import 'package:doors_game/games_data.dart';
import 'package:doors_game/pages/game_page.dart';
import 'package:doors_game/pages/levels_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _gameBox = Hive.box('gameLevel');
  int appColorSelected = 0;
  int gameLevel = 0;

  void getGameLevel() async {
    var gameLevelSaved = _gameBox.get('gameLevel');

    if (gameLevelSaved == null) {
      _gameBox.put('gameLevel', 0);
    } else {
      setState(() {
        gameLevel = gameLevelSaved;
      });
    }
  }

  void getAppColorPreference() {
    var appColorSaved = _gameBox.get('appColor');

    if (appColorSaved == null) {
      _gameBox.put('appColor', 0);
    } else {
      setState(() {
        appColorSelected = appColorSaved;
      });
    }
  }

  void changeAppColorPreference(bool value) {
    _gameBox.put('appColor', value ? 1 : 0);
    setState(() {
      appColorSelected = value ? 1 : 0;
    });
  }

  @override
  void initState() {
    getGameLevel();
    getAppColorPreference();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors[appColorSelected].backgroundColor,
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle(
          systemNavigationBarIconBrightness: Brightness.light,
          systemNavigationBarColor: appColors[appColorSelected].backgroundColor,
        ),
        child: SafeArea(
          child: Stack(
            children: [
              // color toggle
              Positioned(
                right: 20,
                top: 20,
                child: Switch(
                  value: appColorSelected == 1,
                  onChanged: (value) {
                    changeAppColorPreference(value);
                  },
                  inactiveThumbColor: appColors[appColorSelected].accentColor,
                  activeColor: appColors[appColorSelected].accentColor,
                ),
              ),

              // home
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),
                    const Text(
                      'Vamos começar!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 50),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: MaterialButton(
                        height: 60,
                        minWidth: 60,
                        color: appColors[appColorSelected].alertColor,
                        onPressed: () {
                          if (games.isNotEmpty &&
                              games.length > gameLevel + 1) {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => GamePage(
                                  gameIndex: gameLevel,
                                  gameLevelRecord: gameLevel,
                                  appColorSelected: appColorSelected,
                                ),
                              ),
                            ).then((value) {
                              setState(() {
                                gameLevel = value;
                              });
                            });
                          }
                        },
                        child: const Icon(Icons.arrow_forward),
                      ),
                    ),
                    const SizedBox(height: 50),
                    TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(
                            appColors[appColorSelected].alertColor),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => LevelsPage(
                              gameLevel: gameLevel,
                              appColorSelected: appColorSelected,
                            ),
                          ),
                        ).then((value) {
                          setState(() {
                            gameLevel = value;
                          });
                        });
                      },
                      child: const Text(
                        'Ver Níveis',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
