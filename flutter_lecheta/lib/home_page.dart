import 'package:flutter/material.dart';
import 'package:flutter_lecheta/pages/hello_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return Container(
      color: Colors.amberAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text(),
          _pageView(),
          _buttons(context)
        ],
      ),
    );
  }

  _pageView() {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      height: 300,
      child: PageView(
        children: <Widget>[
          _img("assets/images/gato1.jpg"),
          _img("assets/images/gato2.jpg"),
          _img("assets/images/gato3.jpg"),
          _img("assets/images/gato4.jpg"),
          _img("assets/images/gato5.jpg"),
        ],
      ),
    );
  }

  _buttons(context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button(context,"ListView"),
            _button(context,"Page 2"),
            _button(context,"Page "),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button(context,"Snack"),
            _button(context,"Dialog"),
            _button(context,"Toaste"),
          ],
        ),
      ],
    );
  }

  _button(context, text) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.deepOrangeAccent,
        onPrimary: Colors.amber,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      onPressed: () {
        _onClickOk(context);
      },
    );
  }

  void _onClickOk(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return HelloPage1();
    }));
  }

  _img(img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
  }

  _text() {
    return Text(
      "HelloWorld",
      style: TextStyle(
        fontSize: 50,
        color: Colors.deepPurple,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    );
  }

}
