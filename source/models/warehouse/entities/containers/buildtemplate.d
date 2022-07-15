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
        "containerGroupId": StringAttribute, //
        "containerTemplateId": StringAttribute, //
        "containerTemplateQuery": StringAttribute, //
        "containerTemplateQueryType": StringAttribute, //
        "containerPackingStrategy": StringAttribute, //
        "isContainerPackedByDirectiveUnit": StringAttribute, //
        "containerTemplateSequenceNumber": StringAttribute, //
        "waveStepCode": StringAttribute, //
        "relationship_ContainerGroupRelationshipId": StringAttribute, //
        "backingTable_WHSContainerizationTableRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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