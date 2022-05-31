module models.warehouse.entities.inbounds.loadheader;

@safe:
import models.warehouse;

class DWMSInboundLoadHeaderEntity : DOOPEntity {
  mixin(EntityThis!("WMSInboundLoadHeaderEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "shippingCarrierCode": StringAttribute, // 
        "aactualGrossWeight": StringAttribute, // 
        "actualNetWeight": StringAttribute, // 
        "actualTareWeight": StringAttribute, // 
        "masterBillOfLadingId": StringAttribute, // 
        "transportationBookingNumber": StringAttribute, // 
        "brokerId": StringAttribute, // 
        "carNumber": StringAttribute, // 
        "shippingCarrierGroupId": StringAttribute, // 
        "shippingCarrierServiceId": StringAttribute, // 
        "estimatedArrivalDateTime": StringAttribute, // 
        "inspectionSealNumber": StringAttribute, // 
        "loadDepth": StringAttribute, // 
        "isLoadFloorStacked": StringAttribute, // 
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
        "carRegistrationStateId": StringAttribute, // 
        "loadId": StringAttribute, // 
        "shippingCarrierVendorAccountNumber": StringAttribute, // 
        "isLoadSplitShipConfirmAllowed": StringAttribute, // 
        "backingTable_WHSLoadTableRelationshipId": StringAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, // 
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