import 'package:flutter/material.dart';
import 'package:cat_facts/res/colors.dart';

import '../../api_service/api_service.dart';
import '../../main.dart';

class HistoryItem extends StatelessWidget {
  final CatModel cat;
  const HistoryItem({required this.cat, super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: StyleText.blackText(16, FontWeight.w500),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: size.height * .02),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Text(cat.fact ?? 'Unknown fact'),
              ),
              SizedBox(width: size.width * .06),
              Expanded(
                child: Text(cat.date ?? 'Unknown date'),
              )
            ],
          ),
        ));
  }
}
