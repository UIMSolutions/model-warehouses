module models.warehouse.entities.containers.mixingconstraint;

@safe:
import models.warehouse;

class DWMSContainerMixingConstraintEntity : DOOPEntity {
  mixin(EntityThis!("WMSContainerMixingConstraintEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "constraintFieldName": StringAttribute, //
        "constraintTableId": StringAttribute, //
        "constraintTableName": StringAttribute, //
        "containerBuildTemplateId": StringAttribute, //
        "backingTable_WHSContainerMixingConstraintBaseEntityRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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