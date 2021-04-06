accessing
sclass: anObject

	<generated>
	(self attributeAt: #sclass ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self sclass.
		self attributeAt: #sclass put: anObject.
		otherSide classDeclaration: nil ]
	ifNotNil: [ 
		self attributeAt: #sclass put: anObject.
		anObject classDeclaration: self ]