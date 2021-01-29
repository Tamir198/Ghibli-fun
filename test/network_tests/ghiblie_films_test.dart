import 'package:flutter_test/flutter_test.dart';
import 'package:ghinbli_app/models/film_model.dart';
import 'package:ghinbli_app/network/ghibli_films.dart';
import 'package:mockito/mockito.dart';

// Create a MockClient using the Mock class provided by the Mockito package.
// Create new instances of this class in each test.

class MockClient extends Mock implements GhibliFilms {}

void main() {


  group('films networking tests', (){
    final MockClient ghibliMock = MockClient();

    when(ghibliMock.getFilms()).thenReturn(null);

    test('If API call was unsuccessful and data received is null', () async {
      expect(await ghibliMock.getFilms(), null);
    });


    //Todo test why this working and null
    test('Adding data manually', () async {
      final MockClient ghibliMock = MockClient();

      when(ghibliMock.films).thenReturn([FilmModel(
          director: 'test director',
          description: 'test',
          releaseDate: 'test',
          producer: 'test'
      )]);

      expect(ghibliMock.films.length, 1);

    });
  });
}
