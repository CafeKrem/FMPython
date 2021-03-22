visit
visitNumber: aPyNumberNode
	^ PythonInteger new
		value: aPyNumberNode numberToken value asInteger;
		yourself