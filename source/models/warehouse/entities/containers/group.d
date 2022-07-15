module models.warehouses.entities.containers.group;

@safe:
import models.warehouses;

class DWMSContainerGroupEntity : DOOPEntity {
  mixin(EntityThis!("WMSContainerGroupEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "containerGroupDescription": StringAttribute, //
        "containerGroupId": StringAttribute, //
        "backingTable_WHSContainerGroupRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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