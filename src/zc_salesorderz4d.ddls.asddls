@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZSalesOrderZ4D', 
  Semantickey: [ 'SalesOrderID' ]
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_SALESORDERZ4D
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_SALESORDERZ4D
  association [1..1] to ZR_SALESORDERZ4D as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  SalesOrderID,
  ProductID,
  OrderDate,
  @Semantics: {
    Quantity.Unitofmeasure: 'QuantityUOM'
  }
  Quantity,
  @Semantics: {
    Amount.Currencycode: 'UnitPriceCurr'
  }
  UnitPrice,
  @Semantics: {
    Amount.Currencycode: 'UnitPriceCurr'
  }
  TotalAmount,
  Status,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'UnitOfMeasure', 
      Entity.Name: 'I_UnitOfMeasureStdVH', 
      Useforvalidation: true
    } ]
  }
  QuantityUOM,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  UnitPriceCurr,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _Product : redirected to composition child ZC_PRODUCTZ4D,
  _BaseEntity
}
