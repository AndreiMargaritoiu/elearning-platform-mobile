part of workshops_action;

@freezed
abstract class GetAllWorkshops with _$GetAllWorkshops implements AppAction {
  const factory GetAllWorkshops() = GetAllWorkshops$;

  const factory GetAllWorkshops.successful(List<Workshop> workshops) =
      GetAllWorkshopsSuccessful;

  @Implements(ErrorAction)
  const factory GetAllWorkshops.error(Object error) = GetAllWorkshopsError;
}
