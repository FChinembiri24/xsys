import 'package:flutter/cupertino.dart';

class ChatMessage{
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}
List<ChatMessage> messages = [
  ChatMessage(messageContent: "Suspicious car was roaming around 2 am License plate ZJK 1023", messageType: "receiver"),
  ChatMessage(messageContent: "Same car from yesterday seen roaming around at 2am in the evening parked outside several gates before leaving ", messageType: "receiver"),
  ChatMessage(messageContent: "no activity today", messageType: "receiver"),
  ChatMessage(messageContent: "blue Sedan license plate ZJK 1023 parked outside gate at 3 am I had to chase them away there 4 people in the vehicle all males .", messageType: "receiver"),
  ChatMessage(messageContent: "full moon todsy no activity", messageType: "receiver"),
];