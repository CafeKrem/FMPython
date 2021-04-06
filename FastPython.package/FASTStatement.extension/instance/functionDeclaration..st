*FastPython-accessing
functionDeclaration: anObject

	<generated>
	self attributeAt: #functionDeclaration put: (FMMultivalueLink on: self update: #body from: self functionDeclaration to: anObject).