accessing
scope: anObject

	<generated>
	(self attributeAt: #scope ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self scope.
		self attributeAt: #scope put: anObject.
		otherSide scopeOwner: nil ]
	ifNotNil: [ 
		self attributeAt: #scope put: anObject.
		anObject scopeOwner: self ]