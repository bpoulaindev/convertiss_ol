import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class PostTweetCall {
  static Future<ApiCallResponse> call({
    String message = 'Random tweet',
  }) {
    final body = '''
{
  "text": "${message} @yngiluob"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Post Tweet',
      apiUrl: 'https://api.twitter.com/2/tweets',
      callType: ApiCallType.POST,
      headers: {
        'consumerKey': '5T6XwqPd7ncU6JWhQDVfS20M2',
        'consumerSecret': '9aSJXkefbAIwd4q1m1JMCmXOdqKsu8sS25lWcNmEOdU5wNj8IX',
        'accessToken': '1522199737751191552-5BnXnOs6DwGzJE5n2JeCWbffrE8sUC',
        'accessTokenSecret': '7eRrpAUMTPlIeEGyvJkgEZzkilYf1radbdq5gW6Ji8dCT',
        'bearerToken':
            'AAAAAAAAAAAAAAAAAAAAAMICcQEAAAAAA%2BRsUThOX0i1lvFd77pKBeD32Qw%3DpuswkDu66oysEIFB3ULNC2OA8FgANfNUZwQc2PiVDyQ4l8AeQg',
      },
      params: {
        'message': message,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
