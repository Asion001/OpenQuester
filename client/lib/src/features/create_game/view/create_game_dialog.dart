import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

@RoutePage(deferredLoading: false)
class CreateGameDialog extends StatefulWidget {
  const CreateGameDialog({super.key});

  @override
  State<CreateGameDialog> createState() => _CreateGameDialogState();
}

class _CreateGameDialogState extends State<CreateGameDialog>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        onTap: () => Navigator.pop(context),
      ),
      bottomSheet: BottomSheet(
        animationController: BottomSheet.createAnimationController(this),
        showDragHandle: true,
        onClosing: () {},
        constraints: const BoxConstraints.tightFor(height: 500),
        builder: (context) => const _CreateGameBody(),
      ),
    );
  }
}

class _CreateGameBody extends StatelessWidget {
  const _CreateGameBody();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: 16.all,
      child: Column(
        spacing: 24,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FilledButton.tonalIcon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: Text(LocaleKeys.select_game_package.tr()),
            style: ButtonStyle(padding: WidgetStatePropertyAll(24.all)),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: LocaleKeys.game_name.tr(),
            ),
          ),
        ],
      ),
    );
  }
}
