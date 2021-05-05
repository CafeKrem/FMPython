accessing
expression: anObject

	<generated>
	(self attributeAt: #expression ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self expression.
		self attributeAt: #expression put: anObject.
		otherSide await: nil ]
	ifNotNil: [ 
		self attributeAt: #expression put: anObject.
		anObject await: self ]