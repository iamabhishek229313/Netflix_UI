import 'package:flutter/material.dart';
import 'package:netflix_ui/Screens/Labels.dart';
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
            new Container(
              height: 220.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return new Stack(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.fromLTRB(8.0, 8.0, 4.0, 8.0),
                        width: 330.0,
                        height: double.infinity,
                        decoration: new BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0)
                        ]),
                        child: new ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage(movies[index].imageUrl),
                          ),
                        ),
                      ),
                      new Positioned(
                        top: 160.0,
                        left: 15.0,
                        child: Container(
                          width: 300.0,
                          child: new Text(movies[index].title.toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: new TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                letterSpacing: 1.1,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
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
