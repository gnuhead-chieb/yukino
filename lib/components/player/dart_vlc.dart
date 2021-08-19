import 'dart:io' show Platform;
import 'dart:math';
import 'package:dart_vlc/dart_vlc.dart' as dart_vlc;
import 'package:flutter/material.dart';
import '../../core/models/player.dart' as model;
import '../../plugins/helpers/local_proxy.dart';

Future<void> initialize() async {
  dart_vlc.DartVLC.initialize();
}

bool isSupported() =>
    Platform.isLinux || Platform.isMacOS || Platform.isWindows;

class VideoPlayer extends model.Player {
  VideoPlayer(final model.PlayerSource source) : super(source);

  late dart_vlc.Player _player;
  double? _prevSpeed;
  double? _prevVolume;

  @override
  Future<void> load() async {
    _player = dart_vlc.Player(id: Random.secure().nextInt(69420))
      ..positionStream.listen((final dart_vlc.PositionState position) {
        dispatch(model.PlayerEvents.durationUpdate);
      })
      ..playbackStream.listen((final dart_vlc.PlaybackState playback) {
        dispatch(
          playback.isPlaying
              ? model.PlayerEvents.play
              : model.PlayerEvents.pause,
        );

        if (playback.isCompleted) {
          dispatch(model.PlayerEvents.end);
        }
      })
      ..generalStream.listen((final dart_vlc.GeneralState general) {
        if (_prevSpeed != general.rate) {
          dispatch(model.PlayerEvents.speed);
        }

        if (_prevVolume != general.volume) {
          dispatch(model.PlayerEvents.volume);
        }
      })
      ..currentStream.listen((final dart_vlc.CurrentState current) {
        if (!ready && current.medias.isNotEmpty) {
          dispatch(model.PlayerEvents.load);
          ready = true;
        }
      })
      ..open(
        dart_vlc.Playlist(
          medias: <dart_vlc.Media>[
            dart_vlc.Media.network(
              LocalProxy.constructProxiedURL(source.url, source.headers),
            ),
          ],
        ),
        autoStart: false,
      );
  }

  @override
  Future<void> play() async {
    _player.play();
  }

  @override
  Future<void> pause() async {
    _player.pause();
  }

  @override
  Future<void> seek(final Duration position) async {
    _player.seek(position);
  }

  @override
  Future<void> setVolume(final int volume) async {
    _player.setVolume(volume / model.Player.maxVolume);
  }

  @override
  Future<void> setSpeed(final double speed) async {
    _player.setRate(speed);
  }

  @override
  Widget getWidget() => dart_vlc.Video(
        showControls: false,
        player: _player,
      );

  @override
  Future<void> destroy() async {
    _player.stop();
    _player.dispose();
    super.destroy();
  }

  @override
  bool get isPlaying => _player.playback.isPlaying;

  @override
  Duration? get duration => _player.position.position;

  @override
  Duration? get totalDuration => _player.position.duration;

  @override
  int get volume => ((_player.general.volume) * model.Player.maxVolume).toInt();

  @override
  double get speed => _player.general.rate;
}