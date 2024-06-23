import 'package:flutter_tut_2024/data/network/failure.dart';
import 'package:flutter_tut_2024/data/request/request.dart';
import 'package:dartz/dartz.dart';

import '../model/model.dart';

abstract class Repository{
  Future<Either<Failure,Authentication>> login(LoginRequest loginRequest);
}