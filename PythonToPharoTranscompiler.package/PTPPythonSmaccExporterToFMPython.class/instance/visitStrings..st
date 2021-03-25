visit
visitStrings: aPyStringsNode
	| tmpString |
	self haltIf: [ aPyStringsNode strings size ~= 1 ].
	tmpString := aPyStringsNode strings first value.
	^ PythonString new
		value: tmpString;
		yourself