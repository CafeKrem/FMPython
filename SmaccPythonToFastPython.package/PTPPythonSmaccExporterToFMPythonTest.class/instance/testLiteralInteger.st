tests
testLiteralInteger
	smaccPythonModel := self parsePythonString: '100'.
	fmPython := smaccPythonVisitor visit: smaccPythonModel.
	self assert: fmPython statements size equals: 1.
	self assert: fmPython statements first expression value equals: 100