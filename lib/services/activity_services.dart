import 'dart:convert';
import 'dart:io';

import 'package:activities_app/api/api_db.dart';
import 'package:activities_app/model/activity_model.dart';
import 'package:dio/dio.dart';

class ActivityServices {
  static Future<ActivityModel> saveActivities(
      {required int id,
      required String type,
      required String institution,
      required String when,
      required String objective,
      required String remark}) async {
    var params = {
      "id": id,
      "activityType": type,
      "institution": institution,
      "when": when,
      "objective": objective,
      "remarks": remark
    };

    var response = await Dio().post(
      ApiDB.activities,
      options: Options(headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      }),
      data: jsonEncode(params),
    );

    var data = jsonDecode(response.data);
    ActivityModel result = ActivityModel.fromJson(data);

    return result;
  }

  static Future<List<ActivityModel>> getAll() async {
    var response = await Dio().get(
      ApiDB.activities,
      options: Options(headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      }),
    );

    var data = jsonDecode(response.data);
    List<ActivityModel> result =
        (data as Iterable).map((e) => ActivityModel.fromJson(e)).toList();

    return result;
  }

  static Future<ActivityModel> getByID({required int id}) async {
    var params = {
      "id": id,
    };
    var response = await Dio().get(
      ApiDB.activities,
      options: Options(headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      }),
      queryParameters: params,
    );

    var data = jsonDecode(response.data);
    ActivityModel result = ActivityModel.fromJson(data);

    return result;
  }
}
