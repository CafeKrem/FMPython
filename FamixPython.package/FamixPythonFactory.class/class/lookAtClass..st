as yet unclassified
lookAtClass: aClassName

	^ pythonClassPool at: aClassName ifAbsent: [ 
		  FMXPythonSClass new
			  name: aClassName;
			  yourself ]