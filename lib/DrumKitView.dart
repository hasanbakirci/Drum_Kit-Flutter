import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DrumKitView extends StatefulWidget {
  @override
  _DrumKitViewState createState() => _DrumKitViewState();
}

class _DrumKitViewState extends State<DrumKitView> {
  AudioCache audioCache = AudioCache();
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(
          "Drum Kit ♪ ♫",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: MusicButtonsArea(),
    );
  }
  Widget MusicButtonsArea() {
    return Center(
      child: Container(margin: EdgeInsets.all(10),
        child: Column(

          children: <Widget>[
            SizedBox(
              height: 50,
              child: RaisedButton(
                color: Colors.deepOrange,
                child: Text("Boom"),
                onPressed: () {
                  audioCache.play('boom.mp3', mode: PlayerMode.LOW_LATENCY);
                },
              ),
            ),
            SizedBox(height:10),
            SizedBox(
              height: 50,
              child: RaisedButton(
                color: Colors.deepOrange,
                child: Text("Clap"),
                onPressed: () {
                  audioCache.play('clap.mp3', mode: PlayerMode.LOW_LATENCY);
                },
              ),
            ),
            SizedBox(height:10),
            SizedBox(
              height: 50,
              child: RaisedButton(
                color: Colors.deepOrange,
                child: Text("Hihat"),
                onPressed: () {
                  audioCache.play('hihat.mp3', mode: PlayerMode.LOW_LATENCY);
                },
              ),
            ),
            SizedBox(height:10),
            SizedBox(
              height: 50,
              child: RaisedButton(
                color: Colors.deepOrange,
                child: Text("Kick"),
                onPressed: () {
                  audioCache.play('kick.mp3', mode: PlayerMode.LOW_LATENCY);
                },
              ),
            ),
            SizedBox(height:10),
            SizedBox(
              height: 50,
              child: RaisedButton(
                color: Colors.deepOrange,
                child: Text("Openhat"),
                onPressed: () {
                  audioCache.play('openhat.mp3', mode: PlayerMode.LOW_LATENCY);
                },
              ),
            ),
            SizedBox(height:10),
            SizedBox(
              height: 50,
              child: RaisedButton(
                color: Colors.deepOrange,
                child: Text("Ride"),
                onPressed: () {
                  audioCache.play('ride.mp3', mode: PlayerMode.LOW_LATENCY);
                },
              ),
            ),
            SizedBox(height:10),
            SizedBox(
              height: 50,
              child: RaisedButton(
                color: Colors.deepOrange,
                child: Text("Snare"),
                onPressed: () {
                  audioCache.play('snare.mp3', mode: PlayerMode.LOW_LATENCY);
                },
              ),
            ),
            SizedBox(height:10),
            SizedBox(
              height: 50,
              child: RaisedButton(
                color: Colors.deepOrange,
                child: Text("Tink"),
                onPressed: () {
                  audioCache.play('tink.mp3', mode: PlayerMode.LOW_LATENCY);
                },
              ),
            ),
            SizedBox(height:10),
            SizedBox(
              height: 50,
              child: RaisedButton(
                color: Colors.deepOrange,
                child: Text("Tom"),
                onPressed: () {
                  audioCache.play('tom.mp3', mode: PlayerMode.LOW_LATENCY);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
