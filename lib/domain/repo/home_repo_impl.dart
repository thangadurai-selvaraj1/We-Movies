import 'dart:convert';

import 'package:movie_app/core/index.dart';

import '../../data/models/index.dart';
import '../../data/network/index.dart';
import 'index.dart';

class HomeRepoImpl implements HomeRepo {
  final MoviesService moviesService;

  HomeRepoImpl(this.moviesService);

  @override
  Future<Result<NowPlaying>> getNowPlayingMovies() async {
    try {
      final network = await hasInternetAccess();
      if (network) {
        return Failure(Exception('No Network!'));
      } else {
        final response = await moviesService.getNowPlayingMovies();
        switch (response.statusCode) {
          case 200:
            final data = json.decode(response.body);
            return Success(NowPlaying.fromJson(data));
          default:
            return Failure(Exception(response.reasonPhrase));
        }
      }
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<TopRated>> getTopRatedMovies(int page) async {
    try {
      final network = await hasInternetAccess();
      if (network) {
        return Failure(Exception('No Network!'));
      } else {
        final response = await moviesService.getTopRatedMovies(page);
        switch (response.statusCode) {
          case 200:
            final data = json.decode(response.body);
            return Success(TopRated.fromJson(data));
          default:
            return Failure(Exception(response.reasonPhrase));
        }
      }
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
