private-running
templateMatch: aValue withContext: aContext
	^ subPatterns
		allSatisfy: [ :pattern | pattern match: aValue withContext: aContext ]