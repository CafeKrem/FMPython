tests
testLiteralList
	smaccPythonModel := self parsePythonString: '[1 , 2 , 3 , 4]'.
	fmPython := smaccPythonVisitor visit: smaccPythonModel.
	self assert: fmPython statements size equals: 1.
	self
		assert: (fmPython statements first isKindOf: PythonExpressionStatement).
	self assert: (fmPython statements first expr isKindOf: PythonList).
	self
		assertCollection: (fmPython statements first expr value contents collect: #value)
		hasSameElements: {1 . 2 . 3 . 4}