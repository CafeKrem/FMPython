visiting
visitFileInput: aFileInput
	rootModel := PythonRootNode new.
	aFileInput statements
		do:
			[ :eachStatement | rootModel addStatement: (eachStatement acceptVisitor: self) ].
	^ rootModel