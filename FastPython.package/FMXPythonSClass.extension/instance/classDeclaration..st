*FastPython-accessing
classDeclaration: anObject

	<generated>
	(self attributeAt: #classDeclaration ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self classDeclaration.
		self attributeAt: #classDeclaration put: anObject.
		otherSide sclass: nil ]
	ifNotNil: [ 
		self attributeAt: #classDeclaration put: anObject.
		anObject sclass: self ]