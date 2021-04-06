accessing
conditional: anObject

	<generated>
	(self attributeAt: #conditional ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self conditional.
		self attributeAt: #conditional put: anObject.
		otherSide assert: nil ]
	ifNotNil: [ 
		self attributeAt: #conditional put: anObject.
		anObject assert: self ]