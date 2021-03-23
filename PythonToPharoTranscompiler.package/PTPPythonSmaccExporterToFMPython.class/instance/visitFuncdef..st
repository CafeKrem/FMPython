visit
visitFuncdef: aPyFuncdefNode
	| parameters |
	parameters := aPyFuncdefNode parameters acceptVisitor: self.
	^ PythonFunctionDeclaration new
		parameters: parameters;
		body:
			(aPyFuncdefNode statements
				collect: [ :each | each acceptVisitor: self ]);
		sfunction: nil;
		name: aPyFuncdefNode fname value;
		scope:
			(PythonScope new
				declarations:
					(parameters
						collect: [ :each | 
							PythonVarDeclaration new
								name: each name;
								addReference: each;
								yourself ]);
				yourself)