import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itunes/services/api.service.dart';
import 'package:itunes/services/route.services.dart';

final routeService = Provider<RouteService>((ref) => RouteServiceImpl());
final apiService = Provider<Apiservice>((ref) => ApiserviceImpl());
