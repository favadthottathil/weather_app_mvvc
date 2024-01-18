class AppExceptions implements Exception {
  final String? _prefix;

  final String? _message;

  AppExceptions([this._message, this._prefix]);

  @override
  String toString() => '$_prefix$_message';
}

class InternetException extends AppExceptions {
  InternetException([String? message]) : super(message, 'Internet Error');
}

class RequestTimeOut extends AppExceptions {
  RequestTimeOut([String? message]) : super(message, 'Request TimeOut');
}

class ServerError extends AppExceptions {
  ServerError([String? message]) : super(message, 'Server Error');
}

class InvalidUrlException extends AppExceptions {
  InvalidUrlException([String? message]) : super(message, 'Url Not Valid');
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message]) : super(message,'Failed to fetch data From Server');
}
