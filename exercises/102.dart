import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:filepicker_windows/filepicker_windows.dart';

void main() async {
  stdout.writeln('Insira a URL do vídeo que deseja baixar:');
  String? url = stdin.readLineSync();
  // String? url = 'https://www.gov.br/pt-br/midias-agorabrasil/video-fundo.mp4';

  if (url == null || url.trim().isEmpty) {
    stderr.writeln('URL inválida. O programa será encerrado.');
    exit(1);
  }

  // Abrir a janela para selecionar o local de salvamento
  final saveFile = SaveFilePicker()
    ..filterSpecification = {
      'Arquivos de Vídeo (*.mp4)': '*.mp4',
      'Todos os Arquivos': '*.*'
    }
    ..defaultFilterIndex = 0
    ..defaultExtension = 'mp4'
    ..fileName = 'video.mp4';

  final result = saveFile.getFile();

  if (result == null) {
    stdout.writeln('Operação cancelada pelo usuário.');
    exit(0);
  }

  final path = result.path;

  try {
    stdout.writeln('Baixando o vídeo...');

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final file = File(path);
      await file.writeAsBytes(response.bodyBytes);
      stdout.writeln('Download concluído com sucesso!');
    } else {
      stderr.writeln('Falha ao baixar o vídeo. Código: ${response.statusCode}');
    }
  } catch (e) {
    stderr.writeln('Ocorreu um erro: $e');
  }
}
