import 'package:sidekick_core/sidekick_core.dart'
    hide cliName, mainProject, repository;
import 'package:sidekick_plugin_installer/sidekick_plugin_installer.dart';

Future<void> main() async {
  final SidekickPackage package = PluginContext.sidekickPackage;

  addSelfAsDependency();
  pubGet(package);

  registerPlugin(
    sidekickCli: package,
    import:
        "import 'package:codemagic_sidekick_plugin/codemagic_sidekick_plugin.dart';",
    command: 'CodemagicSidekickPluginCommand()',
  );
}
