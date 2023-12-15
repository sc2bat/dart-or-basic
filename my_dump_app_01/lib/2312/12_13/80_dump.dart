import 'dart:io';

void main() {
  try {
    // Attempt to get the script path
    String scriptPath = Platform.script.toFilePath();
    print('Current script path: $scriptPath');

    // Attempt to get the current working directory
    String currentDirectory = Directory.current.path;
    print('Current working directory: $currentDirectory');
  } catch (e) {
    // Handle the exception if Platform.script is not supported
    print('Error: $e');
  }
}
