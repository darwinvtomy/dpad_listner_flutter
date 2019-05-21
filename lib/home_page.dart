import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'key_code.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<FocusNode> focusNodes = List();
  bool isFirstIn = true;

  @override
  void initState() {
    print('initState called.');
    super.initState();
    for (int i = 0; i < 9; i++) {
      FocusNode focus = FocusNode();
      focusNodes.add(focus);
    }
  }

  @override
  void dispose() {
    print('dispose called.');
    for (int i = 0; i < 9; i++) {
      focusNodes[i].dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isFirstIn) {
      FocusScope.of(context).requestFocus(focusNodes[0]);
      isFirstIn = false;
    }
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            new Row(children: <Widget>[
              new Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(5.0),
                child: new RawKeyboardListener(
                  focusNode: focusNodes[0],
                  onKey: (RawKeyEvent event) {
                    if (event is RawKeyDownEvent &&
                        event.data is RawKeyEventDataAndroid) {
                      RawKeyDownEvent rawKeyDownEvent = event;
                      RawKeyEventDataAndroid rawKeyEventDataAndroid =
                          rawKeyDownEvent.data;
                      print("Focus Node 0 ${rawKeyEventDataAndroid.keyCode}");
                      switch (rawKeyEventDataAndroid.keyCode) {
                        case KEY_CENTER:
                          Navigator.of(context).pushNamed('/a');
                          break;
                        case KEY_UP:
                          FocusScope.of(context).requestFocus(focusNodes[6]);
                          break;
                        case KEY_DOWN:
                          FocusScope.of(context).requestFocus(focusNodes[3]);
                          break;
                        case KEY_LEFT:
                          FocusScope.of(context).requestFocus(focusNodes[2]);
                          break;
                        case KEY_RIGHT:
                          FocusScope.of(context).requestFocus(focusNodes[1]);
                          break;
                        default:
                          break;
                      }
                      setState(() {});
                    }
                  },
                  child: new RaisedButton(
                    child: new Container(
                        alignment: Alignment.center,
                        width: 160.0,
                        height: 100,
                        child: new Text('Focus Node 0')),
                    color: focusNodes[0].hasFocus ? Colors.red : Colors.grey,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/a');
                    },
                  ),
                ),
              ),
              new Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(5.0),
                child: new RawKeyboardListener(
                  focusNode: focusNodes[1],
                  onKey: (RawKeyEvent event) {
                    if (event is RawKeyDownEvent &&
                        event.data is RawKeyEventDataAndroid) {
                      RawKeyDownEvent rawKeyDownEvent = event;
                      RawKeyEventDataAndroid rawKeyEventDataAndroid =
                          rawKeyDownEvent.data;
                      print("Focus Node 1 ${rawKeyEventDataAndroid.keyCode}");
                      switch (rawKeyEventDataAndroid.keyCode) {
                        case KEY_CENTER:
                          Navigator.of(context).pushNamed('/b');
                          break;
                        case KEY_UP:
                          FocusScope.of(context).requestFocus(focusNodes[7]);
                          break;
                        case KEY_DOWN:
                          FocusScope.of(context).requestFocus(focusNodes[4]);
                          break;
                        case KEY_LEFT:
                          FocusScope.of(context).requestFocus(focusNodes[0]);
                          break;
                        case KEY_RIGHT:
                          FocusScope.of(context).requestFocus(focusNodes[2]);
                          break;
                        default:
                          break;
                      }
                      setState(() {});
                    }
                  },
                  child: new RaisedButton(
                    child: new Container(
                        alignment: Alignment.center,
                        width: 160.0,
                        height: 100,
                        child: new Text('Focus Node 1')),
                    color: focusNodes[1].hasFocus ? Colors.red : Colors.grey,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/b');
                    },
                  ),
                ),
              ),
              new Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(5.0),
                child: new RawKeyboardListener(
                  focusNode: focusNodes[2],
                  onKey: (RawKeyEvent event) {
                    if (event is RawKeyDownEvent &&
                        event.data is RawKeyEventDataAndroid) {
                      RawKeyDownEvent rawKeyDownEvent = event;
                      RawKeyEventDataAndroid rawKeyEventDataAndroid =
                          rawKeyDownEvent.data;
                      print("Focus Node 2 ${rawKeyEventDataAndroid.keyCode}");
                      switch (rawKeyEventDataAndroid.keyCode) {
                        case KEY_CENTER:
                          Navigator.of(context).pushNamed('/c');
                          break;
                        case KEY_UP:
                          FocusScope.of(context).requestFocus(focusNodes[8]);
                          break;
                        case KEY_DOWN:
                          FocusScope.of(context).requestFocus(focusNodes[5]);
                          break;
                        case KEY_LEFT:
                          FocusScope.of(context).requestFocus(focusNodes[1]);
                          break;
                        case KEY_RIGHT:
                          FocusScope.of(context).requestFocus(focusNodes[0]);
                          break;
                        default:
                          break;
                      }
                      setState(() {});
                    }
                  },
                  child: new RaisedButton(
                    child: new Container(
                        alignment: Alignment.center,
                        width: 160.0,
                        height: 100,
                        child: new Text('Focus Node 2')),
                    color: focusNodes[2].hasFocus ? Colors.red : Colors.grey,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/c');
                    },
                  ),
                ),
              ),
            ]),
            new Row(children: <Widget>[
              new Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(5.0),
                child: new RawKeyboardListener(
                  focusNode: focusNodes[3],
                  onKey: (RawKeyEvent event) {
                    if (event is RawKeyDownEvent &&
                        event.data is RawKeyEventDataAndroid) {
                      RawKeyDownEvent rawKeyDownEvent = event;
                      RawKeyEventDataAndroid rawKeyEventDataAndroid =
                          rawKeyDownEvent.data;
                      print("Focus Node 3 ${rawKeyEventDataAndroid.keyCode}");
                      switch (rawKeyEventDataAndroid.keyCode) {
                        case KEY_CENTER:
                          Navigator.of(context).pushNamed('/a');
                          break;
                        case KEY_UP:
                          FocusScope.of(context).requestFocus(focusNodes[0]);
                          break;
                        case KEY_DOWN:
                          FocusScope.of(context).requestFocus(focusNodes[6]);
                          break;
                        case KEY_LEFT:
                          FocusScope.of(context).requestFocus(focusNodes[5]);
                          break;
                        case KEY_RIGHT:
                          FocusScope.of(context).requestFocus(focusNodes[4]);
                          break;
                        default:
                          break;
                      }
                      setState(() {});
                    }
                  },
                  child: new RaisedButton(
                    child: new Container(
                        alignment: Alignment.center,
                        width: 160.0,
                        height: 100,
                        child: new Text('Focus Node 3')),
                    color: focusNodes[3].hasFocus ? Colors.red : Colors.grey,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/a');
                    },
                  ),
                ),
              ),
              new Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(5.0),
                child: new RawKeyboardListener(
                  focusNode: focusNodes[4],
                  onKey: (RawKeyEvent event) {
                    if (event is RawKeyDownEvent &&
                        event.data is RawKeyEventDataAndroid) {
                      RawKeyDownEvent rawKeyDownEvent = event;
                      RawKeyEventDataAndroid rawKeyEventDataAndroid =
                          rawKeyDownEvent.data;
                      print("Focus Node 4 ${rawKeyEventDataAndroid.keyCode}");
                      switch (rawKeyEventDataAndroid.keyCode) {
                        case KEY_CENTER:
                          Navigator.of(context).pushNamed('/b');
                          break;
                        case KEY_UP:
                          FocusScope.of(context).requestFocus(focusNodes[1]);
                          break;
                        case KEY_DOWN:
                          FocusScope.of(context).requestFocus(focusNodes[7]);
                          break;
                        case KEY_LEFT:
                          FocusScope.of(context).requestFocus(focusNodes[3]);
                          break;
                        case KEY_RIGHT:
                          FocusScope.of(context).requestFocus(focusNodes[5]);
                          break;
                        default:
                          break;
                      }
                      setState(() {});
                    }
                  },
                  child: new RaisedButton(
                    child: new Container(
                        alignment: Alignment.center,
                        width: 160.0,
                        height: 100,
                        child: new Text('Focus Node 4')),
                    color: focusNodes[4].hasFocus ? Colors.red : Colors.grey,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/b');
                    },
                  ),
                ),
              ),
              new Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(5.0),
                child: new RawKeyboardListener(
                  focusNode: focusNodes[5],
                  onKey: (RawKeyEvent event) {
                    if (event is RawKeyDownEvent &&
                        event.data is RawKeyEventDataAndroid) {
                      RawKeyDownEvent rawKeyDownEvent = event;
                      RawKeyEventDataAndroid rawKeyEventDataAndroid =
                          rawKeyDownEvent.data;
                      print("Focus Node 5 ${rawKeyEventDataAndroid.keyCode}");
                      switch (rawKeyEventDataAndroid.keyCode) {
                        case KEY_CENTER:
                          Navigator.of(context).pushNamed('/c');
                          break;
                        case KEY_UP:
                          FocusScope.of(context).requestFocus(focusNodes[2]);
                          break;
                        case KEY_DOWN:
                          FocusScope.of(context).requestFocus(focusNodes[8]);
                          break;
                        case KEY_LEFT:
                          FocusScope.of(context).requestFocus(focusNodes[4]);
                          break;
                        case KEY_RIGHT:
                          FocusScope.of(context).requestFocus(focusNodes[3]);
                          break;
                        default:
                          break;
                      }
                      setState(() {});
                    }
                  },
                  child: new RaisedButton(
                    child: new Container(
                        alignment: Alignment.center,
                        width: 160.0,
                        height: 100,
                        child: new Text('Focus Node 5')),
                    color: focusNodes[5].hasFocus ? Colors.red : Colors.grey,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/c');
                    },
                  ),
                ),
              ),
            ]),
            new Row(children: <Widget>[
              new Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(5.0),
                child: new RawKeyboardListener(
                  focusNode: focusNodes[6],
                  onKey: (RawKeyEvent event) {
                    if (event is RawKeyDownEvent &&
                        event.data is RawKeyEventDataAndroid) {
                      RawKeyDownEvent rawKeyDownEvent = event;
                      RawKeyEventDataAndroid rawKeyEventDataAndroid =
                          rawKeyDownEvent.data;
                      print("Focus Node 6 ${rawKeyEventDataAndroid.keyCode}");
                      switch (rawKeyEventDataAndroid.keyCode) {
                        case KEY_CENTER:
                          Navigator.of(context).pushNamed('/a');
                          break;
                        case KEY_UP:
                          FocusScope.of(context).requestFocus(focusNodes[3]);
                          break;
                        case KEY_DOWN:
                          FocusScope.of(context).requestFocus(focusNodes[0]);
                          break;
                        case KEY_LEFT:
                          FocusScope.of(context).requestFocus(focusNodes[8]);
                          break;
                        case KEY_RIGHT:
                          FocusScope.of(context).requestFocus(focusNodes[7]);
                          break;
                        default:
                          break;
                      }
                      setState(() {});
                    }
                  },
                  child: new RaisedButton(
                    child: new Container(
                        alignment: Alignment.center,
                        width: 160.0,
                        height: 100,
                        child: new Text('Focus Node 6')),
                    color: focusNodes[6].hasFocus ? Colors.red : Colors.grey,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/a');
                    },
                  ),
                ),
              ),
              new Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(5.0),
                child: new RawKeyboardListener(
                  focusNode: focusNodes[7],
                  onKey: (RawKeyEvent event) {
                    if (event is RawKeyDownEvent &&
                        event.data is RawKeyEventDataAndroid) {
                      RawKeyDownEvent rawKeyDownEvent = event;
                      RawKeyEventDataAndroid rawKeyEventDataAndroid =
                          rawKeyDownEvent.data;
                      print("Focus Node 7 ${rawKeyEventDataAndroid.keyCode}");
                      switch (rawKeyEventDataAndroid.keyCode) {
                        case KEY_CENTER:
                          Navigator.of(context).pushNamed('/b');
                          break;
                        case KEY_UP:
                          FocusScope.of(context).requestFocus(focusNodes[4]);
                          break;
                        case KEY_DOWN:
                          FocusScope.of(context).requestFocus(focusNodes[1]);
                          break;
                        case KEY_LEFT:
                          FocusScope.of(context).requestFocus(focusNodes[6]);
                          break;
                        case KEY_RIGHT:
                          FocusScope.of(context).requestFocus(focusNodes[8]);
                          break;
                        default:
                          break;
                      }
                      setState(() {});
                    }
                  },
                  child: new RaisedButton(
                    child: new Container(
                        alignment: Alignment.center,
                        width: 160.0,
                        height: 100,
                        child: new Text('Focus Node 7')),
                    color: focusNodes[7].hasFocus ? Colors.red : Colors.grey,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/b');
                    },
                  ),
                ),
              ),
              new Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(5.0),
                  child: RawKeyboardListener(
                    focusNode: focusNodes[8],
                    onKey: (RawKeyEvent event) {
                      if (event is RawKeyDownEvent &&
                          event.data is RawKeyEventDataAndroid) {
                        RawKeyDownEvent rawKeyDownEvent = event;
                        RawKeyEventDataAndroid rawKeyEventDataAndroid =
                            rawKeyDownEvent.data;
                        print("Focus Node 7 ${rawKeyEventDataAndroid.keyCode}");
                        switch (rawKeyEventDataAndroid.keyCode) {
                          case KEY_CENTER:
                            Navigator.of(context).pushNamed('/b');
                            break;
                          case KEY_UP:
                            FocusScope.of(context).requestFocus(focusNodes[5]);
                            break;
                          case KEY_DOWN:
                            FocusScope.of(context).requestFocus(focusNodes[2]);
                            break;
                          case KEY_LEFT:
                            FocusScope.of(context).requestFocus(focusNodes[7]);
                            break;
                          case KEY_RIGHT:
                            FocusScope.of(context).requestFocus(focusNodes[6]);
                            break;
                          default:
                            break;
                        }
                        setState(() {});
                      }
                    },
                    child: new RaisedButton(
                      child: new Container(
                          alignment: Alignment.center,
                          width: 160.0,
                          height: 100,
                          child: new Text('Focus Node 8')),
                      color: focusNodes[8].hasFocus ? Colors.red : Colors.grey,
                      onPressed: () {
                        Navigator.of(context).pushNamed('/b');
                      },
                    ),
                  )
                  /*
                    onPressed: () {
                      Navigator.of(context).pushNamed('/c');
                    },*/
                  ),
            ]),

          ],
        ));
  }
}
