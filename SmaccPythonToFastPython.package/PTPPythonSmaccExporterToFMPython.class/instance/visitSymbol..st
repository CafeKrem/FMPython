visit
visitSymbol: aPySymbolNode
	^ FastPythonVarRef new
		name: aPySymbolNode nameToken value;
		yourself