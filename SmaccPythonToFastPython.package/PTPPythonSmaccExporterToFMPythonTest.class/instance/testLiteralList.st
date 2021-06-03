tests
testLiteralList
	smaccPythonModel := self parsePythonString: '[1 , 2 , 3 , 4]'.
	fmPython := smaccPythonVisitor visit: smaccPythonModel.
	self assert: fmPython statements size equals: 1.
	self
		assertCollection: (fmPython statements first expression contents collect: #value)
		hasSameElements: {1 . 2 . 3 . 4}