module models.warehouse.entities.containers.groupdetail;

@safe:
import models.warehouse;

class DWMSContainerGroupDetailEntity : DOOPEntity {
  mixin(EntityThis!("WMSContainerGroupDetailEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "containerTypeId": StringAttribute, //
        "containerUtilizationPercentage": StringAttribute, //
        "containerGroupId": StringAttribute, //
        "containerGroupDetailSequenceNumber": StringAttribute, //
        "relationship_ContainerGroupRelationshipId": StringAttribute, //
        "relationship_ContainerTypeRelationshipId": StringAttribute, //
        "backingTable_WHSContainerGroupLineRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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