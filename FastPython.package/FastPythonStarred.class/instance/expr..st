accessing
expr: anObject

	<generated>
	(self attributeAt: #expr ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self expr.
		self attributeAt: #expr put: anObject.
		otherSide starred: nil ]
	ifNotNil: [ 
		self attributeAt: #expr put: anObject.
		anObject starred: self ]