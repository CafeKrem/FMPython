*FastPython-accessing
call: anObject

	<generated>
	(self attributeAt: #call ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self call.
		self attributeAt: #call put: anObject.
		otherSide left: nil ]
	ifNotNil: [ 
		self attributeAt: #call put: anObject.
		anObject left: self ]