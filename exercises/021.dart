//021 - Create a program that displays a playlist and when you choose the number
//      corresponding to the song, the program plays the chosen song.
//      <<<REVIEW>>>

import 'dart:io';

void main() async {
  List<Map<String, String>> playlist = [
    {
      'name': 'Beautiful Things',
      'path': '../assets/songs/Beautiful Things.mp3',
    },
    {
      'name': 'Counting My Blessings',
      'path': '../assets/songs/Counting My Blessings.mp3',
    },
    {
      'name': 'Stay',
      'path': '../assets/songs/Stay.mp3',
    },
    {
      'name': 'Stay',
      'path': '../assets/songs/Stay.mp3',
    },
  ];

  print('Current Directory: ${Directory.current.path}');

  print('Choose a song by number:\n');
  print('PLAYLIST\n==========');
  for (var i = 0; i < playlist.length; i++) {
    print('${i + 1} ${playlist[i]['name']}');
  }

  stdout.write('Enter the number of the song you want to play: ');
  var userInput = stdin.readLineSync();
  var songIndex = int.tryParse(userInput ?? '');

  if (songIndex != null && songIndex >= 1 && songIndex <= playlist.length) {
    var chosenSong = playlist[songIndex - 1];
    print('Playing: ${chosenSong['name']}');

    // Resolve o caminho relativo para o absoluto e ajusta as barras
    var absolutePath = Directory.current.uri
        .resolve(chosenSong['path']!)
        .toFilePath()
        .replaceAll('\\', '/');

    print('Absolute path: $absolutePath');

    // Executa o ffplay com o caminho absoluto do arquivo de áudio
    await Process.run('C:/ffmpeg/bin/ffplay.exe', [absolutePath]);
  } else {
    print(
        'Invalid input. Please enter a number between 1 and ${playlist.length}.');
  }
}
