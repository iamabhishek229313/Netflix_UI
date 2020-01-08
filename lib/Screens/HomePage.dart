import 'package:flutter/material.dart';
import 'package:netflix_ui/Screens/Labels.dart';
import 'package:netflix_ui/Screens/MoviesCatalog.dart';
import 'package:netflix_ui/Screens/MyList.dart';
import 'package:netflix_ui/Screens/Popular.dart';
import 'package:netflix_ui/models/movie_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: new AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0.0,
          leading: Icon(Icons.menu),
          title: Container(
            alignment: Alignment.center,
            child: new Image(
              image: new AssetImage('assets/images/netflix_logo.png'),
            ),
          ),
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body: new ListView(
          children: <Widget>[
           MovieCatalog(),
            new SizedBox(
              height: 20.0,
            ),
            Labels(),
            MyList(),
            new SizedBox(
              height: 20.0,
            ),
            PopularList()
          ],
        ));
  }
}
