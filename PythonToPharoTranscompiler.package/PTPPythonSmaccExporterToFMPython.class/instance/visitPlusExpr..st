visit
visitPlusExpr: aPyPlusExprNode
	^ PythonBinOp new
		left: (aPyPlusExprNode one acceptVisitor: self);
		right: (aPyPlusExprNode two acceptVisitor: self);
		op: (FMPythonFactory operationSymbol: aPyPlusExprNode plusToken value);
		yourself