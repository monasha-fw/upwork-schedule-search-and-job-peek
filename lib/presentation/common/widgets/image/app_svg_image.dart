import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum SvgType { network, asset, string }

class AppSvgImage extends StatelessWidget {
  const AppSvgImage(this.assetName,
      {super.key, this.color, this.height, this.width, this.type = SvgType.asset});

  final String assetName;
  final Color? color;
  final double? height;
  final double? width;
  final SvgType type;

  @override
  Widget build(BuildContext context) {
    final colorFilter = color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null;

    switch (type) {
      case SvgType.asset:
        return SvgPicture.asset(
          assetName,
          colorFilter: colorFilter,
          semanticsLabel: assetName.split(Platform.pathSeparator).last,
          height: height,
          width: width,
        );
      case SvgType.string:
        return SvgPicture.string(
          assetName,
          colorFilter: colorFilter,
          semanticsLabel: assetName,
          height: height,
          width: width,
        );
      case SvgType.network:
        return SvgPicture.network(
          assetName,
          colorFilter: colorFilter,
          semanticsLabel: Uri.parse(assetName).path.split('/').last,
          height: height,
          width: width,
        );
      default:
        return Container();
    }
  }
}
