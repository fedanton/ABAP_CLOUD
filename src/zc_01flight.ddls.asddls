@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_01FLIGHT
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_01FLIGHT
{
  key CarrierId,
  key ConnectionId,
  key FlightDate,
  Price,
  @Semantics.currencyCode: true
  CurrencyCode,
  PlaneTypeId,
  SeatsMax,
  SeatsOccupied,
  LocalLastChanged,
  LastChanged,
  CreatedBy,
  ChangedBy
  
}
