import 'dart:developer';

import 'package:mobx/mobx.dart';

import 'movie.dart';
part 'movie_model.g.dart';

class MovieModel = _MovieModelBase with _$MovieModel;

abstract class _MovieModelBase with Store {
  @observable
  Movie movie = Movie();
  @observable
  List<Search> searchList = ObservableList<Search>();
  @action
  void updateMovieModel(Map<String, dynamic> model) {
    searchList.clear();

    movie = Movie.fromJson(model);
    log("DATA $model");
    movie.search.forEach((element) {
      searchList.add(element);
    });
  }
}
