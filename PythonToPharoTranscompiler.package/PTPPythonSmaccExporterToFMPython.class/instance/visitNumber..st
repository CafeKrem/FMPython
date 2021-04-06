visit
visitNumber: aPyNumberNode
	^ FastPythonInteger new
		value: aPyNumberNode numberToken value asInteger;
		yourself