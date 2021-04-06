accessing
parameters
	"Relation named: #parameters type: #FMXPythonParameter opposite: #functionDeclaration"

	<generated>
	<derived>
	<FMProperty: #parameters type: #FMXPythonParameter opposite: #functionDeclaration>
	^ self attributeAt: #parameters ifAbsentPut: [ FMMultivalueLink on: self opposite: #functionDeclaration: ]