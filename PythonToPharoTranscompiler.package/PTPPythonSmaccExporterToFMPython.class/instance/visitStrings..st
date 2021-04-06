visit
visitStrings: aPyStringsNode

	| tmpString |
	self haltIf: [ aPyStringsNode strings size ~= 1 ].
	tmpString := aPyStringsNode strings first value.
	^ FASTStringLiteral new
		  value: tmpString allButFirst allButLast;
		  yourself