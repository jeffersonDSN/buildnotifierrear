import 'package:buildnotifierrear/domain/entities/appointment/appointment.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_crud_repository.dart';

abstract interface class AbsIAppointmentRepository
    implements AbsICRUDRepository<Appointment> {
  Future<List<Appointment>> getByDay(DateTime selectedDay);
  Future<List<Appointment>> getByDayAndUser(
    DateTime selectedDay,
    String userId,
  );

  Future<List<Appointment>> getByDayAndProject(
    DateTime selectedDay,
    String userId,
  );
}
