module models.warehouse.entities.inbounds.loadpackingstructurecaseline;

@safe:
import models.warehouse;

class DWHSInboundLoadPackingStructureCaseLineEntity : DOOPEntity {
  mixin(EntityThis!("WHSInboundLoadPackingStructureCaseLineEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "inboundShipmentId": StringAttribute, //
        "packingStructureLicensePlateNumber": StringAttribute, //
        "description": StringAttribute, //
        "purchaseOrderNumber": StringAttribute, //
        "itemNumber": StringAttribute, //
        "quantity": StringAttribute, //
        "capturedWeight": StringAttribute, //
        "unitSymbol": StringAttribute, //
        "productColorId": StringAttribute, //
        "productSizeId": StringAttribute, //
        "productConfigurationId": StringAttribute, //
        "productStyleId": StringAttribute, //
        "productVersionId": StringAttribute, //
        "itemBatchNumber": StringAttribute, //
        "itemBatchExpirationDate": StringAttribute, //
        "itemSerialNumber": StringAttribute, //
        "purchaseOrderLineNumber": StringAttribute, //
        "relationship_LoadPackingStructureCaseRelationshipId": StringAttribute, //
        "backingTable_WHSASNItemRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("warehouse_inbounds.loadpackingstructurecaselines");
  }
}
mixin(EntityCalls!("WHSInboundLoadPackingStructureCaseLineEntity"));

version(test_model_warehouse) {
  unittest {
    assert(WHSInboundLoadPackingStructureCaseLineEntity);
  
    auto entity = WHSInboundLoadPackingStructureCaseLineEntity;
  }
}