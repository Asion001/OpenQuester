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
        child:
            user == null ? const _LoginProfile() : const _AuthorizedProfile(),
      ),
    );
  }
}

class _LoginProfile extends WatchingWidget {
  const _LoginProfile();

  @override
  Widget build(BuildContext context) {
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

class _AuthorizedProfile extends WatchingWidget {
  const _AuthorizedProfile();

  @override
  Widget build(BuildContext context) {
    const avatarSize = 100.0;
    final user = watchValue((ProfileController m) => m.user);

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        Stack(
          children: [
            ImageWidget(url: user?.avatar, avatarRadius: avatarSize / 2),
            const Align(
              alignment: Alignment.bottomRight,
              child: _ChangeAvatarBtn(),
            ),
          ],
        ).withSize(width: avatarSize, height: avatarSize),
        Text(
          user?.username ?? '',
          style: context.textTheme.bodyLarge,
        ).paddingBottom(24),
        FilledButton(
          onPressed: getIt.get<AuthController>().logOut,
          child: Text(LocaleKeys.logout.tr()),
        ),
      ],
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
