import 'package:evcs/core/states/base_fail_state.dart';
import 'package:evcs/core/states/base_success_state.dart';
import 'package:evcs/core/states/base_wait_state.dart';
import 'package:evcs/core/utils/ui/snackbar/custom_snack_bar.dart';
import 'package:evcs/data/repositories/profile/profile_repo.dart';
import 'package:evcs/features/profile/cubit/profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this._profileRepo) : super(ProfileState.initialState());
  final IProfileRepo _profileRepo;
  void getProfile() async {
    emit(state.copyWith(profileState: const BaseLoadingState()));
    _profileRepo.getProfile().then((result) {
      if (result.hasDataOnly) {
        CustomSnackbar.showSnackbar("Done Successfully");
        emit(state.copyWith(profileState: const BaseSuccessState()));
      } else {
        CustomSnackbar.showErrorSnackbar(result.error!);
        emit(state.copyWith(profileState: BaseFailState(error: result.error!)));
      }
    });
  }
}
