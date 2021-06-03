visitor
visitExprStmt: aPyExprStmtNode
	self haltIf: [ aPyExprStmtNode tests size ~= 1 ].
	^ FASTExpressionStatement new
		expression: (aPyExprStmtNode tests first acceptVisitor: self);
		yourself