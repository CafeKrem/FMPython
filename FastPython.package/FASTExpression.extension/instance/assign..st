*FastPython-accessing
assign: anObject

	<generated>
	(self attributeAt: #assign ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self assign.
		self attributeAt: #assign put: anObject.
		otherSide right: nil ]
	ifNotNil: [ 
		self attributeAt: #assign put: anObject.
		anObject right: self ]