class ValidatorHelper {
  // Validates if the field is not empty
  static String? validateRequired(String? value, {String? fieldName}) {
    if (value == null || value.trim().isEmpty) {
      return fieldName != null 
          ? 'الرجاء إدخال $fieldName'
          : 'هذا الحقل مطلوب';
    }
    return null;
  }

  // Email validation
  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'الرجاء إدخال البريد الإلكتروني';
    }

    final emailRegex = RegExp(
      r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
    );

    if (!emailRegex.hasMatch(value)) {
      return 'بريد إلكتروني غير صالح';
    }
    return null;
  }

  // Password validation (minimum 6 characters)
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'الرجاء إدخال كلمة المرور';
    }
    if (value.length < 6) {
      return 'كلمة المرور يجب أن تكون على الأقل 6 أحرف';
    }
    return null;
  }

  // Phone number validation (basic international format)
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'الرجاء إدخال رقم الهاتف';
    }

    final phoneRegex = RegExp(r'^\+?[0-9]{8,15}$');

    if (!phoneRegex.hasMatch(value)) {
      return 'رقم هاتف غير صالح';
    }
    return null;
  }

  // Confirm password validation
  static String? validateConfirmPassword(
    String? value, 
    String originalPassword,
  ) {
    if (value == null || value.isEmpty) {
      return 'الرجاء تأكيد كلمة المرور';
    }
    if (value != originalPassword) {
      return 'كلمة المرور غير متطابقة';
    }
    return null;
  }

  // Numeric input validation
  static String? validateNumeric(String? value, {String? fieldName}) {
    if (value == null || value.trim().isEmpty) {
      return fieldName != null 
          ? 'الرجاء إدخال $fieldName'
          : 'هذا الحقل مطلوب';
    }

    if (double.tryParse(value) == null) {
      return fieldName != null
          ? '$fieldName يجب أن يكون رقماً'
          : 'القيمة يجب أن تكون رقماً';
    }
    return null;
  }

  // Minimum length validation
  static String? validateMinLength(
    String? value, 
    int minLength, 
    {String? fieldName}
  ) {
    if (value == null || value.trim().isEmpty) {
      return fieldName != null 
          ? 'الرجاء إدخال $fieldName'
          : 'هذا الحقل مطلوب';
    }

    if (value.length < minLength) {
      return fieldName != null
          ? '$fieldName يجب أن يكون على الأقل $minLength أحرف'
          : 'يجب أن يحتوي على الأقل $minLength أحرف';
    }
    return null;
  }
}