visit
visitFpdef: aPyFpdefNode
	^ PythonVarRef new
		name: aPyFpdefNode nameToken value;
		yourself