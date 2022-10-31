import 'package:flutter_application_1/data/responses/restaurant_detail_response.dart';
import 'package:flutter_application_1/data/responses/restaurant_list_response.dart';
import 'package:flutter_application_1/services/api_service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:http/http.dart' as http;

import 'api_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group('Cek Api Resto', () {
    test('Return List Resto', () async {
      final client = MockClient();
      when(client.get(Uri.parse('https://restaurant-api.dicoding.dev/list'))).thenAnswer(
          (_) async => http.Response(
              '{"error":false,"message":"success","count":20,"restaurants":[]}', 200));

      expect(await ApiService(client).getListRestaurants(), isA<RestaurantListResponse>());
    });
    test('Return Detail Resto', () async {
      final client = MockClient();
      when(client.get(Uri.parse('https://restaurant-api.dicoding.dev/detail/rqdv5juczeskfw1e867')))
          .thenAnswer((_) async =>
              http.Response('{"error":false,"message":"success","restaurant":{}}', 200));

      expect(await ApiService(client).getDetailRestaurant("rqdv5juczeskfw1e867"),
          isA<RestaurantDetailResponse>());
    });
  });
}
