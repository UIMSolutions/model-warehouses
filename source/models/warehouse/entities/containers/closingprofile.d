module models.warehouses.entities.containers.closingprofile;

@safe:
import models.warehouses;

class DContainerClosingProfileEntity : DOOPEntity {
  mixin(EntityThis!("ContainerClosingProfileEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "profileId": UUIDAttribute, //
        "finalShipmentWarehouseLocationId": UUIDAttribute, //
        "profileDescription": StringAttribute, //
        "profileWarehouseId": UUIDAttribute, //
        "processAt": StringAttribute, //
        "isContainerContentPrintingEnabled": BooleanAttribute, //
        "isPackingSlipPrintingEnabled": BooleanAttribute, //
        "weightUnitSymbol": StringAttribute, //
        "containerClosingWorkCreationProcess": StringAttribute, //
        "manifestingShipmentPolicy": StringAttribute, //
        "isContainerManifestedAtClosing": BooleanAttribute, //
        "manifestingContainerPolicy": StringAttribute, //
        "containerClosingAutoReleasePolicy": StringAttribute, //
        "packedContainerPickingWarehouseWorkTemplateId": UUIDAttribute, //
        "manifestRequirementsForContainerGroup": StringAttribute, //
        "packedContainerPickingWarehouseWorkTemplateWorkOrderType": StringAttribute, //
        "defaultOutboundSortingWarehouseLocationId": UUIDAttribute, //
        "printContainerShippingLabelRule": StringAttribute, //
        "containerShippingLabelPrinterName": StringAttribute, //
        "relationship_WarehouseRelationshipId": UUIDAttribute, //
        "relationship_FinalShipmentWarehouseLocationRelationshipId": UUIDAttribute, //
        "relationship_WeightUnitOfMeasureRelationshipId": UUIDAttribute, //
        "relationship_DefaultOutboundSortingWarehouseLocationRelationshipId": UUIDAttribute, //
        "backingTable_WHSCloseContainerProfileRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("warehouse_containers.closingprofiles");
  }
}
mixin(EntityCalls!("ContainerClosingProfileEntity"));

version(test_model_warehouse) {
  unittest {
    assert(ContainerClosingProfileEntity);
  
    auto entity = ContainerClosingProfileEntity;
  }
}