import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elearning_platform_mobile/src/models/auth/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

class AuthApi {
  const AuthApi({
    @required FirebaseAuth auth,
    @required FirebaseFirestore firestore,
  })  : assert(auth != null),
        assert(firestore != null),
        _auth = auth,
        _firestore = firestore;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  Future<AppUser> login(
      {@required String email, @required String password}) async {
    final UserCredential response = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    final User user = response.user;

    final DocumentSnapshot snapshot =
        await _firestore.doc('Users/${user.uid}').get();

    return AppUser.fromJson(snapshot.data());
  }

  Future<AppUser> signUp(
      {@required String email,
      @required String password,
      @required String username}) async {
    final UserCredential response = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    final User user = response.user;

    final AppUser appUser = AppUser((AppUserBuilder b) {
      b
        ..uid = user.uid
        ..email = user.email
        ..username = username;
    });

    await _firestore.doc('Users/${user.uid}').set(appUser.json);
    return appUser;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<void> resetPassword(String email) {
    return _auth.sendPasswordResetEmail(email: email);
  }
}
