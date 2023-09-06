import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_movie_database/presentation/resources/dimens.dart';

class InputField extends StatefulWidget {
  const InputField({
    super.key,
    this.controller,
    this.focusNode,
    this.decoration,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.hintStyle,
    this.errorStyle,
    this.strutStyle,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textDirection,
    this.readOnly = false,
    this.showCursor,
    this.autoFocus = false,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = true,
    this.enableSuggestions = true,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.maxLengthEnforcement,
    this.onChanged,
    this.onEditingCompleted,
    this.onSubmitted,
    this.onAppPrivateCommand,
    this.inputFormatters,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.selectionHeightStyle = ui.BoxHeightStyle.tight,
    this.selectionWidthStyle = ui.BoxWidthStyle.tight,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: Dimens.size_12,
      vertical: Dimens.size_8,
    ),
    this.dragStartBehavior = DragStartBehavior.start,
    this.selectionControls,
    this.onTap,
    this.onTapOutside,
    this.mouseCursor,
    this.buildCounter,
    this.scrollController,
    this.scrollPhysics,
    this.autofillHints = const <String>[],
    this.clipBehavior = Clip.hardEdge,
    this.restorationId,
    this.scribbleEnabled = true,
    this.enableIMEPersonalizedLearning = true,
    this.contextMenuBuilder,
    this.spellCheckConfiguration,
    this.magnifierConfiguration,
    this.width,
    this.height = Dimens.size_56,
    this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.defaultValue,
    this.hint,
    this.borderRadius = Dimens.size_8,
    this.readOnlyTextColor,
    this.readOnlyBackgroundColor,
    this.isMultiline = false,
    this.keyboardType,
    this.smartDashesType,
    this.smartQuotesType,
    this.isErrorBoxShown = true,
    this.errorController,
    this.enableInteractiveSelection,
    this.iconSize,
    this.borderColor = Colors.grey,
    this.backgroundColor = Colors.white,
  });

  static const int noMaxLength = -1;

  final double? width;
  final double height;

  final Widget? label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? defaultValue;
  final String? hint;

  final InputDecoration? decoration;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final TextStyle? errorStyle;
  final StrutStyle? strutStyle;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final TextDirection? textDirection;
  final double borderRadius;
  final int? maxLength;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final int? maxLines;
  final int? minLines;
  final bool expands;

  final ui.BoxHeightStyle selectionHeightStyle;
  final ui.BoxWidthStyle selectionWidthStyle;

  final bool readOnly;
  final Color? readOnlyTextColor;
  final Color? readOnlyBackgroundColor;

  final bool? enabled;

  final bool isMultiline;

  final TextEditingController? controller;
  final TextEditingController? errorController;

  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final TextMagnifierConfiguration? magnifierConfiguration;
  final TextCapitalization textCapitalization;
  final bool enableSuggestions;
  final String obscuringCharacter;
  final bool obscureText;
  final bool autocorrect;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;

  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingCompleted;
  final ValueChanged<String>? onSubmitted;
  final AppPrivateCommandCallback? onAppPrivateCommand;

  final bool isErrorBoxShown;

  final FocusNode? focusNode;
  final bool autoFocus;

  final bool? showCursor;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final Color? cursorColor;

  final Brightness? keyboardAppearance;

  final EdgeInsets scrollPadding;

  final EdgeInsets contentPadding;

  final bool? enableInteractiveSelection;

  final TextSelectionControls? selectionControls;

  final DragStartBehavior dragStartBehavior;

  bool get selectionEnabled => enableInteractiveSelection ?? (!readOnly || !obscureText);

  final GestureTapCallback? onTap;

  final TapRegionCallback? onTapOutside;

  final MouseCursor? mouseCursor;

  final InputCounterWidgetBuilder? buildCounter;

  final ScrollPhysics? scrollPhysics;

  final ScrollController? scrollController;

  final Iterable<String>? autofillHints;

  final Clip clipBehavior;

  final String? restorationId;

  final bool scribbleEnabled;

  final bool enableIMEPersonalizedLearning;

  final EditableTextContextMenuBuilder? contextMenuBuilder;

  final SpellCheckConfiguration? spellCheckConfiguration;

  final double? iconSize;

  final Color borderColor;

  final Color backgroundColor;

  @override
  State<InputField> createState() => InputFieldState();
}

class InputFieldState extends State<InputField> {
  late final TextEditingController controller;
  late final TextEditingController errorController;

  @override
  void initState() {
    super.initState();
    controller = widget.controller ?? TextEditingController(text: widget.defaultValue);
    errorController = widget.errorController ?? TextEditingController();
  }

  void onTextChanged(String value) {
    if (widget.onChanged != null) widget.onChanged?.call(value);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.label != null) widget.label!,
        ConstrainedBox(
          constraints: BoxConstraints(minHeight: widget.height),
          child: Container(
            width: widget.width,
            margin: const EdgeInsets.only(
              top: Dimens.size_8,
              bottom: Dimens.size_4,
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: widget.readOnly ? widget.readOnlyBackgroundColor : widget.backgroundColor,
              borderRadius: BorderRadius.circular(widget.borderRadius),
              border: Border.all(color: widget.borderColor),
            ),
            child: TextField(
              controller: controller,
              focusNode: widget.focusNode,
              decoration: widget.decoration ??
                  InputDecoration(
                    hintStyle: widget.hintStyle,
                    focusColor: Colors.white,
                    fillColor: Colors.white,
                    hintText: widget.hint,
                    isDense: true,
                    contentPadding: widget.contentPadding,
                    border: InputBorder.none,
                    prefixIcon: widget.prefixIcon,
                    prefixIconConstraints: BoxConstraints(
                      minWidth: widget.iconSize ?? Dimens.size_32,
                      maxHeight: widget.iconSize ?? Dimens.size_32,
                    ),
                    suffixIcon: widget.suffixIcon,
                    suffixIconConstraints: BoxConstraints(
                      minWidth: widget.iconSize ?? Dimens.size_32,
                      maxHeight: widget.iconSize ?? Dimens.size_32,
                    ),
                    counterText: '',
                  ),
              keyboardType: widget.keyboardType,
              textInputAction: widget.textInputAction,
              textCapitalization: widget.textCapitalization,
              style: widget.style,
              strutStyle: widget.strutStyle,
              textAlign: widget.textAlign,
              textAlignVertical: widget.textAlignVertical,
              textDirection: widget.textDirection,
              readOnly: widget.readOnly,
              showCursor: widget.showCursor,
              autofocus: widget.autoFocus,
              obscuringCharacter: widget.obscuringCharacter,
              obscureText: widget.obscureText,
              autocorrect: widget.autocorrect,
              smartDashesType: widget.smartDashesType,
              smartQuotesType: widget.smartQuotesType,
              enableSuggestions: widget.enableSuggestions,
              maxLines: widget.maxLines,
              minLines: widget.minLines,
              expands: widget.expands,
              maxLength: widget.maxLength,
              maxLengthEnforcement: widget.maxLengthEnforcement,
              onChanged: onTextChanged,
              onEditingComplete: widget.onEditingCompleted,
              onSubmitted: widget.onSubmitted,
              onAppPrivateCommand: widget.onAppPrivateCommand,
              inputFormatters: widget.inputFormatters,
              enabled: widget.enabled,
              cursorWidth: widget.cursorWidth,
              cursorHeight: widget.cursorHeight,
              cursorRadius: widget.cursorRadius,
              cursorColor: widget.cursorColor,
              selectionHeightStyle: widget.selectionHeightStyle,
              selectionWidthStyle: widget.selectionWidthStyle,
              keyboardAppearance: widget.keyboardAppearance,
              scrollPadding: widget.scrollPadding,
              dragStartBehavior: widget.dragStartBehavior,
              enableInteractiveSelection: widget.enableInteractiveSelection,
              selectionControls: widget.selectionControls,
              onTap: widget.onTap,
              onTapOutside: widget.onTapOutside,
              mouseCursor: widget.mouseCursor,
              buildCounter: widget.buildCounter,
              scrollController: widget.scrollController,
              scrollPhysics: widget.scrollPhysics,
              autofillHints: widget.autofillHints,
              clipBehavior: widget.clipBehavior,
              restorationId: widget.restorationId,
              scribbleEnabled: widget.scribbleEnabled,
              enableIMEPersonalizedLearning: widget.enableIMEPersonalizedLearning,
              contextMenuBuilder: (context, editableTextState) =>
                  widget.contextMenuBuilder?.call(context, editableTextState) ??
                  _defaultContextMenuBuilder(context, editableTextState),
              spellCheckConfiguration: widget.spellCheckConfiguration,
              magnifierConfiguration: widget.magnifierConfiguration,
            ),
          ),
        ),
        if (widget.isErrorBoxShown)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.size_8),
            child: Text(
              errorController.text,
              style: widget.errorStyle,
            ),
          ),
      ],
    );
  }

  Widget _defaultContextMenuBuilder(BuildContext context, EditableTextState editableTextState) =>
      AdaptiveTextSelectionToolbar.editableText(
        editableTextState: editableTextState,
      );
}
