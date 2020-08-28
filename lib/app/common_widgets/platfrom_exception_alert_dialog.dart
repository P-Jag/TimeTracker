import 'package:meta/meta.dart';
import 'package:flutter/services.dart';
import 'package:time_tracker/app/common_widgets/platform_alert_dialog.dart';

class PlatformExceptionAlertDialog extends PlatformAlertDialog {
  PlatformExceptionAlertDialog({
    @required String title,
    @required PlatformException exception,
  }) : super(
          title: title,
          content: _message(exception),
          defaultActionText: 'OK',
        );

  static String _message(PlatformException exception) {
    return _errors[exception.code] ?? exception.message;
  }

  static Map<String, String> _errors = {
    'ERROR_WEAK_PASSWORD': 'Your password is too weak to handle it',
    'ERROR_EMAIL_ALREADY_IN_USE': 'This email is already in use',
    'ERROR_INVALID_EMAIL':
        'It seems you type something else than email address',
    'ERROR_WRONG_PASSWORD': 'Must be a typo, try once again',
    'ERROR_USER_NOT_FOUND': 'User disappear or not exist',
    'ERROR_USER_DISABLED': 'You\'re disabled',
    'ERROR_TOO_MANY_REQUESTS': 'Give me some time. Don\'t be in such rush',
    'ERROR_OPERATION_NOT_ALLOWED': 'Something is really messed up',
  };
}
