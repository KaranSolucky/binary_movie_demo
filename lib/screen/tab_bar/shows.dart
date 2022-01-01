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
                builder: (context) => SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Divider(
                              color: Colors.pink,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "NEW",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Spacer(),
                                InkWell(
                                  child: Text(
                                    "Vew All",
                                    style: TextStyle(
                                        color: Colors.pink, fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            if (Dataconstants.movieModel.movie.search.length >
                                0)
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
                                                                                poster: Dataconstants.movieModel.searchList[index].poster,
                                                                                imdbid: Dataconstants.movieModel.searchList[index].imdbId,
                                                                                type: Dataconstants.movieModel.searchList[index].type.toString(),
                                                                                year: Dataconstants.movieModel.searchList[index].year,
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
                                                                            .searchList[index]
                                                                            .poster,
                                                                        height:
                                                                            200,
                                                                      ),
                                                                      SizedBox(
                                                                        height:
                                                                            5,
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          "${Dataconstants.movieModel.searchList[index].title}",
                                                                          style:
                                                                              TextStyle(color: Colors.white),
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
                            else
                              Center(
                                  child: CircularProgressIndicator(
                                backgroundColor: Colors.amber,
                              )),
                            Divider(
                              color: Colors.pink,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "TRENDING",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Spacer(),
                                Text(
                                  "Vew All",
                                  style: TextStyle(
                                      color: Colors.pink, fontSize: 20),
                                ),
                              ],
                            ),
                            Container(
                              height: 280,
                              margin: EdgeInsets.only(top: 15.0),
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: ClampingScrollPhysics(),
                                  padding: EdgeInsets.only(left: 15.0),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: Dataconstants
                                      .movieModel.searchList.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Stack(
                                      children: [
                                        InkWell(
                                          borderRadius:
                                              new BorderRadius.circular(10.0),
                                          child: Container(
                                            margin: EdgeInsets.only(right: 7.0),
                                            child: Column(
                                              children: <Widget>[
                                                Material(
                                                  color: Colors.transparent,
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          10.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        new BorderRadius
                                                            .circular(10.0),
                                                    child: Dataconstants
                                                                .movieModel
                                                                .searchList[
                                                                    index]
                                                                .poster ==
                                                            null
                                                        ? Image.asset(
                                                            "assets/placeholder_box.jpg",
                                                            height: 220,
                                                            width: 140.0,
                                                            fit: BoxFit.cover,
                                                          )
                                                        : FadeInImage
                                                            .assetNetwork(
                                                            image: Dataconstants
                                                                .movieModel
                                                                .searchList[
                                                                    index]
                                                                .poster,
                                                            placeholder:
                                                                "assets/placeholder_box.jpg",
                                                            height: 220,
                                                            width: 140.0,
                                                            imageScale: 1.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 30,
                                                ),
                                                Text(
                                                  '${Dataconstants.movieModel.searchList[index].title}',
                                                  style: TextStyle(
                                                      fontFamily: 'Lato',
                                                      fontSize: 13.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MovieDetail(
                                                        title: Dataconstants
                                                            .movieModel
                                                            .searchList[index]
                                                            .title,
                                                        poster: Dataconstants
                                                            .movieModel
                                                            .searchList[index]
                                                            .poster,
                                                        imdbid: Dataconstants
                                                            .movieModel
                                                            .searchList[index]
                                                            .imdbId,
                                                        type: Dataconstants
                                                            .movieModel
                                                            .searchList[index]
                                                            .type
                                                            .toString(),
                                                        year: Dataconstants
                                                            .movieModel
                                                            .searchList[index]
                                                            .year,
                                                      )),
                                            );
                                          },
                                        ),
                                        Positioned(
                                          top: 200,
                                          left: 50,
                                          child: Container(
                                            height: 30,
                                            width: 80,
                                            decoration: BoxDecoration(
                                                color: Colors.amber,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Center(child: Text("NEW")),
                                          ),
                                        )
                                      ],
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ))
            : Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.pink,
                ),
              ));
  }
}
