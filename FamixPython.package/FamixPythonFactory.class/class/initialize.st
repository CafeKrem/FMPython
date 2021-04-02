class initialization
initialize

	operationSymbolPool := Dictionary new.
	pythonClassPool := Dictionary new.
	pythonClassPool at: #Object put: (FMXPythonSClass new
			 name: #Object;
			 yourself)