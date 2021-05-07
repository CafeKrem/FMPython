private-running
hasMatch: aValue withContext: aContext

	^ subPatterns allSatisfy: [ :pattern |
		1 haltOnce."use hasMatch instead" 
		  pattern match: aValue withContext: aContext ]