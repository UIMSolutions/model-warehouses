module models.warehouses.entities.inbounds.loadheader;

@safe:
import models.warehouses;

class DWMSInboundLoadHeaderEntity : DOOPEntity {
  mixin(EntityThis!("WMSInboundLoadHeaderEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "shippingCarrierCode": StringAttribute, // 
        "aactualGrossWeight": StringAttribute, // 
        "actualNetWeight": StringAttribute, // 
        "actualTareWeight": StringAttribute, // 
        "masterBillOfLadingId": UUIDAttribute, // 
        "transportationBookingNumber": StringAttribute, // 
        "brokerId": UUIDAttribute, // 
        "carNumber": StringAttribute, // 
        "shippingCarrierGroupId": UUIDAttribute, // 
        "shippingCarrierServiceId": UUIDAttribute, // 
        "estimatedArrivalDateTime": StringAttribute, // 
        "inspectionSealNumber": StringAttribute, // 
        "loadDepth": StringAttribute, // 
        "isLoadFloorStacked": BooleanAttribute, // 
        "loadHeight": StringAttribute, // 
        "loadExternalReferenceNumber": StringAttribute, // 
        "userDefinedField1": StringAttribute, // 
        "userDefinedField2": StringAttribute, // 
        "userDefinedField3": StringAttribute, // 
        "loadWidth": StringAttribute, // 
        "proNumber": StringAttribute, // 
        "sealNumber": StringAttribute, // 
        "tractorNumber": StringAttribute, // 
        "trailerNumber": StringAttribute, // 
        "vesselName": StringAttribute, // 
        "voyageNumber": StringAttribute, // 
        "carRegistrationStateId": UUIDAttribute, // 
        "loadId": UUIDAttribute, // 
        "shippingCarrierVendorAccountNumber": StringAttribute, // 
        "isLoadSplitShipConfirmAllowed": BooleanAttribute, // 
        "backingTable_WHSLoadTableRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("warehouse_inbounds.loadheaders");
  }
}
mixin(EntityCalls!("WMSInboundLoadHeaderEntity"));

version(test_model_warehouse) {
  unittest {
    assert(WMSInboundLoadHeaderEntity);
  
    auto entity = WMSInboundLoadHeaderEntity;
  }
}