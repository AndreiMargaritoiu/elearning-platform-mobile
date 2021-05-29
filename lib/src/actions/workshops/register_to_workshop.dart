part of workshops_action;

@freezed
abstract class RegisterToWorkshop with _$RegisterToWorkshop implements AppAction {
  const factory RegisterToWorkshop(String workshopId) = RegisterToWorkshop$;

  const factory RegisterToWorkshop.successful(Workshop workshop) =
  RegisterToWorkshopSuccessful;

  @Implements(ErrorAction)
  const factory RegisterToWorkshop.error(Object error) = RegisterToWorkshopError;
}
