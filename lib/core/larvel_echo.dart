//
// import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';
//
// class EchoSingleton {
//   static const appId = "1722883";
//   static const pusher_key = "c4889c6273ebade27f73";
//   static const secret = "dd21da4c3f8ce31f86ab";
//   static const cluster = "eu";
//
//   static const baseUrl = 'https://elwaseet.net';
//
//   static const hostEndpoint = baseUrl;
//   static const hostAuthEndpoint = '${hostEndpoint}/chatify/api/chat/auth';
//   static const port = 443;
//
//   static PusherChannelsFlutter pusher = PusherChannelsFlutter.getInstance();
//
//   static unSub() async {
//     await pusher.unsubscribe(channelName: channelName);
//   }
//
//   static final String channelName = 'chat';
//   static final String eventName = 'MessageSent';
//   void listenChatChannel(ChatEntity chat) {
//     LaravelEcho.instance.private('chat.${chat.id}').listen('.message.sent',
//             (e) {
//           if (e is PusherEvent) {
//             if (e.data != null) {
//               vLog(jsonDecode(e.data!));
//               _handleNewMessage(jsonDecode(e.data!));
//             }
//           }
//         }).error((err) {
//       eLog(err);
//     });
//   }
//   static Future<void> init(Function(PusherEvent) onEvent) async {
//     try {
//       await pusher.init(
//         apiKey: pusher_key,
//         cluster: cluster,
//         onConnectionStateChange: onConnectionStateChange,
//         onError: onError,
//         onSubscriptionSucceeded: onSubscriptionSucceeded,
//         onEvent: onEvent,
//         onSubscriptionError: onSubscriptionError,
//         onDecryptionFailure: onDecryptionFailure,
//         onMemberAdded: onMemberAdded,
//         onMemberRemoved: onMemberRemoved,
//         authEndpoint: hostAuthEndpoint,
//         onAuthorizer: onAuthorizer,
//       );
//       await pusher.subscribe(
//         channelName: channelName,
//         onEvent: (e) => print("Subscribe ,  On Event : $e"),
//         onSubscriptionSucceeded: (e) => print("On Subscription Succeeded : $e"),
//         onSubscriptionError: (e) => print("On Subscription Error : $e"),
//       );
//       await pusher.connect();
//     } catch (e) {
//       print("Pusher Catch ERROR: $e");
//       rethrow;
//     }
//   }
//
//   static Digest getSignature(String value) {
//     var key = utf8.encode(pusher_key);
//     var bytes = utf8.encode(value);
//
//     var hmacSha256 = Hmac(sha256, key); // HMAC-SHA256
//     var digest = hmacSha256.convert(bytes);
//     return digest;
//   }
//
//   static onAuthorizer(String channelName, String socketId, dynamic options) {
//     final auth = getSignature("$socketId:$channelName");
//
//     return {
//       "auth": auth,
//     };
//   }
//
//   void onTriggerEventPressed(d) async {
//     pusher.trigger(PusherEvent(channelName: channelName, eventName: eventName, data: d));
//   }
//
//   static log(String text) {
//     print(text);
//   }
//
//   static onConnectionStateChange(dynamic currentState, dynamic previousState) {
//     return log("Connection: $currentState");
//   }
//
//   static onError(String message, int? code, dynamic e) {
//     log("onError: $message code: $code exception: $e");
//   }
//
//   static onEvent(PusherEvent event) {
//     if (event.eventName == eventName) {
//       log("onEvent: $event");
//     }
//   }
//
//   static onSubscriptionSucceeded(String channelName, dynamic data) {
//     log("onSubscriptionSucceeded: $channelName data: $data");
//     final me = pusher.getChannel(channelName)?.me;
//     log("Me: $me");
//   }
//
//   static onSubscriptionError(String message, dynamic e) {
//     log("onSubscriptionError: $message Exception: $e");
//   }
//
//   static onDecryptionFailure(String event, String reason) {
//     log("onDecryptionFailure: $event reason: $reason");
//   }
//
//   static onMemberAdded(String channelName, PusherMember member) {
//     log("onMemberAdded: $channelName user: $member");
//   }
//
//   static onMemberRemoved(String channelName, PusherMember member) {
//     log("onMemberRemoved: $channelName user: $member");
//   }
//
//   static onSubscriptionCount(String channelName, int subscriptionCount) {
//     log("onSubscriptionCount: $channelName subscriptionCount: $subscriptionCount");
//   }
// }