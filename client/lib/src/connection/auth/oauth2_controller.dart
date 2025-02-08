import 'package:flutter/foundation.dart';
import 'package:oauth2_client/access_token_response.dart';
import 'package:oauth2_client/oauth2_client.dart';
import 'package:openquester/common_imports.dart';
import 'package:universal_io/io.dart';

@singleton
class Oauth2Controller {
  Future<AccessTokenResponse> auth() async {
    final redirectUri = _getRedirectUrls();
    final client = OAuth2Client(
      authorizeUrl: 'https://discord.com/oauth2/authorize',
      tokenUrl: 'https://discord.com/api/oauth2/token',
      revokeUrl: 'https://discord.com/api/oauth2/token/revoke',
      customUriScheme: redirectUri.$1,
      redirectUri: redirectUri.$2,
    );
    final result = await client.getTokenWithAuthCodeFlow(
      clientId: Env.discordAuthClientId,
      scopes: ['identify', 'email'],
    );
    return result;
  }

  (String scheme, String uri) _getRedirectUrls() {
    String scheme = '';
    String uri = '/';

    if (kIsWeb) {
      scheme = Env.clientAppUrl.scheme;
      uri = Env.clientAppUrl.origin;
    } else if (Platform.isLinux || Platform.isWindows || Platform.isMacOS) {
      scheme = 'http://localhost:10000';
      uri = scheme;
    } else {
      scheme = 'com.asion.openquester';
    }
    return (scheme, uri);
  }
}
