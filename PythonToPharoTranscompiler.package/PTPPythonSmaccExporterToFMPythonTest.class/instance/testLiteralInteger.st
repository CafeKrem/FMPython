tests
testLiteralInteger
	smaccPythonModel := self parsePythonString: '100'.
	fmPython := smaccPythonVisitor visit: smaccPythonModel.
	self assert: fmPython statements size equals: 1.
	self
		assert: (fmPython statements first isKindOf: PythonExpressionStatement).
	self assert: (fmPython statements first expr isKindOf: PythonInteger).
	self assert: fmPython statements first expr value equals: 100