import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_appointment_repository.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_location_repository.dart';

class AppointmentController extends CRUDController<Appointment> {
  final AbsIAppointmentRepository _repository;
  final AbsILocationRepository _locationRepository;

  AppointmentController(
      {required AbsIAppointmentRepository repository,
      required AbsILocationRepository locationRepository})
      : _repository = repository,
        _locationRepository = locationRepository,
        super(repository: repository);

  Future<List<Appointment>> getByDay(DateTime selectedDay) {
    return _repository.getByDay(selectedDay);
  }

  Future<List<Appointment>> getByDayAndUser(
    DateTime selectedDay,
    String userId,
  ) {
    return _repository.getByDayAndUser(selectedDay, userId);
  }

  Future<List<Appointment>> getByDayAndProject(
    DateTime selectedDay,
    String projectId,
  ) {
    return _repository.getByDayAndProject(selectedDay, projectId);
  }

  @override
  Future<bool> create(Appointment value) async {
    var appointment = value;

    if (appointment.location.isNotEmpty) {
      var result = await _locationRepository.getLatLng(appointment.location);

      if (result != null) {
        appointment = appointment.copyWith(
          latitude: result.latitude,
          longitude: result.longitude,
        );
      }
    }

    return await _repository.post(appointment);
  }
}
