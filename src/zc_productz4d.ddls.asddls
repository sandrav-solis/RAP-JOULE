@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Semantickey: [ 'ProductID' ]
}
@AccessControl.authorizationCheck: #MANDATORY
define view entity ZC_PRODUCTZ4D
  as projection on ZR_PRODUCTZ4D
  association [1..1] to ZR_PRODUCTZ4D as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  ParentUUID,
  ProductID,
  ProductName,
  Description,
  @Semantics: {
    Amount.Currencycode: 'UnitPriceCurr'
  }
  UnitPrice,
  @Semantics: {
    Quantity.Unitofmeasure: 'StockQuantityUOM'
  }
  StockQuantity,
  Active,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  UnitPriceCurr,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'UnitOfMeasure', 
      Entity.Name: 'I_UnitOfMeasureStdVH', 
      Useforvalidation: true
    } ]
  }
  StockQuantityUOM,
  _SalesOrder : redirected to parent ZC_SALESORDERZ4D,
  _BaseEntity
}
