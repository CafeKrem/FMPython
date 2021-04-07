visit
visitFuncdef: aPyFuncdefNode

	| parameters declaration |
	parameters := aPyFuncdefNode parameters acceptVisitor: self.
	^ FastPythonFunctionDeclaration new
		  parameters: parameters;
		  body: (aPyFuncdefNode statements collect: [ :each | 
					   each acceptVisitor: self ]);
		  sfunction: nil;
		  name: aPyFuncdefNode fname value;
		  scope: (FMXPythonScope new
				   declarations: (parameters collect: [ :each | 
							    declaration := FastPythonVarDeclaration new
								                   name: each name;
								                   yourself.
							    each definition: declaration ]);
				   yourself)