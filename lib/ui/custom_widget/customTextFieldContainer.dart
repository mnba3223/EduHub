import 'package:edutec_hub/utils/uiUtils.dart';
import 'package:flutter/material.dart';

class CustomTextFieldContainer extends StatelessWidget {
  final String hintTextKey;
  final bool hideText;
  final double? bottomPadding;
  final Widget? suffixWidget;
  final TextEditingController? textEditingController;
  final int? maxLines;
  final double? borderRadius;
  final TextAlign? textAlign;
  final int? maxLength;

  const CustomTextFieldContainer({
    super.key,
    this.bottomPadding,
    this.suffixWidget,
    this.maxLength,
    required this.hideText,
    required this.hintTextKey,
    this.textEditingController,
    this.maxLines,
    this.borderRadius,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50 + ((maxLines ?? 0) * 8),
      margin: EdgeInsets.only(bottom: bottomPadding ?? 20.0),
      padding: const EdgeInsetsDirectional.only(
        start: 20.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
        border: Border.all(color: UiUtils.getColorScheme(context).secondary),
      ),
      child: TextFormField(
        controller: textEditingController,
        maxLength: maxLength,
        obscureText: maxLines == null ? hideText : false,
        maxLines: maxLines ?? 1,
        textAlign: textAlign ?? TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          counterText: "",
          suffixIcon: suffixWidget,
          hintStyle: TextStyle(
            color: UiUtils.getColorScheme(context).secondary.withOpacity(0.4),
            fontWeight: FontWeight.w400,
          ),
          hintText: UiUtils.getTranslatedLabel(context, hintTextKey),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
