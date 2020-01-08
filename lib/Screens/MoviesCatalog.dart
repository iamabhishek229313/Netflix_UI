import 'package:flutter/material.dart';
import 'package:netflix_ui/Screens/MovieDetails.dart';
import 'package:netflix_ui/models/movie_model.dart';

class MovieCatalog extends StatelessWidget {
  const MovieCatalog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 220.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return new GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => MovieDetails(movie: movies[index]))),
            child: new Stack(
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
            ),
          );
        },
      ),
    );
  }
}
