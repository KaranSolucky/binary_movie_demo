// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MovieModel on _MovieModelBase, Store {
  final _$movieAtom = Atom(name: '_MovieModelBase.movie');

  @override
  Movie get movie {
    _$movieAtom.reportRead();
    return super.movie;
  }

  @override
  set movie(Movie value) {
    _$movieAtom.reportWrite(value, super.movie, () {
      super.movie = value;
    });
  }

  final _$searchListAtom = Atom(name: '_MovieModelBase.searchList');

  @override
  List<Search> get searchList {
    _$searchListAtom.reportRead();
    return super.searchList;
  }

  @override
  set searchList(List<Search> value) {
    _$searchListAtom.reportWrite(value, super.searchList, () {
      super.searchList = value;
    });
  }

  final _$_MovieModelBaseActionController =
      ActionController(name: '_MovieModelBase');

  @override
  void updateMovieModel(Map<String, dynamic> model) {
    final _$actionInfo = _$_MovieModelBaseActionController.startAction(
        name: '_MovieModelBase.updateMovieModel');
    try {
      return super.updateMovieModel(model);
    } finally {
      _$_MovieModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
movie: ${movie},
searchList: ${searchList}
    ''';
  }
}
