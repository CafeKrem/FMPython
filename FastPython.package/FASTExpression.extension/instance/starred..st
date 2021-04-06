*FastPython-accessing
starred: anObject

	<generated>
	(self attributeAt: #starred ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self starred.
		self attributeAt: #starred put: anObject.
		otherSide expr: nil ]
	ifNotNil: [ 
		self attributeAt: #starred put: anObject.
		anObject expr: self ]