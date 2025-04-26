import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

@RoutePage(deferredLoading: false)
class CreateGameDialog extends WatchingWidget {
  const CreateGameDialog({super.key});

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

    return AdaptiveDialog(
      builder: (context) => Card(
        child: SingleChildScrollView(
          padding: 16.all,
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _SearchPackageButton(controller: controller, state: state),
                  UploadPackageButton(
                    afterUpload: (value) =>
                        controller.state.value = state.copyWith(package: value),
                  ),
                ],
              ),
              AnimatedCrossFade(
                firstChild: const SizedBox(),
                secondChild: state.package != null
                    ? PackageListItemWidget(item: state.package!)
                        .paddingBottom(16)
                    : const SizedBox(),
                crossFadeState: state.package == null
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Durations.medium1,
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
                onChanged: (maxPlayers) =>
                    controller.state.value = state.copyWith(
                  maxPlayers: maxPlayers.toInt(),
                ),
                min: GameValidationConst.minMaxPlayers.toDouble(),
                max: GameValidationConst.maxMaxPlayers.toDouble(),
              ),
              LoadingButtonBuilder(
                onPressed: controller.createGame,
                child: const Icon(Icons.play_arrow_outlined),
                builder: (context, child, onPressed) {
                  return FilledButton.icon(
                    onPressed: state.valid ? onPressed : null,
                    icon: child,
                    label: Text(LocaleKeys.start_game.tr()),
                    style: ButtonStyle(padding: WidgetStatePropertyAll(16.all)),
                  );
                },
              ).paddingTop(40),
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchPackageButton extends StatelessWidget {
  const _SearchPackageButton({
    required this.controller,
    required this.state,
  });

  final CreateGameController controller;
  final CreateGameDto state;

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonalIcon(
      onPressed: () async {
        final package = await showSearch(
          context: context,
          delegate: CreateGamePackageSearch(),
        );
        if (package == null) return;
        controller.state.value = state.copyWith(package: package);
      },
      icon: Icon(
        state.package == null ? Icons.add : Icons.edit,
      ),
      label: Text(
        LocaleKeys.select_game_package.tr(),
      ),
    );
  }
}
