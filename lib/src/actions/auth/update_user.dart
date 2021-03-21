part of auth_actions;

@freezed
abstract class UpdateUser with _$UpdateUser implements AppAction {
  const factory UpdateUser(String path, String uid) = UpdateUser$;

  const factory UpdateUser.successful(AppUser user) = UpdateUserSuccessful;

  @Implements(ErrorAction)
  const factory UpdateUser.error(Object error) = UpdateUserError;
}
