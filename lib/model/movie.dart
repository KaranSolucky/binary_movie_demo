// To parse this JSON data, do
//
//     final movie = movieFromJson(jsonString);

import 'dart:convert';

Movie movieFromJson(String str) => Movie.fromJson(json.decode(str));

String movieToJson(Movie data) => json.encode(data.toJson());

class Movie {
    Movie({
        this.search,
        this.totalResults,
        this.response,
    });

    List<Search> search;
    String totalResults;
    String response;

    factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        search: json["Search"] == null ? null : List<Search>.from(json["Search"].map((x) => Search.fromJson(x))),
        totalResults: json["totalResults"] == null ? null : json["totalResults"],
        response: json["Response"] == null ? null : json["Response"],
    );

    Map<String, dynamic> toJson() => {
        "Search": search == null ? null : List<dynamic>.from(search.map((x) => x.toJson())),
        "totalResults": totalResults == null ? null : totalResults,
        "Response": response == null ? null : response,
    };
}

class Search {
    Search({
        this.title,
        this.year,
        this.imdbId,
        this.type,
        this.poster,
    });

    String title;
    String year;
    String imdbId;
    Type type;
    String poster;

    factory Search.fromJson(Map<String, dynamic> json) => Search(
        title: json["Title"] == null ? null : json["Title"],
        year: json["Year"] == null ? null : json["Year"],
        imdbId: json["imdbID"] == null ? null : json["imdbID"],
        type: json["Type"] == null ? null : typeValues.map[json["Type"]],
        poster: json["Poster"] == null ? null : json["Poster"],
    );

    Map<String, dynamic> toJson() => {
        "Title": title == null ? null : title,
        "Year": year == null ? null : year,
        "imdbID": imdbId == null ? null : imdbId,
        "Type": type == null ? null : typeValues.reverse[type],
        "Poster": poster == null ? null : poster,
    };
}

enum Type { MOVIE, SERIES }

final typeValues = EnumValues({
    "movie": Type.MOVIE,
    "series": Type.SERIES
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
