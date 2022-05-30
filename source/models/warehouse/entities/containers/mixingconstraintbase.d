module models.warehouse.entities.containers.mixingconstraintbase;

@safe:
import models.warehouse;

class DWMSContainerMixingConstraintBaseEntity : DOOPEntity {
  mixin(EntityThis!("WMSContainerMixingConstraintBaseEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "constraintTableId": StringAttribute, //
        "constraintTableName": StringAttribute, //
        "containerBuildTemplateId": StringAttribute, //
        "constraintFieldId": StringAttribute, //
        "constraintFieldArrayIndex": StringAttribute, //
        "relationship_ContainerBuildTemplateV2RelationshipId": StringAttribute, //
        "backingTable_WHSContainerizationBreakRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("warehouse_containers.mixingconstraintbases");
  }
}
mixin(EntityCalls!("WMSContainerMixingConstraintBaseEntity"));

version(test_model_warehouse) {
  unittest {
    assert(WMSContainerMixingConstraintBaseEntity);
  
    auto entity = WMSContainerMixingConstraintBaseEntity;
  }
}