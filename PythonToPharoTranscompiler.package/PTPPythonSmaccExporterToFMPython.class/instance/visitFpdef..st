visit
visitFpdef: aPyFpdefNode
	^ FastPythonVarRef new
		name: aPyFpdefNode nameToken value;
		yourself