import 'package:flutter_tut_2024/app/functions.dart';
import 'package:flutter_tut_2024/data/network/failure.dart';
import 'package:flutter_tut_2024/data/request/request.dart';
import 'package:flutter_tut_2024/domain/model/model.dart';
import 'package:flutter_tut_2024/domain/repository/repository.dart';
import 'package:flutter_tut_2024/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase implements BaseUseCase<LoginUseCaseInput, Authentication> {
  final Repository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Either<Failure, Authentication>> execute(
      LoginUseCaseInput input) async {
    DeviceInfo deviceInfo = await getDeviceDetails();
    return await _repository.login(LoginRequest(
        input.email, input.password, deviceInfo.identifier, deviceInfo.name));
  }
}

class LoginUseCaseInput {
  String email;
  String password;

  LoginUseCaseInput(this.email, this.password);
}
