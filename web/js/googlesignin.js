function firebaseInitializeApp(apiKey, authDomain, databaseURL, storageBucket, messagingSenderId)
{
	firebase.initializeApp({
		apiKey: apiKey,                       // Auth / General Use
		authDomain: authDomain,               // Auth with popup/redirect
		databaseURL: databaseURL,             // Realtime Database
		storageBucket: storageBucket,         // Storage
		messagingSenderId: messagingSenderId, // Cloud Messaging
	});
	return firebase.app().name;
}
async function firebaseGoogleSignIn()
{
	// https://firebase.google.com/docs/reference/js/firebase.auth.GoogleAuthProvider
	// Using a popup.
	let provider = new firebase.auth.GoogleAuthProvider();
	provider.addScope('profile');
	provider.addScope('email');
	return await firebase.auth().signInWithPopup(provider).then(function (result) {
		// This gives you a Google Access Token.
		// The signed-in user info.
		//let user = result.user;
		return result.credential.accessToken;
	});
}