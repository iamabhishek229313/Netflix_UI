import 'package:flutter/material.dart';
import 'package:netflix_ui/models/movie_model.dart';

class MovieDetails extends StatefulWidget {
  Movie movie;
  MovieDetails({this.movie});
  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Column(
      children: <Widget>[
        new Stack(
          children: <Widget>[
            new Container(
              height: MediaQuery.of(context).size.width,
              color: Colors.yellow,
              transform: Matrix4.translationValues(0.0, -50.0, 0.0),
              child: new ClipShadowPath(
                
              ),
            ),
            new SafeArea(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon : Icon(Icons.arrow_back ,size: 30.0,),
                      color: Colors.black,
                    ),
                    new Image(
                        height: 60.0,
                        width: 150.0,
                        image: new AssetImage('assets/images/netflix_logo.png'),
                    ),
                    new IconButton(
                      onPressed: () {} ,
                      icon : Icon(Icons.star_border ,size: 30.0,),
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
