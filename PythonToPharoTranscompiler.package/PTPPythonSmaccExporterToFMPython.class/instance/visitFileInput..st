visiting
visitFileInput: aFileInput
	| module scope |
	scope := FMXPythonScope new.
	module := FMXPythonSModule new.
	module scope: scope.
	scope scopeOwner: module.
	module
		statements:
			(aFileInput statements
				collect: [ :eachStatement | eachStatement acceptVisitor: self ]).
	^ module