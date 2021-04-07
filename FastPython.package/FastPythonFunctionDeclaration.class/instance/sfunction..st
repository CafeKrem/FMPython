accessing
sFunction: anObject

	<generated>
	(self attributeAt: #sFunction ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self sFunction.
		self attributeAt: #sFunction put: anObject.
		otherSide declaration: nil ]
	ifNotNil: [ 
		self attributeAt: #sFunction put: anObject.
		anObject declaration: self ]