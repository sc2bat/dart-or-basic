class AuthState {
  static const authenticated = 1;
  static const unauthenticated = 2;
  static const unknown = 3;
}

void main() {
  int authState = AuthState.unknown;

  if (authState == AuthState.authenticated) {
    print('auth access');
  } else if (authState == AuthState.unauthenticated) {
    print('auth access');
  } else {
    print('auth access');
  }
}
