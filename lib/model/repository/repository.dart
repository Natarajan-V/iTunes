import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:itunes/core/errors/failure.dart';
import 'package:itunes/model/api/api.dart';
import 'package:itunes/model/model/itune.model.dart';

abstract class HomeRepository {
  Future<Either<Failure, ItuneModel>> fetchData(String term);
}

class HomeRepositoryImpl implements HomeRepository {
  final HomeApi _api;

  HomeRepositoryImpl({required HomeApi api}) : _api = api;

  @override
  Future<Either<Failure, ItuneModel>> fetchData(String term) async {
    try {
      final data = await _api.fetchData(term);
      return Right(data);
    } on HttpException catch (e) {
      return Left(DatabaseFailure(msg: e.message));
    } catch (e) {
      return Left(InternalFailure(msg: '$e'));
    }
  }
}
