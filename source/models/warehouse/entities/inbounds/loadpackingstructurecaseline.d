module models.warehouses.entities.inbounds.loadpackingstructurecaseline;

@safe:
import models.warehouses;

class DWHSInboundLoadPackingStructureCaseLineEntity : DOOPEntity {
  mixin(EntityThis!("WHSInboundLoadPackingStructureCaseLineEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "inboundShipmentId": UUIDAttribute, //
        "packingStructureLicensePlateNumber": StringAttribute, //
        "description": StringAttribute, //
        "purchaseOrderNumber": StringAttribute, //
        "itemNumber": StringAttribute, //
        "quantity": StringAttribute, //
        "capturedWeight": StringAttribute, //
        "unitSymbol": StringAttribute, //
        "productColorId": UUIDAttribute, //
        "productSizeId": UUIDAttribute, //
        "productConfigurationId": UUIDAttribute, //
        "productStyleId": UUIDAttribute, //
        "productVersionId": UUIDAttribute, //
        "itemBatchNumber": StringAttribute, //
        "itemBatchExpirationDate": StringAttribute, //
        "itemSerialNumber": StringAttribute, //
        "purchaseOrderLineNumber": StringAttribute, //
        "relationship_LoadPackingStructureCaseRelationshipId": UUIDAttribute, //
        "backingTable_WHSASNItemRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("warehouse_inbounds.loadpackingstructurecaselines");
  }
}
mixin(EntityCalls!("WHSInboundLoadPackingStructureCaseLineEntity"));

version(test_model_warehouse) { unittest {
    assert(WHSInboundLoadPackingStructureCaseLineEntity);
  
    auto entity = WHSInboundLoadPackingStructureCaseLineEntity;
  }
}