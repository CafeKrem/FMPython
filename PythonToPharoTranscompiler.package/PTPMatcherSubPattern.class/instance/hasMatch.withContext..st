private-running
hasMatch: aValue withContext: aContext

	^ subPatterns allSatisfy: [ :pattern |
		"use hasMatch instead ?" 
		  pattern match: aValue withContext: aContext ]