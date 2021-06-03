tests
testLiteralString
	smaccPythonModel := self parsePythonString: '"klm"'.
	fmPython := smaccPythonVisitor visit: smaccPythonModel.
	self assert: fmPython statements size equals: 1.
	self assert: fmPython statements first expression  value equals: 'klm'.