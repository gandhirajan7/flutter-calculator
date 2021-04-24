import 'package:flutter/material.dart'; //imported flutter material package

class HomePage extends StatefulWidget {
  // creating a stateful widget
  @override
  State createState() => new HomePageState(); // creating the state
}

Widget _button(String number, Function() f) {
  // Creating a method of return type Widget with number and function f as a parameter
  return MaterialButton(
    height: 50.0,
    child: Text(number,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
    textColor: Colors.black,
    color: Colors.grey[100],
    onPressed: f,
  );
}

class HomePageState extends State<HomePage> {
  double first = 0;
  double second = 0;
  var op = "";
  var result_string = "0.0";

  @override
  Widget build(BuildContext context) {
    // creating the widget
    return new Scaffold(
        appBar: new AppBar(
          //defines the content of the Appbar
          title: new Text("Calculator by Stig"),
        ),
        body: Container(
          child: Column(
            //Since we have multiple children arranged vertically, we are using column
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // Equal vertical space between all the children of column
            children: <Widget>[
              // the column widget uses the children property
              Container(
                // Display Container
                constraints: BoxConstraints.expand(
                  // Creating a boxed container
                  height: Theme.of(context).textTheme.display1.fontSize * 1.1 +
                      100.0,
                ),
                alignment: Alignment.bottomRight,
                // Aligning the text to the bottom right of our display screen
                color: Colors.white,
                // Seting the background color of the container
                child: Text(
                  result_string,
                  style: TextStyle(
                      // Styling the text
                      fontSize: 50.0,
                      color: Colors.black),
                  textAlign: TextAlign.right,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _button("7", _seven), // using custom widget _button
                  _button("8", _eight),
                  _button("9", _nine),
                  _button("\\", _div)
                  // _button("+", _add),
                  // _button("+", _add),
                  // _button("/", _div)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _button("4", _four),
                  _button("5", _five),
                  _button("6", _six),
                  _button("*", _mul)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _button("1", _one),
                  _button("2", _two),
                  _button("3", _three),
                  _button("-", _sub)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _button(".", _dot),
                  _button("0", _zero),
                  _button("del", _clear),
                  _button("=", _disp)
                ],
              )
            ],
          ),
        ));
  }

  bool _clear() {
    setState(() {
      result_string = "00.00";
      first = 0;
      second = 0;
    });
    print("clear works");
    return false;
  }

  void _zero() {
    double val = double.parse(result_string);
    if (val != 0) {
      setState(() {
        result_string += "0";
      });
    } else {
      print("current value is zero.");
    }
  }

  void _one() {
    double val = double.parse(result_string);
    setState(() {
      if (val == 0) {
        result_string = "1";
      } else {
        result_string += "1";
      }
    });
  }

  void _two() {
    double val = double.parse(result_string);
    setState(() {
      if (val == 0) {
        result_string = "2";
      } else {
        result_string += "2";
      }
    });
  }

  void _three() {
    double val = double.parse(result_string);
    setState(() {
      if (val == 0) {
        result_string = "3";
      } else {
        result_string += "3";
      }
    });
  }

  void _four() {
    double val = double.parse(result_string);
    setState(() {
      if (val == 0) {
        result_string = "4";
      } else {
        result_string += "4";
      }
    });
  }

  void _five() {
    double val = double.parse(result_string);
    setState(() {
      if (val == 0) {
        result_string = "5";
      } else {
        result_string += "5";
      }
    });
  }

  void _six() {
    double val = double.parse(result_string);
    setState(() {
      if (val == 0) {
        result_string = "6";
      } else {
        result_string += "6";
      }
    });
  }

  void _seven() {
    double val = double.parse(result_string);
    setState(() {
      if (val == 0) {
        result_string = "7";
      } else {
        result_string += "7";
      }
    });
  }

  void _eight() {
    double val = double.parse(result_string);
    setState(() {
      if (val == 0) {
        result_string = "8";
      } else {
        result_string += "8";
      }
    });
  }

  void _nine() {
    double val = double.parse(result_string);
    setState(() {
      if (val == 0) {
        result_string = "9";
      } else {
        result_string += "9";
      }
    });
  }

  void _add() {
    first = double.parse(result_string);
    op = '+';
    print(op);
    setState(() {
      result_string = '0';
    });
  }

  void _sub() {
    first = double.parse(result_string);
    op = '-';
    print(op);
    setState(() {
      result_string = '0';
    });
  }

  void _mul() {
    first = double.parse(result_string);
    op = '*';
    print(op);
    setState(() {
      result_string = '0';
    });
  }

  void _div() {
    first = double.parse(result_string);
    op = '/';
    print(op);
    setState(() {
      result_string = '0';
    });
  }

  void _dot(){
    double val = double.parse(result_string);
    setState(() {
      if (val == 0) {
        result_string = "0.";
      } else {
        result_string += ".";
      }
    });
  }
  void _disp() {
    setState(() {
      second = double.parse(result_string);
      switch (op) {
        case '+':
          result_string = (first + second).toString();break;
        case '-':
          result_string = (first - second).toString();break;
        case '*':
          result_string = (first * second).toString();break;
        case '/':
          result_string = (first / second).toString();break;
      }
    });
  }
}
