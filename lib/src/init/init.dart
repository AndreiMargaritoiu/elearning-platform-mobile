import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:http/http.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/data/auth_api.dart';
import 'package:elearning_platform_mobile/src/epics/app_epics.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/reducer/reducer.dart';
import 'package:elearning_platform_mobile/src/data/http_client_wrapper.dart';
import 'package:elearning_platform_mobile/src/data/mentoring_api.dart';
import 'package:elearning_platform_mobile/src/data/playlists_api.dart';
import 'package:elearning_platform_mobile/src/data/tracking_api.dart';
import 'package:elearning_platform_mobile/src/data/videos_api.dart';
import 'package:elearning_platform_mobile/src/data/inquiries_api.dart';
import 'package:elearning_platform_mobile/src/data/workshops_api.dart';

Future<Store<AppState>> init() async {
  await Firebase.initializeApp();

  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseStorage storage = FirebaseStorage.instance;
  final Client client = Client();

  final HttpClientWrapper clientWrapper = HttpClientWrapper(client: client);

  if (auth.currentUser != null) {
    final String authToken = await auth.currentUser.getIdToken();
    clientWrapper.setAuthToken(authToken);
  }

  final AuthApi authApi = AuthApi(
    auth: auth,
    firestore: firestore,
    storage: storage,
    google: GoogleSignIn(),
    clientWrapper: clientWrapper,
  );

  final VideosApi videosApi = VideosApi(
      firestore: firestore, storage: storage, clientWrapper: clientWrapper);

  final PlaylistsApi playlistsApi = PlaylistsApi(
      firestore: firestore, storage: storage, clientWrapper: clientWrapper);

  final MentoringApi mentoringApi =
      MentoringApi(clientWrapper);

  final TrackingApi trackingApi =
      TrackingApi(firestore: firestore, clientWrapper: clientWrapper);

  final WorkshopsApi workshopsApi =
      WorkshopsApi(firestore: firestore, clientWrapper: clientWrapper);

  final InquiriesApi inquiriesApi = InquiriesApi(clientWrapper);

  final AppEpics epic = AppEpics(
    authApi: authApi,
    videosApi: videosApi,
    playlistsApi: playlistsApi,
    mentoringApi: mentoringApi,
    trackingApi: trackingApi,
    workshopsApi: workshopsApi,
    inquiriesApi: inquiriesApi,
  );

  return Store<AppState>(
    reducer,
    initialState: AppState.initialState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.epics),
    ],
  )..dispatch(
      const InitializeApp(),
    );
}
