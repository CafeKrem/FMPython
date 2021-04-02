definition
defineClasses

	super defineClasses.

	sPackage := builder newClassNamed: #SPackage.
	sModule := builder newClassNamed: #SModule.
	operationSymbol := builder newClassNamed: #OperationSymbol.
	exception := builder newClassNamed: #Exception.
	scope := builder newClassNamed: #Scope.
	parameter := builder newClassNamed: #Parameter.
	sFunction := builder newClassNamed: #SFunction.
	sClass := builder newClassNamed: #SClass.