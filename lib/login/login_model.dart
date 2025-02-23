import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for EmailSignupField widget.
  FocusNode? emailSignupFieldFocusNode;
  TextEditingController? emailSignupFieldTextController;
  String? Function(BuildContext, String?)?
      emailSignupFieldTextControllerValidator;
  // State field(s) for PhoneNumbField widget.
  FocusNode? phoneNumbFieldFocusNode;
  TextEditingController? phoneNumbFieldTextController;
  late bool phoneNumbFieldVisibility;
  String? Function(BuildContext, String?)?
      phoneNumbFieldTextControllerValidator;
  // State field(s) for PasswordSignupField widget.
  FocusNode? passwordSignupFieldFocusNode;
  TextEditingController? passwordSignupFieldTextController;
  late bool passwordSignupFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordSignupFieldTextControllerValidator;
  String? _passwordSignupFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for ConfirmPasswordSignupField widget.
  FocusNode? confirmPasswordSignupFieldFocusNode;
  TextEditingController? confirmPasswordSignupFieldTextController;
  late bool confirmPasswordSignupFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordSignupFieldTextControllerValidator;
  String? _confirmPasswordSignupFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for EmailLoginField widget.
  FocusNode? emailLoginFieldFocusNode;
  TextEditingController? emailLoginFieldTextController;
  String? Function(BuildContext, String?)?
      emailLoginFieldTextControllerValidator;
  // State field(s) for PasswordLoginField widget.
  FocusNode? passwordLoginFieldFocusNode;
  TextEditingController? passwordLoginFieldTextController;
  late bool passwordLoginFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordLoginFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    phoneNumbFieldVisibility = false;
    passwordSignupFieldVisibility = false;
    passwordSignupFieldTextControllerValidator =
        _passwordSignupFieldTextControllerValidator;
    confirmPasswordSignupFieldVisibility = false;
    confirmPasswordSignupFieldTextControllerValidator =
        _confirmPasswordSignupFieldTextControllerValidator;
    passwordLoginFieldVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailSignupFieldFocusNode?.dispose();
    emailSignupFieldTextController?.dispose();

    phoneNumbFieldFocusNode?.dispose();
    phoneNumbFieldTextController?.dispose();

    passwordSignupFieldFocusNode?.dispose();
    passwordSignupFieldTextController?.dispose();

    confirmPasswordSignupFieldFocusNode?.dispose();
    confirmPasswordSignupFieldTextController?.dispose();

    emailLoginFieldFocusNode?.dispose();
    emailLoginFieldTextController?.dispose();

    passwordLoginFieldFocusNode?.dispose();
    passwordLoginFieldTextController?.dispose();
  }
}
