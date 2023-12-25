// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohandrayhan/Utils/constant.dart';

import '../Utils/colors.dart';
import '../Utils/localization_services.dart';
import '../Utils/memory.dart';

class CustomInputField extends StatelessWidget {
  CustomInputField(
      {Key? key,
        required this.labelText,
        this.icon,
        this.onchange,
        this.controller,
        this.keyboardType,
        this.validator,
        this.isAutoValidate = true,
        this.onFieldSubmitted,
        this.onSaved,
        this.validated,
        this.obsecure = false,
        this.focusNode,
        this.textInputAction,
        required this.hasGreenBorder,
        required this.hasIntialValue,
        this.suffixText = " ",
        this.textAligning = TextAlign.right, this.prefixText = const SizedBox()})
      : super(key: key);
  final String labelText;
  final icon;
  var  validated;
  final onchange;
  final TextEditingController? controller;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final bool isAutoValidate;
  final TextInputType? keyboardType;
  final bool obsecure;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final bool hasGreenBorder;
  final bool hasIntialValue;
  final String? suffixText;
  final  Widget prefixText;
  final TextAlign textAligning;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return hasIntialValue?TextFormField(

      textAlign: textAligning,
      enableSuggestions: false,
      autocorrect: false,
      style:  TextStyle(
          fontSize: 15.0,
          fontFamily: fontFamilyName,
          color: hasGreenBorder?kGreenColor:kDarkBlueColor,
      ),
      focusNode: focusNode,
      keyboardType: keyboardType,
      cursorColor: hasGreenBorder?kGreenColor:kDarkBlueColor,
      obscureText: obsecure,
      decoration: InputDecoration(
        contentPadding: Get.find<StorageService>().activeLocale == SupportedLocales.english?const EdgeInsets.only(left: 10):const EdgeInsets.only(right: 10),
        helperText: "",
        fillColor: kGreenColor,
        filled: false,

        hintText: labelText,
        hintStyle:  const TextStyle(
          fontSize: 15.0,
          fontFamily: fontFamilyName,
          color: kDarkBlueColor,
        ),
        suffixIcon: icon,
        suffixText: suffixText,
        prefix: prefixText,
        suffixStyle: const TextStyle(
        fontSize: 15.0,
        fontFamily: fontFamilyName,
        color: kDarkBlueColor,
      ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(4)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(4)),
        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: hasGreenBorder?kGreenColor:kDarkBlueColor,),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide:   BorderSide(color: hasGreenBorder?kGreenColor:kDarkBlueColor,width: 3.0),
            borderRadius: BorderRadius.circular(4)),
      ),
      onChanged: onchange,
      controller: controller,
      validator: validator,
      textInputAction: textInputAction,

      autovalidateMode: isAutoValidate
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      onSaved: onSaved,
      onFieldSubmitted: onFieldSubmitted,
    ):TextFormField(

      enableSuggestions: false,
      autocorrect: false,

      style:  TextStyle(
        fontSize: 15.0,
        fontFamily: fontFamilyName,
        color: hasGreenBorder?kGreenColor:kDarkBlueColor,
      ),
      focusNode: focusNode,
      keyboardType: keyboardType,
      cursorColor: hasGreenBorder?kGreenColor:kDarkBlueColor,
      obscureText: obsecure,
      decoration: InputDecoration(
        labelText: labelText,
        contentPadding: const EdgeInsets.only(right: 10),
        helperText: "",
        fillColor: kGreenColor,
        filled: false,

        labelStyle: theme.textTheme.bodySmall!.apply(color: theme.hintColor),
        suffixIcon: icon,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(4)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(4)),
        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: hasGreenBorder?kGreenColor:kDarkBlueColor,),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide:   BorderSide(color: hasGreenBorder?kGreenColor:kDarkBlueColor,width: 3.0),
            borderRadius: BorderRadius.circular(4)),
      ),
      onChanged: onchange,
      controller: controller,
      validator: validator,
      textInputAction: textInputAction,

      autovalidateMode: isAutoValidate
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      onSaved: onSaved,
      onFieldSubmitted: onFieldSubmitted,
    );
  }
}
