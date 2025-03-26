import 'dart:io';

import 'package:flutter/foundation.dart';

final isMacOS = !kIsWeb && Platform.isMacOS;
final isWindows = !kIsWeb && Platform.isWindows;
final isAndroid = !kIsWeb && Platform.isAndroid;
final isIos = !kIsWeb && Platform.isIOS;
const isWeb = kIsWeb;
final isMobile = isAndroid || isIos;
final isDesktop = isWindows || isMacOS;
