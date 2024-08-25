// Copyright (c) 2024 Philip Softworks. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';

const CupertinoDynamicColor pickerButtonTextColor = CupertinoColors.label;
const TextStyle pickerButtonTextStyle = TextStyle(
  color: pickerButtonTextColor,
  fontSize: 17.0,
);

const CupertinoDynamicColor pickerButtonBackgroundColor =
    CupertinoColors.tertiarySystemFill;

/// A decoration class for the cupertino picker button.
class PickerButtonDecoration {
  /// Creates a cupertino picker button decoration class with default values
  /// for non-provided parameters.
  factory PickerButtonDecoration({
    TextStyle? textStyle,
    Color? backgroundColor,
  }) {
    return PickerButtonDecoration._(
      textStyle: textStyle ?? pickerButtonTextStyle,
      backgroundColor: backgroundColor ?? pickerButtonBackgroundColor,
    );
  }

  const PickerButtonDecoration._({
    this.textStyle,
    this.backgroundColor,
  });

  /// Creates a cupertino picker button decoration class with default values
  /// for non-provided parameters.
  ///
  /// Applies the [CupertinoDynamicColor.resolve] method for colors.
  factory PickerButtonDecoration.withDynamicColor(
    BuildContext context, {
    TextStyle? textStyle,
    CupertinoDynamicColor? backgroundColor,
  }) {
    final TextStyle style = textStyle ?? pickerButtonTextStyle;
    return PickerButtonDecoration(
      textStyle: style.copyWith(
        color: CupertinoDynamicColor.resolve(
          style.color ?? pickerButtonTextColor,
          context,
        ),
      ),
      backgroundColor: CupertinoDynamicColor.resolve(
        backgroundColor ?? pickerButtonBackgroundColor,
        context,
      ),
    );
  }

  /// The [TextStyle] of the picker button.
  final TextStyle? textStyle;

  /// The background [Color] of the picker button.
  final Color? backgroundColor;

  /// Creates a copy of the class with the provided parameters.
  PickerButtonDecoration copyWith({
    TextStyle? textStyle,
    Color? backgroundColor,
  }) {
    return PickerButtonDecoration(
      textStyle: textStyle ?? this.textStyle,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}