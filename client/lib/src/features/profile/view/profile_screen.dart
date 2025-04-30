import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

@RoutePage()
class ProfileScreen extends WatchingWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = watchValue((ProfileController m) => m.user);

    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.profile.tr()),
      ),
      body: Center(
        child: user == null
            ? _loginField(context)
            : _authorizedProfile(context, user),
      ),
    );
  }

  Widget _authorizedProfile(BuildContext context, ResponseUser user) {
    const avatarSize = 100.0;

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: avatarSize / 2,
              foregroundImage: user.avatar != null
                  ? NetworkImageProvider(user.avatar!)
                  : null,
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: _ChangeAvatarBtn(),
            ),
          ],
        ).withSize(width: avatarSize, height: avatarSize),
        Text(
          user.username,
          style: context.textTheme.bodyLarge,
        ).paddingBottom(24),
        FilledButton(
          onPressed: getIt.get<AuthController>().logOut,
          child: Text(LocaleKeys.logout.tr()),
        ),
      ],
    );
  }

  Widget _loginField(BuildContext context) {
    return Container(
      padding: 16.all,
      decoration: BoxDecoration(
        color: context.theme.colorScheme.surfaceContainer,
        borderRadius: 16.circular,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          Text(
            LocaleKeys.login_with_discord.tr(),
            style: context.textTheme.titleLarge,
          ),
          LoadingButtonBuilder(
            onPressed: () async {
              try {
                await getIt.get<AuthController>().loginUser();
              } catch (e) {
                await getIt<ToastController>().show(e.toString());
              }
            },
            child: const Icon(Icons.discord),
            builder: (context, child, onPressed) {
              return IconButton(
                onPressed: onPressed,
                icon: child,
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ChangeAvatarBtn extends StatelessWidget {
  const _ChangeAvatarBtn();

  @override
  Widget build(BuildContext context) {
    return LoadingButtonBuilder(
      builder: (context, child, onPressed) => IconButton.filled(
        onPressed: onPressed,
        icon: child,
      ),
      onPressed: getIt<ProfileController>().changeAvatar,
      child: const Icon(Icons.edit),
    );
  }
}
