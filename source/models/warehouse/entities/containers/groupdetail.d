module models.warehouses.entities.containers.groupdetail;

@safe:
import models.warehouses;

class DWMSContainerGroupDetailEntity : DOOPEntity {
  mixin(EntityThis!("WMSContainerGroupDetailEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "containerTypeId": UUIDAttribute, //
        "containerUtilizationPercentage": StringAttribute, //
        "containerGroupId": UUIDAttribute, //
        "containerGroupDetailSequenceNumber": StringAttribute, //
        "relationship_ContainerGroupRelationshipId": UUIDAttribute, //
        "relationship_ContainerTypeRelationshipId": UUIDAttribute, //
        "backingTable_WHSContainerGroupLineRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("warehouse_containers.groupdetails");
  }
}
mixin(EntityCalls!("WMSContainerGroupDetailEntity"));

version(test_model_warehouse) {
  unittest {
    assert(WMSContainerGroupDetailEntity);
  
    auto entity = WMSContainerGroupDetailEntity;
  }
}