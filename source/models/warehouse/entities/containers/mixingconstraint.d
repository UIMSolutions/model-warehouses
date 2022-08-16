module models.warehouses.entities.containers.mixingconstraint;

@safe:
import models.warehouses;

class DWMSContainerMixingConstraintEntity : DOOPEntity {
  mixin(EntityThis!("WMSContainerMixingConstraintEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "constraintFieldName": StringAttribute, //
        "constraintTableId": UUIDAttribute, //
        "constraintTableName": StringAttribute, //
        "containerBuildTemplateId": UUIDAttribute, //
        "backingTable_WHSContainerMixingConstraintBaseEntityRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("warehouse_containers.mixingconstraints");
  }
}
mixin(EntityCalls!("WMSContainerMixingConstraintEntity"));

version(test_model_warehouse) {
  unittest {
    assert(WMSContainerMixingConstraintEntity);
  
    auto entity = WMSContainerMixingConstraintEntity;
  }
}