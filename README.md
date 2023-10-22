Eazy To Use
  
## Getting Started  
  
To use this plugin, add `flutter pub add klutter_youtube_player_iframe_plus` .   
  
### Example  

```dart
import 'package:flutter/material.dart';
import 'package:klutter_youtube_player_iframe_plus/klutter_youtube_player_iframe_plus.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: YoutubePlayerIframePlusHelp(
        initialVideoId: 'https://www.youtube.com/watch?v=bWXol_8MLzw',
        aspectRatio: 16 / 9,
      ),
    );
  }
}

```
