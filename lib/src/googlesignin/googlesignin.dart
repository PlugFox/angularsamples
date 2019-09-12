@JS() // sets the context, in this case being `window`
library googlesignin.js; // required library declaration
//library main;

import 'package:js/js.dart'; // Pull in our dependency
import 'dart:async';

@JS()
class Promise<T> {
  external Promise(void executor(void resolve(T result), Function reject));
  external Promise then(void onFulfilled(T result), [Function onRejected]);
  /*
    ### To create a Promise from Future (to send it to JS world):
    ```
    return new Promise<MyType>(allowInterop((resolve, reject) {
      myFuture.then(resolve, onError: reject);
    }));
    ```

    ### To create a Future from Promise (gotten from JS world):
    ```
    final completer = new Completer<MyType>();
    myPromise.then(allowInterop(completer.complete),
        allowInterop(completer.completeError));
    return completer.future;
    ```
  */
}

@JS('firebaseInitializeApp')
external String _firebaseInitializeAppJS(String apiKey, String authDomain, String databaseURL, String storageBucket, String messagingSenderId);
String initialize(Map<String, String> options) =>
    _firebaseInitializeAppJS(
      options['apiKey'],
      options['authDomain'],
      options['databaseURL'],
      options['storageBucket'],
      options['messagingSenderId']
    );

@JS('firebaseGoogleSignIn')
external Promise<String> _firebaseGoogleSignInJS();
Future<String> auth() async {
  Promise<String> resultPromise = _firebaseGoogleSignInJS();
  final completer = Completer<String>();
  resultPromise.then(allowInterop(completer.complete),
      allowInterop(completer.completeError));
  return await completer.future;
}