part of 'activity_cubit.dart';

abstract class ActivityState extends Equatable {
  const ActivityState();

  @override
  List<Object> get props => [];
}

class ActivityInitial extends ActivityState {
  @override
  List<Object> get props => [];
}

class ActivityLoaded extends ActivityState {
  final ActivityModel activityModel;

  const ActivityLoaded({
    required this.activityModel,
  });

  @override
  List<Object> get props => [activityModel];
}

class ActivityFailure extends ActivityState {
  final String message;

  const ActivityFailure({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}

class ActivityLoading extends ActivityState {
  @override
  List<Object> get props => [];
}
