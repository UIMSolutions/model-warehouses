module models.warehouses.entities.containers.buildtemplate;

@safe:
import models.warehouses;

class DWMSContainerBuildTemplate : DOOPEntity {
  mixin(EntityThis!("WMSContainerBuildTemplate"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "isSplitPickingAllowed": StringAttribute, //
        "containerGroupId": UUIDAttribute, //
        "containerTemplateId": UUIDAttribute, //
        "containerTemplateQuery": StringAttribute, //
        "containerTemplateQueryType": StringAttribute, //
        "containerPackingStrategy": StringAttribute, //
        "isContainerPackedByDirectiveUnit": StringAttribute, //
        "containerTemplateSequenceNumber": StringAttribute, //
        "waveStepCode": StringAttribute, //
        "relationship_ContainerGroupRelationshipId": UUIDAttribute, //
        "backingTable_WHSContainerizationTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("warehouse_containers.buildtemplates");
  }
}
mixin(EntityCalls!("WMSContainerBuildTemplate"));

version(test_model_warehouse) {
  unittest {
    assert(WMSContainerBuildTemplate);
  
    auto entity = WMSContainerBuildTemplate;
  }
}