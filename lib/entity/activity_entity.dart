import 'package:equatable/equatable.dart';

class ActivityEntity extends Equatable {
  final int? id;
  final String? type;
  final String? institution;
  final String? when;
  final String? objective;
  final String? remarks;
  const ActivityEntity({
    required this.id,
    this.type,
    this.institution,
    this.when,
    this.objective,
    this.remarks,
  });
  @override
  List<Object?> get props => [id, type, institution, when, objective, remarks];
}
