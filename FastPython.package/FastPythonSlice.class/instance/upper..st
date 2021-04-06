accessing
upper: anObject

	<generated>
	(self attributeAt: #upper ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self upper.
		self attributeAt: #upper put: anObject.
		otherSide slice: nil ]
	ifNotNil: [ 
		self attributeAt: #upper put: anObject.
		anObject slice: self ]