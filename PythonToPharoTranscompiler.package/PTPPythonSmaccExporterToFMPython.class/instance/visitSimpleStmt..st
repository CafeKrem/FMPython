visitor
visitSimpleStmt: aPySimpleStmtNode
	self haltIf: [ aPySimpleStmtNode stmts size ~= 1].
	^ aPySimpleStmtNode stmts first acceptVisitor: self
		