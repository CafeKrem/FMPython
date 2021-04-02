tests
testClassDeclaration
	| classDeclaration fctA fctB |
	smaccPythonModel := self
		parsePythonString:
			'class A():
		def functionA(self, arg1 , arg2):
			return arg1 + arg2
		def functionB(arg1 , arg2):
			for i in arg2:
				arg1(i)'.
	
	fmPython := smaccPythonVisitor visit: smaccPythonModel.
	self assert: fmPython statements size equals: 1.
	classDeclaration := fmPython statements first.
	fctA := classDeclaration body first.
	fctB := classDeclaration body second.
	self assert: (classDeclaration isKindOf: PythonClassDeclaration).
	self assert: classDeclaration body size equals: 2.
	self assert: classDeclaration name value equals: 'A'.
	self assert: fctA name equals: 'functionA'.
	self
		assertCollection: (fctA parameters collect: [ :each | each name ])
		hasSameElements: {'self' . 'arg1' . 'arg2'}.
		
	self assert: fctB name equals: 'functionB'.
	self
		assertCollection: (fctB parameters collect: [ :each | each name ])
		hasSameElements: {'arg1' . 'arg2'}