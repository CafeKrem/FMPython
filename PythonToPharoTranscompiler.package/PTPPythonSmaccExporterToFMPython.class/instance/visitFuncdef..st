visit
visitFuncdef: aPyFuncdefNode
	| parameters |
	parameters := aPyFuncdefNode parameters acceptVisitor: self.
	^ FastPythonFunctionDeclaration new
		parameters: parameters;
		body:
			(aPyFuncdefNode statements
				collect: [ :each | each acceptVisitor: self ]);
		sfunction: nil;
		name: aPyFuncdefNode fname value;
		scope:
			(FMXPythonScope new
				declarations:
					(parameters
						collect: [ :each | 
							FastPythonVarDeclaration new
								name: each name;
								addReference: each;
								yourself ]);
				yourself)