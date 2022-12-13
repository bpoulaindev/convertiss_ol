// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:twitter_api_v2/twitter_api_v2.dart';

Future<String> postTweet(String message) async {
  final twitter = TwitterApi(
    bearerToken:
        'AAAAAAAAAAAAAAAAAAAAAMICcQEAAAAAA%2BRsUThOX0i1lvFd77pKBeD32Qw%3DpuswkDu66oysEIFB3ULNC2OA8FgANfNUZwQc2PiVDyQ4l8AeQg',
    oauthTokens: OAuthTokens(
      consumerKey: '5T6XwqPd7ncU6JWhQDVfS20M2',
      consumerSecret: '9aSJXkefbAIwd4q1m1JMCmXOdqKsu8sS25lWcNmEOdU5wNj8IX',
      accessToken: '1522199737751191552-5BnXnOs6DwGzJE5n2JeCWbffrE8sUC',
      accessTokenSecret: '7eRrpAUMTPlIeEGyvJkgEZzkilYf1radbdq5gW6Ji8dCT',
    ),
  );
  try {
    await twitter.tweetsService.createTweet(text: "$message @yngiluob");
  } on TwitterException catch (e) {
    print(e.response.headers);
    print(e.message);
    print(e.body);
  }
}
