@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@ObjectModel.semanticKey: [ 'ProductID' ]
define view entity ZR_PRODUCTZ4D
  as select from ZPRODUCTZ4D as Product
  association to parent ZR_SALESORDERZ4D as _SalesOrder on $projection.ParentUuid = _SalesOrder.Uuid
{
  key uuid as UUID,
  parent_uuid as ParentUUID,
  product_id as ProductID,
  product_name as ProductName,
  description as Description,
  @Semantics.amount.currencyCode: 'UnitPriceCurr'
  unit_price as UnitPrice,
  @Semantics.quantity.unitOfMeasure: 'StockQuantityUOM'
  stock_quantity as StockQuantity,
  active as Active,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_CurrencyStdVH', 
    entity.element: 'Currency', 
    useForValidation: true
  } ]
  unit_price_curr as UnitPriceCurr,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_UnitOfMeasureStdVH', 
    entity.element: 'UnitOfMeasure', 
    useForValidation: true
  } ]
  stock_quantity_uom as StockQuantityUOM,
  _SalesOrder
}
