accessing
op: anObject

	<generated>
	(self attributeAt: #op ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self op.
		self attributeAt: #op put: anObject.
		otherSide unOp: nil ]
	ifNotNil: [ 
		self attributeAt: #op put: anObject.
		anObject unOp: self ]