import 'package:movie_app/core/index.dart';

import '../../data/models/index.dart';

abstract interface class HomeRepo {
  Future<Result<NowPlaying>> getNowPlayingMovies(int page);

  Future<Result<TopRated>> getTopRatedMovies(int page);
}
