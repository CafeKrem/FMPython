*PythonToPharoTranscompiler
asMatcher

	self first = $* ifTrue: [ 
		self allButFirst
			ifEmpty: [ ^ EllipsisMatcher new ]
			ifNotEmpty: [ :name | ^ EllipsisMatcher new named: name ] ].
	self halt