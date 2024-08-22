import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itunes/model/model/itune.model.dart';

@RoutePage()
class MediaPage extends ConsumerStatefulWidget {
  final Tune data;

  const MediaPage({super.key, required this.data});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MediaPageState();
}

class _MediaPageState extends ConsumerState<MediaPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
