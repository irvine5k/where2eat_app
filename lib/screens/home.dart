import 'package:flutter/material.dart';
import 'package:where2eat/models/place.dart';
import 'package:where2eat/widgets/place_tile.dart';

class Home extends StatelessWidget {
  final Place place1 = Place(
    name: 'Bruthus',
    thumb:
        "https://pics.abuze.com.br/photos/3979/normal_oferta-abuzob.jpg?1478794918",
    info: 'Hamburgueria',
  );
  final Place place2 = Place(
    name: 'San Paolo',
    thumb:
        "http://www.saboravida.com.br/wp-content/uploads/2019/01/san-paolo-gelato-tem-acao-solidaria-com-gelato-a-r-1-na-proxima-terca.jpg",
    info: 'Gelato',
  );
  final Place place3 = Place(
    name: "Barney's",
    thumb:
        "https://cdn-images-1.medium.com/max/1200/1*nn1TcFIxl5jK0peDYyJoOw.jpeg",
    info: 'Hamburgueria',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Container(
              height: 30,
              child: Text(
                'where',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              height: 40,
              child: Text(
                '2',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              height: 30,
              child: Text(
                'eat',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.green),
            onPressed: () async {
              // String result =
              //     await showSearch(context: context, delegate: DataSearch());
              // if (result != null) videosBloc.inSearch.add(result);
            },
          ),
          IconButton(
            icon: Icon(Icons.filter_list, color: Colors.green),
            onPressed: () async {
              // String result =
              //     await showSearch(context: context, delegate: DataSearch());
              // if (result != null) videosBloc.inSearch.add(result);
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          PlaceTile(place1),
          PlaceTile(place2),
          PlaceTile(place3),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            title: Text(
              'Inicio',
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up, color: Colors.black),
            title: Text(
              'Melhores',
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.black),
            title: Text(
              'Configurações',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      // body: StreamBuilder(
      //   stream: videosBloc.outVideos,
      //   initialData: [],
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData)
      //       return ListView.builder(
      //         itemBuilder: (context, index) {
      //           if (index < snapshot.data.length) {
      //             return VideoTile(snapshot.data[index]);
      //           } else if (index > 1) {
      //             videosBloc.inSearch.add(null);
      //             return Container(
      //               height: 40,
      //               width: 40,
      //               alignment: Alignment.center,
      //               child: CircularProgressIndicator(
      //                 valueColor:
      //                     AlwaysStoppedAnimation<Color>(Colors.blueAccent),
      //               ),
      //             );
      //           } else {
      //             return Container();
      //           }
      //         },
      //         itemCount: snapshot.data.length + 1,
      //       );
      //     else
      //       return Container();
      //   },
      // ),
    );
  }
}
