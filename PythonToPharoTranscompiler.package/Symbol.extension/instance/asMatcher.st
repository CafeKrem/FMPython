*PythonToPharoTranscompiler
asMatcher

	| first |
	first := self first.
	first = $* ifTrue: [ 
		self allButFirst
			ifEmpty: [ ^ EllipsisMatcher new ]
			ifNotEmpty: [ :name | ^ EllipsisMatcher new named: name ] ].
	first = $@ ifTrue: [ 
		self allButFirst
			ifEmpty: [ 
				^ JokerMatcher new ]
			ifNotEmpty: [ :name | ^ JokerMatcher new named: name ] ].
	first = $_ ifTrue: [ ^ JokerMatcher new ].
	1 halt