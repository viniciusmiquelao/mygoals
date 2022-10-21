import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssetData {
  const AssetData(this.path);

  final String path;
}

/// Like [Icons] class from material, it's a class which contains icons paths.
abstract class Assets {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  // ignore: unused_element
  const Assets._();
  //icons

  //images
  static const logo = AssetData('assets/images/logo.svg');
  static const graph = AssetData('assets/images/graph.png');
}

class Asset extends StatelessWidget {
  const Asset(
    this.iconData, {
    Key? key,
    this.height,
    this.width,
    this.color,
  }) : super(key: key);

  final AssetData? iconData;

  /// If specified, the width to use for the SVG.  If unspecified, the SVG
  /// will take the width of its parent.
  final double? width;

  /// If specified, the height to use for the SVG.  If unspecified, the SVG
  /// will take the height of its parent.
  final double? height;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return iconData!.path.contains('.svg')
        ? SvgPicture.asset(
            iconData!.path,
            height: height,
            width: width,
            color: color ?? Theme.of(context).iconTheme.color,
          )
        : Image.asset(
            iconData!.path,
            color: color,
            height: height,
            width: width,
          );
  }
}
