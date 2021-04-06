visit
visitClassdef: aPyClassdefNode
	^FastPythonClassDeclaration new
		name: aPyClassdefNode cname;
		body: (aPyClassdefNode statements
			collect: [ :each | each acceptVisitor: self ]);
		addSuperClass: (FastPythonClassDeclaration new name: #Object);
		scope: (FMXPythonScope new)
		yourself
		