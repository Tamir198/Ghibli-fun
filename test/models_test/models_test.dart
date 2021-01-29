import 'package:flutter_test/flutter_test.dart';
import 'package:ghinbli_app/models/film_model.dart';

void main() {
  test('Film model initiated with all of the constructor arguments ', () {
    final FilmModel film =4
        FilmModel(
            title: 'entered title',
            description: 'entered description',
            producer: 'producer name',
            director: 'director name',
            releaseDate: 'date'
        );

    expect(film.title,'entered title');

  });
}
