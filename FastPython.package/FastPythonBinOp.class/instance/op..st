accessing
op: anObject

	<generated>
	(self attributeAt: #op ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self op.
		self attributeAt: #op put: anObject.
		otherSide binOp: nil ]
	ifNotNil: [ 
		self attributeAt: #op put: anObject.
		anObject binOp: self ]