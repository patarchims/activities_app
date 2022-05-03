import 'package:activities_app/entity/activity_entity.dart';

class ActivityModel extends ActivityEntity {
  const ActivityModel({
    final int? id,
    final String? type,
    final String? institution,
    final String? when,
    final String? objective,
    final String? remarks,
  }) : super(
            id: id,
            institution: institution,
            type: type,
            when: when,
            objective: objective,
            remarks: remarks);

  factory ActivityModel.fromJson(Map<String, dynamic> json) => ActivityModel(
      id: json['id'] as int,
      institution: json['institution'].toString(),
      objective: json['objective'].toString(),
      when: json['when'].toString(),
      type: json['activityType'].toString(),
      remarks: json['remarks'].toString());
}
