visiting
visitFileInput: aFileInput
	| module scope |
	scope := PythonScope new.
	module := PythonSModule new.
	module scope: scope.
	scope scopeOwner: module.
	module
		statements:
			(aFileInput statements
				collect: [ :eachStatement | eachStatement acceptVisitor: self ]).
	^ module