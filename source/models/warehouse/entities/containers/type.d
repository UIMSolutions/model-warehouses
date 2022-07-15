module models.warehouses.entities.containers.type;

@safe:
import models.warehouses;

class DWMSContainerTypeEntity : DOOPEntity {
  mixin(EntityThis!("WMSContainerTypeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "typeId": StringAttribute, //
        "typeDescription": StringAttribute, //
        "maximumContainerizationHeight": StringAttribute, //
        "maximumContainerizationLength": StringAttribute, //
        "maximumContainerizationVolume": StringAttribute, //
        "maximumContainerWeight": StringAttribute, //
        "tareContainerWeight": StringAttribute, //
        "maximumContainerizationWidth": StringAttribute, //
        "containerHeight": StringAttribute, //
        "containerLength": StringAttribute, //
        "containerVolume": StringAttribute, //
        "containerWidth": StringAttribute, //
        "isContainerVolumeFlexible": StringAttribute, //
        "containerTypeUnitSymbol": StringAttribute, //
        "firstContainerAttributeValue": StringAttribute, //
        "secondContainerAttributeValue": StringAttribute, //
        "thirdContainerAttributeValue": StringAttribute, //
        "fourthContainerAttributeValue": StringAttribute, //
        "relationship_UnitOfMeasureRelationshipId": StringAttribute, //
        "relationship_FirstContainerAttributeRelationshipId": StringAttribute, //
        "relationship_SecondContainerAttributeRelationshipId": StringAttribute, //
        "relationship_ThirdContainerAttributeRelationshipId": StringAttribute, //
        "relationship_FourthContainerAttributeRelationshipId": StringAttribute, //
        "backingTable_WHSContainerTypeRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("warehouse_containers.types");
  }
}
mixin(EntityCalls!("WMSContainerTypeEntity"));

version(test_model_warehouse) {
  unittest {
    assert(WMSContainerTypeEntity);
  
    auto entity = WMSContainerTypeEntity;

    // TODO - MOre tests
  }
}