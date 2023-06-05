/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsPicturesGen {
  const $AssetsPicturesGen();

  $AssetsPicturesPngGen get png => const $AssetsPicturesPngGen();
  $AssetsPicturesSvgGen get svg => const $AssetsPicturesSvgGen();
}

class $AssetsPicturesPngGen {
  const $AssetsPicturesPngGen();

  /// File path: assets/pictures/png/splash_foreground_image.png
  AssetGenImage get splashForegroundImage =>
      const AssetGenImage('assets/pictures/png/splash_foreground_image.png');

  /// List of all assets
  List<AssetGenImage> get values => [splashForegroundImage];
}

class $AssetsPicturesSvgGen {
  const $AssetsPicturesSvgGen();

  /// File path: assets/pictures/svg/Cool Kids Fresh Air.svg
  String get coolKidsFreshAir => 'assets/pictures/svg/Cool Kids Fresh Air.svg';

  /// File path: assets/pictures/svg/Splash Screen.svg
  String get splashScreen => 'assets/pictures/svg/Splash Screen.svg';

  /// File path: assets/pictures/svg/arrow_bar.svg
  String get arrowBar => 'assets/pictures/svg/arrow_bar.svg';

  /// List of all assets
  List<String> get values => [coolKidsFreshAir, splashScreen, arrowBar];
}

class Assets {
  Assets._();

  static const $AssetsPicturesGen pictures = $AssetsPicturesGen();
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
