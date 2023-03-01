module models.warehouses.entities.containers.mixingconstraintbase;

@safe:
import models.warehouses;

class DWMSContainerMixingConstraintBaseEntity : DOOPEntity {
  mixin(EntityThis!("WMSContainerMixingConstraintBaseEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "constraintTableId": UUIDAttribute, //
        "constraintTableName": StringAttribute, //
        "containerBuildTemplateId": UUIDAttribute, //
        "constraintFieldId": UUIDAttribute, //
        "constraintFieldArrayIndex": StringAttribute, //
        "relationship_ContainerBuildTemplateV2RelationshipId": UUIDAttribute, //
        "backingTable_WHSContainerizationBreakRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("warehouse_containers.mixingconstraintbases");
  }
}
mixin(EntityCalls!("WMSContainerMixingConstraintBaseEntity"));

version(test_model_warehouse) { unittest {
    assert(WMSContainerMixingConstraintBaseEntity);
  
    auto entity = WMSContainerMixingConstraintBaseEntity;
  }
}