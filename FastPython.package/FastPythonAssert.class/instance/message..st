accessing
message: anObject

	<generated>
	(self attributeAt: #message ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self message.
		self attributeAt: #message put: anObject.
		otherSide assert: nil ]
	ifNotNil: [ 
		self attributeAt: #message put: anObject.
		anObject assert: self ]