import 'package:http/http.dart';

class MoviesClient extends BaseClient {
  static Map<String, String> _getHeaders() {
    return {
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2YTg3ZTY4MDMyODIwMTIzZmQ0Yzg0YjQzNDhjYjc3ZCIsInN1YiI6IjY2Mjg5NDExOTFmMGVhMDE0YjAwOWU1ZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.6zIM73Giwg5M4wP6MX8KDCpee7IMnpnLTZUyMpETb08',
      'accept': 'application/json'
    };
  }

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    request.headers.addAll(_getHeaders());
    return request.send();
  }
}
