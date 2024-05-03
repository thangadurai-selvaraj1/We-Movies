class EndPoints {
  EndPoints._();

  static const baseUrl = "https://api.themoviedb.org/3/movie";
  static const nowPlaying = "$baseUrl/now_playing?language=en-US&page=";
  static const topRated = "$baseUrl/top_rated?language=en-US&page=";
}
