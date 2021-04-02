visit
visitClassdef: aPyClassdefNode
	^PythonClassDeclaration new
		name: aPyClassdefNode cname;
		body: (aPyClassdefNode statements
			collect: [ :each | each acceptVisitor: self ]);
		addSuperClass: (PythonClassDeclaration new name: #Object);
		scope: (PythonScope new)
		yourself
		