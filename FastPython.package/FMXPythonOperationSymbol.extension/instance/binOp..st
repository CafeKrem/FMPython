*FastPython-accessing
binOp: anObject

	<generated>
	(self attributeAt: #binOp ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self binOp.
		self attributeAt: #binOp put: anObject.
		otherSide op: nil ]
	ifNotNil: [ 
		self attributeAt: #binOp put: anObject.
		anObject op: self ]