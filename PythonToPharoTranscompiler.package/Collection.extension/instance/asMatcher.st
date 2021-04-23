*PythonToPharoTranscompiler
asMatcher
	| tmp first |
	tmp := self collect: [ :each | each asMatcher ].
	first := tmp first.
	tmp allButFirst
		do: [ :each | 
			first next: each.
			each previous: first.
			first := each ].
	^ tmp first