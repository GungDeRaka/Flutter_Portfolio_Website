import 'package:flutter/material.dart';

double heightMedQuery(BuildContext context, double percent) {
  return MediaQuery.of(context).size.height * percent;
}

double widthMedQuery(BuildContext context, double percent) {
  return MediaQuery.of(context).size.width * percent;
}

double mobileWidth = 650;