@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZSalesOrderZ4D'
@EndUserText.label: '###GENERATED Core Data Service Entity'
@ObjectModel.semanticKey: [ 'SalesOrderID' ]
define root view entity ZR_SALESORDERZ4D
  as select from ZSALESORDERZ4D as SalesOrder
  composition [1..*] of ZR_PRODUCTZ4D as _Product
{
  key uuid as UUID,
  sales_order_id as SalesOrderID,
  product_id as ProductID,
  order_date as OrderDate,
  @Semantics.quantity.unitOfMeasure: 'QuantityUOM'
  quantity as Quantity,
  @Semantics.amount.currencyCode: 'UnitPriceCurr'
  unit_price as UnitPrice,
  @Semantics.amount.currencyCode: 'UnitPriceCurr'
  total_amount as TotalAmount,
  status as Status,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_UnitOfMeasureStdVH', 
    entity.element: 'UnitOfMeasure', 
    useForValidation: true
  } ]
  quantity_uom as QuantityUOM,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_CurrencyStdVH', 
    entity.element: 'Currency', 
    useForValidation: true
  } ]
  unit_price_curr as UnitPriceCurr,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  _Product
}
