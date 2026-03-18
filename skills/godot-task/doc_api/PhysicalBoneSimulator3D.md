## PhysicalBoneSimulator3D <- SkeletonModifier3D

Node that can be the parent of PhysicalBone3D and can apply the simulation results to Skeleton3D.

**Methods:**
- is_simulating_physics() -> bool
- physical_bones_add_collision_exception(exception: RID)
- physical_bones_remove_collision_exception(exception: RID)
- physical_bones_start_simulation(bones: StringName[] = [])
- physical_bones_stop_simulation()

