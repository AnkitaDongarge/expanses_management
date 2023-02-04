import 'package:flutter/material.dart';
class Transaction {
  final String id;
  final String shop;
  final double amount;
  final DateTime date;

  Transaction({
    required this.id,
    required this.shop,
    required this.amount,
    required this.date,
  }
  );
}

