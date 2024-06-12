import 'dart:convert';

import 'package:buildnotifierrear/domain/repositories/abs_i_location_repository.dart';
import 'package:http/http.dart' as http;

class LocationRepository implements AbsILocationRepository {
  @override
  Future<({double latitude, double longitude})?> getLatLng(
      String address) async {
    const apiKey = 'AIzaSyCD9gPnCDLUB2lXn3PmTLDP_9pfGutxUO0';

    final response = await http.get(
      Uri.parse(
        'https://maps.googleapis.com/maps/api/geocode/json?address=${Uri.encodeComponent(address)}&key=$apiKey',
      ),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final results = data['results'] as List;
      if (results.isNotEmpty) {
        final location = results[0]['geometry']['location'];
        final latitude = location['lat'] as double;
        final longitude = location['lng'] as double;
        return (
          longitude: longitude,
          latitude: latitude,
        );
      }
    }

    return null;
  }
}
