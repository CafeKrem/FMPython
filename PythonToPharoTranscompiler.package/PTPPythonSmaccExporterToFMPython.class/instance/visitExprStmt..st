visitor
visitExprStmt: aPyExprStmtNode
	self haltIf: [ aPyExprStmtNode tests size ~= 1 ].
	^ PythonExpressionStatement new
		expr: (aPyExprStmtNode tests first acceptVisitor: self);
		yourself