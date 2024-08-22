import 'package:itunes/core/utils/url.dart';
import 'package:itunes/model/model/itune.model.dart';
import 'package:itunes/services/api.service.dart';

abstract class HomeApi {
  Future<ItuneModel> fetchData(String term);
}

class HomeApiImpl implements HomeApi {
  final Apiservice _apiservice;

  HomeApiImpl({required Apiservice apiService}) : _apiservice = apiService;

  @override
  Future<ItuneModel> fetchData(String term) async {
    try {
      final String url = Url.url + term;
      final response = await _apiservice.get(url);
      final model = ItuneModel.fromJson(response);
      return model;
    } catch (e) {
      rethrow;
    }
  }
}
