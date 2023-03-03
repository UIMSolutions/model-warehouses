module models.warehouses.entities.containers.type;

@safe:
import models.warehouses;

class DWMSContainerTypeEntity : DEntity {
  mixin(EntityThis!("WMSContainerTypeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "typeId": UUIDAttribute, //
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
        "isContainerVolumeFlexible": BooleanAttribute, //
        "containerTypeUnitSymbol": StringAttribute, //
        "firstContainerAttributeValue": StringAttribute, //
        "secondContainerAttributeValue": StringAttribute, //
        "thirdContainerAttributeValue": StringAttribute, //
        "fourthContainerAttributeValue": StringAttribute, //
        "relationship_UnitOfMeasureRelationshipId": UUIDAttribute, //
        "relationship_FirstContainerAttributeRelationshipId": UUIDAttribute, //
        "relationship_SecondContainerAttributeRelationshipId": UUIDAttribute, //
        "relationship_ThirdContainerAttributeRelationshipId": UUIDAttribute, //
        "relationship_FourthContainerAttributeRelationshipId": UUIDAttribute, //
        "backingTable_WHSContainerTypeRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("warehouse_containers.types");
  }
}
mixin(EntityCalls!("WMSContainerTypeEntity"));

version(test_model_warehouse) { unittest {
    assert(WMSContainerTypeEntity);
  
    auto entity = WMSContainerTypeEntity;

    // TODO - MOre tests
  }
}