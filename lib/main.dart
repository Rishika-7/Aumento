import 'package:aumento/UserAuth/signin.dart';
import 'package:aumento/UserAuth/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:aumento/Games/memory.dart';
import 'package:aumento/Games/snake.dart';
import 'package:aumento/Games/tictactoe.dart';

void main() {
  runApp(Aumento());
}

class Aumento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aumento',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignIn(),
      routes: {
        "/home": (_) => new HomePage(),
        "/signin": (_) => new SignIn(),
        "/signup": (_) => new SignUp(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Aumento',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/signin");
              },
              color: Colors.black,
            )
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/home_bg.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Grid(),
        ));
  }
}

class Grid extends StatefulWidget {
  @override
  GridFrame createState() => new GridFrame();
}

class GridFrame extends State<Grid> {
  build(context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        margin: EdgeInsets.all(15),
        child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.orange,
                    width: 3.0,
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/mg.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FloatingActionButton(
                      heroTag: "btn1",
                      onPressed: () {
                        debugPrint('Clicked');
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MemoryGame();
                        }));
                      },
                      backgroundColor: Colors.orange[700],
                      child: Center(
                        child: Text(
                          'GO',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.redAccent,
                    width: 3.0,
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/ttt.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FloatingActionButton(
                      heroTag: "btn2",
                      onPressed: () {
                        debugPrint('Clicked');
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return TicTacToe();
                        }));
                      },
                      backgroundColor: Colors.redAccent,
                      child: Center(
                        child: Text(
                          'GO',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.lightGreen,
                    width: 3.0,
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/sn.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FloatingActionButton(
                      heroTag: "btn3",
                      onPressed: () {
                        debugPrint('Clicked');
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Snake_Game();
                        }));
                      },
                      backgroundColor: Colors.lightGreen,
                      child: Center(
                        child: Text(
                          'GO',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 3.0,
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/cs.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ]));
  }
}
