module models.warehouse.entities.containers.closingprofile;

@safe:
import models.hcm;

class DWMSContainerClosingProfileEntity : DOOPEntity {
  mixin(EntityThis!("WMSContainerClosingProfileEntity"));

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
mixin(EntityCalls!("WMSContainerClosingProfileEntity"));

version(test_model_warehouse) {
  unittest {
    assert(WMSContainerClosingProfileEntity);
  
    auto entity = WMSContainerClosingProfileEntity;
  }
}