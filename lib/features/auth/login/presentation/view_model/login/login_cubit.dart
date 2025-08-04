import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/auth/login/data/imp/login_imp.dart';
import 'package:wallet_app/features/auth/login/presentation/view_model/login/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginImp loginImp;
  LoginCubit(this.loginImp) : super(LoginInitial());

  Future login({required String email, required String password}) async {
    try {
      emit(LoginLoading());
      await loginImp.login(email: email, password: password);
      emit(LoginSuccess());
    } catch (e) {
      emit(LoginFailure(errorMessage: e.toString()));
    }
  }
}
