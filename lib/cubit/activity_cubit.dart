import 'package:activities_app/model/activity_model.dart';
import 'package:activities_app/services/activity_services.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'activity_state.dart';

class ActivityCubit extends Cubit<ActivityState> {
  ActivityCubit() : super(ActivityInitial());

  void saveActivity(
      {required int id,
      required String type,
      required String institution,
      required String when,
      required String objective,
      required String remark}) {
    try {
      emit(ActivityLoading());
      ActivityServices.saveActivities(
              id: id,
              type: type,
              institution: institution,
              when: when,
              objective: objective,
              remark: remark)
          .then((value) => emit(ActivityLoaded(activityModel: value)));
    } catch (e) {
      emit(const ActivityFailure(message: "Save failure"));
    }
  }
}
