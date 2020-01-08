import 'package:flutter/material.dart';
import 'package:netflix_ui/models/movie_model.dart';

class MyList extends StatelessWidget {
  const MyList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Text(
                'My list',
                style: new TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
              ),
              new Icon(
                Icons.arrow_forward,
                color: Colors.black,
              )
            ],
          ),
        ),
        new Container(
          height: 190.0,
          child: new ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: myList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(8.0),
                width: 140.0,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0,3.0),
                      blurRadius: 6.0
                    )
                  ]
                ),
                child: new ClipRRect(
                  borderRadius: new BorderRadius.circular(15.0),
                  child: new Image(
                    fit: BoxFit.cover,
                    image: new AssetImage(myList[index]),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
