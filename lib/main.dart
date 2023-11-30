import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XyloApp());
}

Expanded keys(int X, Color C){
  return Expanded(
    child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: C,
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        onPressed: (){
          final player = AudioPlayer();
          player.play(AssetSource('$X.wav'));
        },
        child: Container()
    ),
  );
}

Positioned skeys(double T, double L, int Y){
  return Positioned(
    top: T,
    left: L,
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.black,
        shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      onPressed: () {
        final player = AudioPlayer();
        player.play(AssetSource('S$Y.wav'));
      },
      child: Container(
        width: 200.0,
        height: 50.0,
      ),
    ),
  );
}

class XyloApp extends StatelessWidget {
  const XyloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                keys(1, Colors.red),
                keys(2, Colors.orange),
                keys(3, Colors.yellow),
                keys(4, Colors.green),
                keys(5, Colors.blue),
                keys(6, Colors.indigo),
                keys(7, Colors.purple),
              ],
            ),
            skeys(80.0, 200.0, 1),
            skeys(195.0, 200.0, 2),
            skeys(425.0, 200.0, 3),
            skeys(535.0, 200.0, 4),
            skeys(650.0, 200.0, 5),
          ],
        ),
      ),
    );
  }
}
