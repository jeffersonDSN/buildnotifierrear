abstract interface class AbsILocationRepository {
  Future<({double latitude, double longitude})?> getLatLng(String address);
}
