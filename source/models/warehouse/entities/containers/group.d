module models.warehouses.entities.containers.group;

@safe:
import models.warehouses;

class DWMSContainerGroupEntity : DOOPEntity {
  mixin(EntityThis!("WMSContainerGroupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "containerGroupDescription": StringAttribute, //
        "containerGroupId": UUIDAttribute, //
        "backingTable_WHSContainerGroupRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("warehouse_containers.groups");
  }
}
mixin(EntityCalls!("WMSContainerGroupEntity"));

version(test_model_warehouse) {
  unittest {
    assert(WMSContainerGroupEntity);
  
    auto entity = WMSContainerGroupEntity;
  }
}