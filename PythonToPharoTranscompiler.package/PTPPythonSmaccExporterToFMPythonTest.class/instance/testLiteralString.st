tests
testLiteralString
	smaccPythonModel := self parsePythonString: '"klm"'.
	fmPython := smaccPythonVisitor visit: smaccPythonModel.
	self assert: fmPython statements size equals: 1.
	self
		assert: (fmPython statements first isKindOf: PythonExpressionStatement).
	self assert: (fmPython statements first expr isKindOf: PythonString).
	self skip
	self assert: fmPython statements first expr value equals: 'klm'.