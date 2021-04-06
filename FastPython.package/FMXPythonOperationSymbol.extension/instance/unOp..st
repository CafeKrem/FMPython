*FastPython-accessing
unOp: anObject

	<generated>
	(self attributeAt: #unOp ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self unOp.
		self attributeAt: #unOp put: anObject.
		otherSide op: nil ]
	ifNotNil: [ 
		self attributeAt: #unOp put: anObject.
		anObject op: self ]