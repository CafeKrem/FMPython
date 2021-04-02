tests
testForStatemenet
	| for |
	smaccPythonModel := self parsePythonString: self forStatementPython.
	fmPython := smaccPythonVisitor visit: smaccPythonModel.
	for := fmPython statements first.
	self assert: fmPython statements size equals: 1.
	self
		assert:
			((for scope declarations collect: [ :each | each name ])
				contains: [ :each | each = 'i' ]).
	self assert: for iterationVar name equals: 'i'.
	self assert: for iterable name equals: 'l'