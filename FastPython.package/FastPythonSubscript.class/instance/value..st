accessing
value: anObject

	<generated>
	(self attributeAt: #value ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self value.
		self attributeAt: #value put: anObject.
		otherSide subscript: nil ]
	ifNotNil: [ 
		self attributeAt: #value put: anObject.
		anObject subscript: self ]