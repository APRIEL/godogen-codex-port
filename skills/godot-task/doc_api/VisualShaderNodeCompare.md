## VisualShaderNodeCompare <- VisualShaderNode

Compares `a` and `b` of `type` by `function`. Returns a boolean scalar. Translates to `if` instruction in shader code.

**Props:**
- condition: int (VisualShaderNodeCompare.Condition) = 0
- function: int (VisualShaderNodeCompare.Function) = 0
- type: int (VisualShaderNodeCompare.ComparisonType) = 0

**Enums:**
**ComparisonType:** CTYPE_SCALAR=0, CTYPE_SCALAR_INT=1, CTYPE_SCALAR_UINT=2, CTYPE_VECTOR_2D=3, CTYPE_VECTOR_3D=4, CTYPE_VECTOR_4D=5, CTYPE_BOOLEAN=6, CTYPE_TRANSFORM=7, CTYPE_MAX=8
**Function:** FUNC_EQUAL=0, FUNC_NOT_EQUAL=1, FUNC_GREATER_THAN=2, FUNC_GREATER_THAN_EQUAL=3, FUNC_LESS_THAN=4, FUNC_LESS_THAN_EQUAL=5, FUNC_MAX=6
**Condition:** COND_ALL=0, COND_ANY=1, COND_MAX=2

