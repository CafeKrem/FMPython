accessing
match: aValue withContext: aContext 
	
	| matchedValue |
	matchedValue := value match: aValue withContext: aContext.
	aContext at: key put: matchedValue.
	self halt.