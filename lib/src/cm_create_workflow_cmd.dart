import 'package:codemagic_sidekick_plugin/codemagic_sidekick_plugin.dart';
import 'package:sidekick_core/sidekick_core.dart';

class CodemagicCreateWorkflowCommand extends Command {
  @override
  final String description = 'Add a workflow to your current codemagic.yaml';

  @override
  final String name = 'cm-init';

  @override
  Future<void> run() async {
    final file = File("./codemagic.yaml");
    if (!await file.exists()) {
      String? userInput;
      print(
        "🚧 There is no codemagic.yaml file in your project, do you want to create it? (y/n)",
      );
      do {
        userInput = stdin.readLineSync();
      } while (userInput != null || userInput!.isEmpty);

      if (userInput.toLowerCase().contains("y")) {
        createCodemagicYamlFile();
      }
    }
  }
}
