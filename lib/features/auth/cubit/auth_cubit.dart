import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/states/base_fail_state.dart';
import 'package:evcs/core/states/base_success_state.dart';
import 'package:evcs/core/states/base_wait_state.dart';
import 'package:evcs/core/utils/ui/snackbar/custom_snack_bar.dart';
import 'package:evcs/data/models/auth/sign_in_request.dart';
import 'package:evcs/data/models/auth/sign_up_request.dart';
import 'package:evcs/data/repositories/auth/auth_repo.dart';
import 'package:evcs/features/auth/cubit/auth_state.dart';
import 'package:evcs/features/home/pages/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authRepo) : super(AuthState.initState());
  final IAuthRepo _authRepo;

  void signUp(SignUpRequest request) {
    emit(state.copyWith(signUpState: const BaseLoadingState()));
    DIManager.findAC().showLoading();
    _authRepo.signUp(request).then((result) {
      DIManager.findAC().hideLoading();
      if (result.hasDataOnly) {
        CustomSnackbar.showSnackbar("Done Successfully");
        emit(state.copyWith(signUpState: const BaseSuccessState()));
        DIManager.findNavigator().offAll(HomeScreen.routeName);
      } else {
        CustomSnackbar.showErrorSnackbar(result.error!);
        emit(state.copyWith(signUpState: BaseFailState(error: result.error!)));
      }
    });
  }

  void signIn(SignInRequest request) {
    emit(state.copyWith(signInState: const BaseLoadingState()));
    DIManager.findAC().showLoading();
    _authRepo.signIn(request).then((result) {
      DIManager.findAC().hideLoading();
      if (result.hasDataOnly) {
        CustomSnackbar.showSnackbar("Done Successfully");
        emit(state.copyWith(signInState: const BaseSuccessState()));
        DIManager.findNavigator().offAll(HomeScreen.routeName);
      } else {
        CustomSnackbar.showErrorSnackbar(result.error!);
        emit(state.copyWith(signInState: BaseFailState(error: result.error!)));
      }
    });
  }
}
