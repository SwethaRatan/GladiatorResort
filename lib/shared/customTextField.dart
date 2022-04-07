import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

class CustomTextField extends TextFormField {
  final TextEditingController? controller;
  final void Function()? onTap;
  final List<TextInputFormatter>? formatters;
  final bool? isPassword;
  final bool? readonly;
  final String? hint;
  final int? maxCount;
  final String? label;
  final TextInputType? keyboardType;
  final String? Function(String?)? validateWith;
  final int? maxLines;
  final TextAlign? align;
  final bool? autoFocus;
  final FocusNode? focusNode;
  final InputDecoration? decoration;
  final Function(String?)? onSaved;
  final TextStyle? style;
  final TextCapitalization? textCapitalization;
  final Icon? icon;
  final Function(String?)? onClick;

  CustomTextField({
    this.textCapitalization,
    this.maxLines,
    this.formatters,
    this.onTap,
    required this.controller,
    this.validateWith,
    this.readonly,
    this.onClick,
    this.isPassword,
    this.hint,
    this.maxCount,
    this.label,
    this.keyboardType,
    this.align,
    this.autoFocus,
    this.focusNode,
    this.decoration,
    this.onSaved,
    this.style,
    this.icon,
    Key? key,
  }) : super(
          onTap: onTap,
          key: key,
          inputFormatters: formatters,
          textCapitalization: TextCapitalization.none,
          controller: controller,
          obscureText: isPassword ?? false,
          maxLength: maxCount,
          maxLines: maxLines,
          cursorColor: Colors.white, //AppColors.kPrimaryColor,
          onChanged: onClick,
          validator: validateWith,
          keyboardType: keyboardType,
          textAlign: TextAlign.start,
          focusNode: focusNode,
          textInputAction: TextInputAction.next,
          onEditingComplete: () {
            debugPrint("OnEditingComplete is called");
          },
          onFieldSubmitted: (arg) {
            debugPrint("onFieldSubmitted is called: " + arg);
          },
          onSaved: (arg) => onSaved!(arg),
          readOnly: readonly!,
          decoration: InputDecoration(
            fillColor: Colors.white,
            errorStyle: TextStyle(fontSize: 9, height: 0.3),
            contentPadding:
                new EdgeInsets.symmetric(vertical: 8.0, horizontal: 14.0),
            suffixIcon: icon,
            hintText: hint,
            labelText: label,
            counterText: " ",
            hintStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
            focusedBorder: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(12.0),
              borderSide: BorderSide(
                color: Colors.white, // AppColors.kPrimaryColor,
                width: 1.0,
                style: BorderStyle.solid,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(12.0),
              borderSide: BorderSide(
                color: Colors.black.withOpacity(0.5),
                width: 1.0,
                style: BorderStyle.solid,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(12.0),
              borderSide: BorderSide(
                color: Colors.black.withOpacity(0.4),
                width: 1.0,
                style: BorderStyle.solid,
              ),
            ),
          ),
        );
}

class PasswordField extends StatefulWidget {
  final TextStyle? style;
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? Function(String?)? validateWith;
  final Function(String)? onSaved;
  final ValueChanged<String>? onFieldSubmitted;
  const PasswordField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.onFieldSubmitted,
    this.controller,
    required this.validateWith,
    this.style,
  });

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        cursorColor: Colors.orange,
        controller: widget.controller,
        obscureText: _obscureText,
        onSaved: (arg) => widget.onSaved,
        validator: widget.validateWith,
        onFieldSubmitted: (arg) {
          debugPrint("onFieldSubmited is called: " + arg);
        },
        decoration: InputDecoration(
          contentPadding:
              new EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
          focusedBorder: OutlineInputBorder(
            borderRadius: new BorderRadius.circular(12.0),
            borderSide: BorderSide(
              color: Colors.white, //AppColors.kPrimaryColor,
              width: 1.0,
              style: BorderStyle.solid,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: new BorderRadius.circular(12.0),
            borderSide: BorderSide(
              color: Colors.black.withOpacity(0.5),
              width: 1.0,
              style: BorderStyle.solid,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: new BorderRadius.circular(12.0),
            borderSide: BorderSide(
              color: Colors.black.withOpacity(0.4),
              width: 1.0,
              style: BorderStyle.solid,
            ),
          ),
          filled: true,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
          labelText: widget.labelText,
          helperText: widget.helperText,
          suffixIcon: GestureDetector(
            dragStartBehavior: DragStartBehavior.down,
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: Icon(
              !_obscureText ? Icons.visibility : Icons.visibility_off,
              semanticLabel: _obscureText ? 'show password' : 'hide password',
              color: Colors.black45,
            ),
          ),
        ),
      ),
    );
  }
}

enum CustomTextFieldValidator {
  username,
  email,
  password,
  phone,
}

class Validator {
  static String? phoneValidator(String? arg) {
    if (arg == null || arg.length == 0) {
      return "Please fill this";
    } else if (arg.length != 10) {
      return "Please enter your 10 digit mobile number";
    } else {
      return null;
    }
  }

  static String? emailValidator(String? arg) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(arg!))
      return 'Enter Valid Email';
    else
      return null;
  }

  static String? nameValidator(String? arg) {
    if (arg != null && arg.length > 2) {
      return null;
    } else if (arg == null) {
      return "Name cannot be blank!";
    } else if (arg.length < 2) {
      return "Name should have atleast 3 letters";
    } else {
      return "Please enter a proper name";
    }
  }

  static String? passWordValidator(String? arg) {
    if (arg == null || arg.length == 0) {
      return "Enter password";
    } else if (arg.length < 6) {
      return "Password too short";
    } else {
      return null;
    }
  }
}
