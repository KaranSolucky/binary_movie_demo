import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movieeee/Ui/movie_detail.dart';
import 'package:movieeee/Utils/Dataconstants.dart';

class ShowsPage extends StatefulWidget {
  const ShowsPage({Key key}) : super(key: key);

  @override
  _ShowsPageState createState() => _ShowsPageState();
}

class _ShowsPageState extends State<ShowsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Dataconstants.movieModel.searchList.length > 0
            ? Observer(
                builder: (context) => Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "NEW",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            ],
                          ),
                          if (Dataconstants.movieModel.movie.search.length > 0)
                            Container(
                              height: 250,
                              child: Expanded(
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: Dataconstants
                                          .movieModel.searchList.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Dataconstants.movieModel
                                                    .searchList.length >
                                                0
                                            ? Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Column(
                                                        children: [
                                                          InkWell(
                                                            onTap: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            MovieDetail(
                                                                              title: Dataconstants.movieModel.searchList[index].title,
                                                                            )),
                                                              );
                                                            },
                                                            child: Container(
                                                                height: 250,
                                                                child: Column(
                                                                  children: [
                                                                    Image
                                                                        .network(
                                                                      Dataconstants
                                                                          .movieModel
                                                                          .searchList[
                                                                              index]
                                                                          .poster,
                                                                      height:
                                                                          200,
                                                                    ),
                                                                    SizedBox(
                                                                      height: 5,
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Text(
                                                                        "${Dataconstants.movieModel.searchList[index].title}",
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.white),
                                                                      ),
                                                                    )
                                                                  ],
                                                                )),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 15,
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              )
                                            : Center(
                                                child:
                                                    CircularProgressIndicator(
                                                backgroundColor: Colors.amber,
                                              ));
                                      })),
                            )
                        ],
                      ),
                    ))
            : Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.pink,
                ),
              ));
  }
}
