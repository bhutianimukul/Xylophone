import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  final player=AudioCache();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
          
             children: [
      
            Buttons(Colors.purple, (){
            
            player.play('note1.wav');
          }),
            Buttons(Colors.indigo, (){
            
            player.play('note2.wav');
          }),
            Buttons(Colors.blue, (){
            
            player.play('note3.wav');
          }),
            Buttons(Colors.green, (){
            
            player.play('note4.wav');
          }),
            Buttons(Colors.yellow, (){
            
            player.play('note5.wav');
          }),
            Buttons(Colors.orange, (){
            
            player.play('note6.wav');
          }),
            Buttons(Colors.red, (){
            
            player.play('note7.wav');
          }),
          ],),
        )
        
      ),
    );
  }
}
class Buttons extends StatelessWidget {
  final color ;
  final Function  sound;
  Buttons(this.color, this.sound);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: sound,
      ),
    );
  }
}