*PythonToPharoTranscompiler
asMatcher
	| tmp first |
	tmp := self collect: [ :each | each asMatcher ].
	first := tmp first.
	tmp allButFirst
		do: [ :each | 
			first next: each.
			first := each ].
	^ tmp first