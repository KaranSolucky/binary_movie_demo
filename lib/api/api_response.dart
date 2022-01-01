import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart';
import 'package:movieeee/Utils/Dataconstants.dart';

class ApiResponse {
  movie() async {
    var link = 'http://www.omdbapi.com/?i=tt3896198&apikey=c4033450&s=Movies';
    var response = await get(link);
    log("DATA ${response.body}");
    var data = jsonDecode(response.body);
    Dataconstants.movieModel.updateMovieModel(data);
  }
}
