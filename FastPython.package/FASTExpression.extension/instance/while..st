*FastPython-accessing
while: anObject

	<generated>
	(self attributeAt: #while ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self while.
		self attributeAt: #while put: anObject.
		otherSide cond: nil ]
	ifNotNil: [ 
		self attributeAt: #while put: anObject.
		anObject cond: self ]