import 'package:hydrated_bloc/hydrated_bloc.dart';

class DarkModeCubit extends Cubit<bool> with HydratedMixin {
  DarkModeCubit() : super(false);

  void changeMode(bool value) => emit(value);

  @override
  bool? fromJson(Map<String, dynamic> json) {
    return json['darkMode'] as bool;
  }

  @override
  Map<String, dynamic>? toJson(bool state) {
    return {'darkMode': state};
  }
}
