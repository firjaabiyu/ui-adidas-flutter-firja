import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/datasource/auth_remote_datasource.dart';
import '../../../data/model/response/auth_response_model.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {

  final AuthRemoteDatasource _authRemoteDatasource;

  LoginBloc(this._authRemoteDatasource) : super(LoginInitial()) {
    on<LoginButtonPressed>((event, emit) async {
      emit(LoginLoading());

      final response = await _authRemoteDatasource.login(event.email, event.password);

      response.fold(
              (l) => emit(LoginFailure(message: l)),
              (r) => emit(LoginSuccess(authResponseModel: r))
      );
    });
  }
}
