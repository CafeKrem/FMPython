visit
visitPlusExpr: aPyPlusExprNode
	^ FastPythonBinOp new
		left: (aPyPlusExprNode one acceptVisitor: self);
		right: (aPyPlusExprNode two acceptVisitor: self);
		op: (FamixPythonFactory lookAtOperationSymbol: aPyPlusExprNode plusToken value);
		yourself