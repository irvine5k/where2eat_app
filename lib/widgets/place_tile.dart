import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:where2eat/models/place.dart';

class PlaceTile extends StatelessWidget {
  final Place place;

  PlaceTile(this.place);

  @override
  Widget build(BuildContext context) {
    // final bloc = BlocProvider.of<FavoriteBloc>(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16.0 / 9.0,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Image.network(
                  place.thumb,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Text(
                          place.name,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          place.info,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Text(
                          '4.5/5',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.star, color: Colors.green),
                        ),
                      ],
                    ))
                // StreamBuilder<Map<String, Place>>(
                //   stream: bloc.outFav,
                //   builder: (context, snapshot) {
                //     if (snapshot.hasData)
                //       return IconButton(
                //         icon: Icon(
                //           snapshot.data.containsKey(video.id)
                //               ? Icons.star
                //               : Icons.star_border,
                //         ),
                //         color: Colors.white,
                //         iconSize: 30,
                //         onPressed: () {
                //           bloc.toggleFavorite(video);
                //         },
                //       );
                //     else
                //       return CircularProgressIndicator();
                //   },
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
