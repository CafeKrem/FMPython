definition
defineClasses

	super defineClasses.
	variableExpression := self remoteEntity: #VariableExpression withPrefix: #FAST.
	expression := self remoteEntity: #Expression withPrefix: #FAST.
	 statement := self remoteEntity: #Statement withPrefix: #FAST.
	scope := builder newClassNamed: #Scope.
	sPackage:= builder newClassNamed: #SPackage.
	sModule := builder newClassNamed: #SModule.
	operationSymbol := builder newClassNamed: #OperationSymbol.
	exception := builder newClassNamed: #Exception.
	parameter := builder newClassNamed: #Parameter.
	sFunction := builder newClassNamed: #SFunction.
	sClass := builder newClassNamed: #SClass.