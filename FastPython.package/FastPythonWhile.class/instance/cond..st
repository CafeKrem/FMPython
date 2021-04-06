accessing
cond: anObject

	<generated>
	(self attributeAt: #cond ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self cond.
		self attributeAt: #cond put: anObject.
		otherSide while: nil ]
	ifNotNil: [ 
		self attributeAt: #cond put: anObject.
		anObject while: self ]