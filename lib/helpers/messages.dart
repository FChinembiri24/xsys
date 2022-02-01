import 'package:xsys/helpers/variable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Messages {
  addMessages(String chatroomID, msgMap) {
    FirebaseFirestore.instance
        .collection("Chatroom")
        .doc(chatroomID)
        .collection("chats")
        .add(msgMap);
  }

  getMessages(String chatroomID) async {
    return await FirebaseFirestore.instance
        .collection("Chatroom")
        .doc(chatroomID)
        .collection("chats")
        .snapshots();
  }

  getMeetingRooms() {
    return FirebaseFirestore.instance
        .collection("Chatroom")
        .where("users", arrayContains: Variabless.email)
        .snapshots();
  }
}