

part of auth_actions;

@freezed
abstract class GetUser with _$GetUser implements AppAction {
  const factory GetUser(String uid) = GetUser$;

  const factory GetUser.successful(AppUser user) = GetUserSuccessful;

  @Implements(ErrorAction)
  const factory GetUser.error(Object error) = GetUserError;
}
