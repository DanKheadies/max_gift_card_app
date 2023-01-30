/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsCardsGen {
  const $AssetsCardsGen();

  /// File path: assets/cards/blue.png
  AssetGenImage get blue => const AssetGenImage('assets/cards/blue.png');

  /// File path: assets/cards/cyan.png
  AssetGenImage get cyan => const AssetGenImage('assets/cards/cyan.png');

  /// File path: assets/cards/green.png
  AssetGenImage get green => const AssetGenImage('assets/cards/green.png');

  /// File path: assets/cards/orange.png
  AssetGenImage get orange => const AssetGenImage('assets/cards/orange.png');

  /// File path: assets/cards/pink.png
  AssetGenImage get pink => const AssetGenImage('assets/cards/pink.png');

  /// File path: assets/cards/purple.png
  AssetGenImage get purple => const AssetGenImage('assets/cards/purple.png');

  /// File path: assets/cards/red.png
  AssetGenImage get red => const AssetGenImage('assets/cards/red.png');

  /// File path: assets/cards/yellow.png
  AssetGenImage get yellow => const AssetGenImage('assets/cards/yellow.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [blue, cyan, green, orange, pink, purple, red, yellow];
}

class Assets {
  Assets._();

  static const $AssetsCardsGen cards = $AssetsCardsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
