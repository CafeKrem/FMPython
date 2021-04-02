visit
visitSymbol: aPySymbolNode
	^ PythonVarRef new
		name: aPySymbolNode nameToken value;
		yourself