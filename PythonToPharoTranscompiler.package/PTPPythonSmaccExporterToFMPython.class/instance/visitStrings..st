visit
visitStrings: aPyStringsNode
	| tmpString |
	self haltIf: [ aPyStringsNode strings size ~= 1 ].
	tmpString := aPyStringsNode strings first value.
	aPyStringsNode attributes values
		do: [ :each | tmpString at: each put: Character space ].
	self haltIf: [ tmpString trim ~= 'klm' ].
	^ PythonString new
		value: tmpString trim;
		yourself