import 'package:sidekick_core/sidekick_core.dart';

class CodemagicInitCommand extends Command {
  @override
  final String description =
      'Create the codemagic.yaml file in the current project.';

  @override
  final String name = 'cm-init';

  @override
  Future<void> run() async {
    print("Initialize project for codemagic");
    createCodemagicYamlFile();
    print("✅ Codemagic has been initialized");
  }
}

void createCodemagicYamlFile() {
  final file = File("./codemagic.yaml");
  file.create();
  final sink = file.openWrite();
  sink.writeln("workflows:");
  sink.close();
}
