import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:mobile_corporate_portal/domain/bloc/profile/profile.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial());

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
