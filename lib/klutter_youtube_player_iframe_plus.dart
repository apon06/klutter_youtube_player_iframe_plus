library klutter_youtube_player_iframe_plus;

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:klutter_platfrom_verify/klutter_platfrom_verify.dart';
import 'package:klutter_youtube_player_iframe_plus/pages/android_ios_web.dart';
import 'package:youtube_player_iframe_plus/youtube_player_iframe_plus.dart';

class YoutubePlayerIframePlusHelp extends StatefulWidget {
  final String initialVideoId;
  final double aspectRatio;
  final Duration? startAt;
  final Duration? endAt;
  final bool? autoPlay;
  final bool? showControls;
  final bool? showFullscreenButton;
  final bool? mute;
  final bool? enableCaption;
  final bool? enableJavaScript;
  final bool? privacyEnhanced;
  final bool? useHybridComposition;
  final bool? playsInline;
  final bool? showVideoAnnotations;
  final bool? desktopMode;
  final bool? strictRelatedVideos;
  final bool? loop;
  final String? interfaceLanguage;
  final String? origin;
  final List<String>? playlist;
  final String? captionLanguage;
  final String? color;
  final YoutubePlayerController? controller;
  final Set<Factory<OneSequenceGestureRecognizer>>? gestureRecognizers;

  const YoutubePlayerIframePlusHelp({
    super.key,
    required this.initialVideoId,
    this.aspectRatio = 16 / 9,
    this.autoPlay = true,
    this.mute = false,
    this.captionLanguage = 'en',
    this.enableCaption = true,
    this.color = 'white',
    this.showControls = true,
    this.enableJavaScript = true,
    this.endAt,
    this.showFullscreenButton = false,
    this.interfaceLanguage = 'en',
    this.showVideoAnnotations = true,
    this.loop = false,
    this.origin = 'https://www.youtube.com',
    this.playlist = const [],
    this.playsInline = true,
    this.strictRelatedVideos = false,
    this.startAt = Duration.zero,
    this.desktopMode = false,
    this.privacyEnhanced = false,
    this.useHybridComposition = true,
    this.controller,
    this.gestureRecognizers,
  });

  @override
  State<YoutubePlayerIframePlusHelp> createState() =>
      _YoutubePlayerIframePlusHelpState();
}

class _YoutubePlayerIframePlusHelpState
    extends State<YoutubePlayerIframePlusHelp> {
  @override
  Widget build(BuildContext context) {
    if (isMobile()) {
      AndroidIosWeb(
        initialVideoId: widget.initialVideoId,
        startAt: widget.startAt!,
        endAt: widget.endAt,
        autoPlay: widget.autoPlay!,
        showControls: widget.showControls!,
        showFullscreenButton: widget.showFullscreenButton!,
        mute: widget.mute!,
        enableCaption: widget.enableCaption!,
        enableJavaScript: widget.enableJavaScript!,
        privacyEnhanced: widget.privacyEnhanced!,
        useHybridComposition: widget.useHybridComposition!,
        playsInline: widget.playsInline!,
        showVideoAnnotations: widget.showVideoAnnotations!,
        desktopMode: widget.desktopMode!,
        strictRelatedVideos: widget.strictRelatedVideos!,
        loop: widget.loop!,
        playlist: widget.playlist!,
        interfaceLanguage: widget.interfaceLanguage!,
        origin: widget.origin!,
        captionLanguage: widget.captionLanguage!,
        color: widget.color!,
        aspectRatio: widget.aspectRatio,
        controller: widget.controller,
        gestureRecognizers: widget.gestureRecognizers,
      );
    }
    if (isWeb()) {
      return AndroidIosWeb(
        initialVideoId: widget.initialVideoId,
        startAt: widget.startAt!,
        endAt: widget.endAt,
        autoPlay: widget.autoPlay!,
        showControls: widget.showControls!,
        showFullscreenButton: widget.showFullscreenButton!,
        mute: widget.mute!,
        enableCaption: widget.enableCaption!,
        enableJavaScript: widget.enableJavaScript!,
        privacyEnhanced: widget.privacyEnhanced!,
        useHybridComposition: widget.useHybridComposition!,
        playsInline: widget.playsInline!,
        showVideoAnnotations: widget.showVideoAnnotations!,
        desktopMode: widget.desktopMode!,
        strictRelatedVideos: widget.strictRelatedVideos!,
        loop: widget.loop!,
        playlist: widget.playlist!,
        interfaceLanguage: widget.interfaceLanguage!,
        origin: widget.origin!,
        captionLanguage: widget.captionLanguage!,
        color: widget.color!,
        aspectRatio: widget.aspectRatio,
        controller: widget.controller,
        gestureRecognizers: widget.gestureRecognizers,
      );
    }
    if (isLinux()) {
      return const Scaffold(
        body: Center(
          child: Text('Linux Not Work'),
        ),
      );
    }
    if (isMacOS()) {
      return const Scaffold(
        body: Center(
          child: Text('MacOs Not Work'),
        ),
      );
    }
    if (isWindows()) {
      return const Scaffold(
        body: Center(
          child: Text('Windows Not Work'),
        ),
      );
    }
    return const Text('data');
  }
}
