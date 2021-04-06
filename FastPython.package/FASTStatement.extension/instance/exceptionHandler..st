*FastPython-accessing
exceptionHandler: anObject

	<generated>
	self attributeAt: #exceptionHandler put: (FMMultivalueLink on: self update: #exceptionActions from: self exceptionHandler to: anObject).