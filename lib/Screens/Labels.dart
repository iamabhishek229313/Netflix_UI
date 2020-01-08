import 'package:flutter/material.dart';
import 'package:netflix_ui/models/movie_model.dart';

class Labels extends StatelessWidget {
  const Labels({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      padding: const EdgeInsets.only(top: 8.0),
      child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: labels.length,
        itemBuilder: (context, index) {
          return new Stack(
            children: <Widget>[
              new Container(
                margin: const EdgeInsets.only(left: 8.0, right: 8.0),
                width: 150.0,
                height: 55.0,
                decoration: new BoxDecoration(
                    color: Colors.red.shade800,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.redAccent,
                          offset: Offset(0.0, 6.0),
                          blurRadius: 10.0)
                    ],
                    gradient: LinearGradient(
                        begin: FractionalOffset.topRight,
                        end: FractionalOffset.bottomRight,
                        colors: [
                          Colors.black54,
                          Colors.red.shade800,
                          Colors.red.shade900
                        ],
                        stops: [
                          0.0,
                          0.5,
                          1.0
                        ])),
                child: Center(
                  child: new Text(
                    labels[index].toUpperCase(),
                    style: new TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.5),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
