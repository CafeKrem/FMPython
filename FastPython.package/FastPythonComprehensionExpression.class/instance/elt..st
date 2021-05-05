accessing
elt: anObject

	<generated>
	(self attributeAt: #elt ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self elt.
		self attributeAt: #elt put: anObject.
		otherSide comprehensionExpression: nil ]
	ifNotNil: [ 
		self attributeAt: #elt put: anObject.
		anObject comprehensionExpression: self ]