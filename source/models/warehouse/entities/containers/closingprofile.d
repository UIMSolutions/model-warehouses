module models.warehouses.entities.containers.closingprofile;

@safe:
import models.warehouses;

class DContainerClosingProfileEntity : DOOPEntity {
  mixin(EntityThis!("ContainerClosingProfileEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "profileId": StringAttribute, //
        "finalShipmentWarehouseLocationId": StringAttribute, //
        "profileDescription": StringAttribute, //
        "profileWarehouseId": StringAttribute, //
        "processAt": StringAttribute, //
        "isContainerContentPrintingEnabled": StringAttribute, //
        "isPackingSlipPrintingEnabled": StringAttribute, //
        "weightUnitSymbol": StringAttribute, //
        "containerClosingWorkCreationProcess": StringAttribute, //
        "manifestingShipmentPolicy": StringAttribute, //
        "isContainerManifestedAtClosing": StringAttribute, //
        "manifestingContainerPolicy": StringAttribute, //
        "containerClosingAutoReleasePolicy": StringAttribute, //
        "packedContainerPickingWarehouseWorkTemplateId": StringAttribute, //
        "manifestRequirementsForContainerGroup": StringAttribute, //
        "packedContainerPickingWarehouseWorkTemplateWorkOrderType": StringAttribute, //
        "defaultOutboundSortingWarehouseLocationId": StringAttribute, //
        "printContainerShippingLabelRule": StringAttribute, //
        "containerShippingLabelPrinterName": StringAttribute, //
        "relationship_WarehouseRelationshipId": StringAttribute, //
        "relationship_FinalShipmentWarehouseLocationRelationshipId": StringAttribute, //
        "relationship_WeightUnitOfMeasureRelationshipId": StringAttribute, //
        "relationship_DefaultOutboundSortingWarehouseLocationRelationshipId": StringAttribute, //
        "backingTable_WHSCloseContainerProfileRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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