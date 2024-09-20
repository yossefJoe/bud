// import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';
//
// class PusherService{
//   static String API_KEY = "c4889c6273ebade27f73";
//   static String API_CLUSTER = "eu";
//   static PusherChannelsFlutter pusher = PusherChannelsFlutter.getInstance();
//   static PusherChannel? pusherChannel;
//   static Future<void> initPusher() async {
//     try {
//       // await pusher.init(
//       //   apiKey: API_KEY,
//       //   cluster: API_CLUSTER,
//       //   onConnectionStateChange: onConnectionStateChange,
//       //   onError: onError,
//       //   onSubscriptionSucceeded: onSubscriptionSucceeded,
//       //   onEvent: onEvent,
//       //   onSubscriptionError: onSubscriptionError,
//       //   onDecryptionFailure: onDecryptionFailure,
//       //   onMemberAdded: onMemberAdded,
//       //   onMemberRemoved: onMemberRemoved,
//       //
//       //   // authEndpoint: hostAuthEndpoint,
//       //   // onAuthorizer: onAuthorizer,
//       // );
//       await pusher.init(
//         apiKey: API_KEY,
//         cluster: API_CLUSTER,
//         onConnectionStateChange: onConnectionStateChange,
//         onError: onError,
//         onSubscriptionSucceeded: onSubscriptionSucceeded,
//         onEvent: onEvent,
//         onSubscriptionError: onSubscriptionError,
//         onDecryptionFailure: onDecryptionFailure,
//         onMemberAdded: onMemberAdded,
//         onMemberRemoved: onMemberRemoved,
//           authEndpoint: 'https://elwaseet.net/pusher/auth',
//       );
//       pusherChannel = await pusher.subscribe(channelName: 'chat', onEvent: (event) {
//         print("Received event: ${event.eventName} - ${event.data}");
//       });
//       await pusher.connect();
//     } catch (e) {
//       print("ERROR: $e");
//     }
//   }
//   static void onConnectionStateChange(String currentState, String previousState) {
//     print("State changed from $previousState to $currentState");
//   }
//   static void onError(String message, int? code, dynamic error) {
//     print("onError message: $message");
//     print("onError code: $code");
//     print("onError Error: $error");
//   }
//   static void onSubscriptionSucceeded(String channelName, dynamic data) {
//     print("onSubscriptionSucceeded channelName: $channelName");
//     print("onSubscriptionSucceeded data: $data");
//   }
//   static void onEvent(PusherEvent event) {
//     print("onEvent received: ${event.channelName} - ${event.eventName} - ${event.data} - ${event.userId}");
//   }
//   static void onSubscriptionError(String message, dynamic error) {
//     print("onSubscriptionError message: $message");
//     print("onSubscriptionError error: $error");
//   }
//   static void onDecryptionFailure(String event, String reason) {
//     print("Decryption failed for event $event. Reason: $reason");
//   }
//   static void onMemberAdded(String channelName, PusherMember member) {
//     print("Member added: ${member.userId}");
//   }
//   static void onMemberRemoved(String channelName, PusherMember member) {
//     print("Member removed: ${member.userId}");
//   }
//
//   static sendMsg(){
//     pusherChannel?.trigger(PusherEvent(
//       channelName: 'chat',
//       eventName: 'MessageSent',
//         data: 'LOL',
//     ));
//   }
//
//   static onAuthorizer(String channelName, String socketId, dynamic options) {
//     final auth = "$socketId:$channelName";
//
//     return {
//       "auth": auth,
//     };
//   }
// }