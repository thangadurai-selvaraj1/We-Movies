import 'package:http/http.dart';
import 'package:movie_app/data/network/index.dart';

import '../../di/index.dart';

class MoviesService {
  final client = di<MoviesClient>();

  Future<Response> getNowPlayingMovies(int page) async {
    try {
      final uri = Uri.parse("${EndPoints.nowPlaying}$page");
      final response = await client.get(uri);
      return response;
    } catch (_) {
      rethrow;
    }
  }

  Future<Response> getTopRatedMovies(int page) async {
    try {
      final uri = Uri.parse("${EndPoints.topRated}$page");
      final response = await client.get(uri);
      return response;
    } catch (_) {
      rethrow;
    }
  }
}
