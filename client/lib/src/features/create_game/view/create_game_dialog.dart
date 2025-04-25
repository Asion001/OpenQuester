import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';
import 'package:openquester/src/features/create_game/data/game_validation_const.dart';

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
        constraints: const BoxConstraints.tightFor(height: 600),
        builder: (context) => const _CreateGameBody(),
      ),
    );
  }
}

class _CreateGameBody extends WatchingWidget {
  const _CreateGameBody();

  @override
  Widget build(BuildContext context) {
    final ageRestrictions = AgeRestriction.values
        .whereNot((e) => e == AgeRestriction.$unknown)
        .toList()
        .reversed;

    final controller = createOnce(
      CreateGameController.new,
      dispose: (e) => e.dispose(),
    );
    final state = watch(controller.state).value;

    return SingleChildScrollView(
      padding: 16.all - 16.top,
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FilledButton.tonalIcon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: Text(
              state.package?.title ?? LocaleKeys.select_game_package.tr(),
            ),
          ),
          TextFormField(
            initialValue: state.gameName,
            onChanged: (value) =>
                controller.state.value = state.copyWith(gameName: value),
            decoration: InputDecoration(
              labelText: LocaleKeys.game_name.tr(),
            ),
            maxLength: GameValidationConst.maxGameNameLenght,
          ),
          Wrap(
            spacing: 4,
            runSpacing: 4,
            children: [
              for (final restriction in ageRestrictions)
                ChoiceChip(
                  label: Text(restriction.f()),
                  selected: state.ageRestriction == restriction,
                  onSelected: (_) => controller.state.value =
                      state.copyWith(ageRestriction: restriction),
                  showCheckmark: false,
                ),
            ],
          ).withTitle(LocaleKeys.age_restriction.tr()),
          ListTile(
            title: Text(LocaleKeys.private.tr()),
            subtitle: Text(LocaleKeys.private_game_description.tr()),
            contentPadding: 0.all,
            trailing: Switch(
              value: state.private,
              onChanged: (private) =>
                  controller.state.value = state.copyWith(private: private),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 8,
            children: [
              Text(
                LocaleKeys.max_players.tr(),
                style: context.textTheme.bodyLarge,
              ),
              Text(
                '${state.maxPlayers}',
                style: context.textTheme.bodyLarge,
              ),
            ],
          ),
          Slider(
            value: state.maxPlayers.toDouble(),
            padding: 16.horizontal,
            divisions: GameValidationConst.maxMaxPlayers -
                GameValidationConst.minMaxPlayers,
            onChanged: (maxPlayers) => controller.state.value = state.copyWith(
              maxPlayers: maxPlayers.toInt(),
            ),
            min: GameValidationConst.minMaxPlayers.toDouble(),
            max: GameValidationConst.maxMaxPlayers.toDouble(),
          ),
          FilledButton.icon(
            onPressed: state.valid ? () {} : null,
            icon: const Icon(Icons.play_arrow_outlined),
            label: Text(LocaleKeys.start_game.tr()),
            style: ButtonStyle(padding: WidgetStatePropertyAll(16.all)),
          ).paddingTop(40),
        ],
      ),
    );
  }
}
