enum Uri1 { fisrt }

enum Uri2 { two }

class UriConstants {
  String get _example => 'example';

  Uri getUrl(Uri1 uri_1, Uri2 uri_2, String? id) {
    const uri_10 = Uri1.fisrt;
    late String uri_20;

    switch (uri_2) {
      case (Uri2.two):
        uri_20 = _example;
    }
    if (id != null) {
      Uri.parse('$uri_10$uri_20$id');
    }

    return Uri.parse('$uri_10$uri_20');
  }
}
