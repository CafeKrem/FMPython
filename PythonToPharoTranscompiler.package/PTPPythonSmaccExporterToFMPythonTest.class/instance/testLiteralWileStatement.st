tests
testLiteralWileStatement
	| while |
	smaccPythonModel := self parsePythonString: self whileStatementPython.
	fmPython := smaccPythonVisitor visit: smaccPythonModel.
	while := fmPython statements first.
	self assert: while cond name equals: 'a'.
	self assert: while body size equals: 1