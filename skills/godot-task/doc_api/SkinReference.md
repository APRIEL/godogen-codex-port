## SkinReference <- RefCounted

An internal object containing a mapping from a Skin used within the context of a particular MeshInstance3D to refer to the skeleton's RID in the RenderingServer. See also `MeshInstance3D.get_skin_reference` and `RenderingServer.instance_attach_skeleton`. Note that despite the similar naming, the skeleton RID used in the RenderingServer does not have a direct one-to-one correspondence to a Skeleton3D node. In particular, a Skeleton3D node with no MeshInstance3D children may be unknown to the RenderingServer. On the other hand, a Skeleton3D with multiple MeshInstance3D nodes which each have different `MeshInstance3D.skin` objects may have multiple SkinReference instances (and hence, multiple skeleton RIDs).

**Methods:**
- get_skeleton() -> RID
- get_skin() -> Skin

