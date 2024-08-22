import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itunes/core/routes/route.gr.dart';
import 'package:itunes/core/styles/border_radius.style.dart';
import 'package:itunes/core/styles/colors.style.dart';
import 'package:itunes/core/utils/texts/body.text.dart';
import 'package:itunes/core/utils/texts/caption.text.dart';
import 'package:itunes/model/model/itune.model.dart';
import 'package:itunes/services/provider.dart';

class TuneTile extends ConsumerWidget {
  final Tune data;

  const TuneTile({super.key, required this.data});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.read(routeService);

    return ListTile(
      onTap: () => route.push(MediaRoute(data: data), context),
      shape: RoundedRectangleBorder(borderRadius: radius4),
      tileColor: AppColors.primary.withOpacity(.1),
      leading: Image.network(
        data.artworkUrl60 ?? '',
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.music_note, color: AppColors.grey.withOpacity(.5));
        },
      ),
      title: AppBodyText(data: data.trackName),
      subtitle: AppCaptionText(
        data: '${data.artistName ?? ''} | ${data.kind ?? ''}',
      ),
    );
  }
}
