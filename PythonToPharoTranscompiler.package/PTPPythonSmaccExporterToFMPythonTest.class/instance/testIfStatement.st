tests
testIfStatement
	| if |
	self skip.
	self flag: 'Modifier la gramaire'.
	smaccPythonModel := self parsePythonString: self ifStatementPython.
	fmPython := smaccPythonVisitor visit: smaccPythonModel.
	if := fmPython statements first.
	self assert: fmPython statements size equals: 1.
	self
		assert: if cond
		equals:
			(PythonVarRef new
				name: 'a';
				yourself).
	self assert: if body size equals: 1.
	self assert: if body first expr equals: 100.
	self assert: if elif isNotNil.
	self
		assert: if elif cond
		equals:
			(PythonVarRef new
				name: 'b';
				yourself).
	self assert: if else first expr equals: 'else'