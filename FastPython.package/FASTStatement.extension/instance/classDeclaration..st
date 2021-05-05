*FastPython-accessing
classDeclaration: anObject

	<generated>
	self attributeAt: #classDeclaration put: (FMMultivalueLink on: self update: #body from: self classDeclaration to: anObject).