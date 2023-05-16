import 'package:flutter/material.dart';
import 'dart:convert';

class Message {
  final String senderId;
  final String receiverId;
  final String text;

  Message({
    required this.senderId,
    required this.receiverId,
    required this.text,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      senderId: json['senderId'],
      receiverId: json['receiverId'],
      text: json['text'],
    );
  }
}