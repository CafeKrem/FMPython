*FamixPython-accessing
definition
	"Relation named: #definition type: #FMXPythonDeclaration opposite: #references"

	<generated>
	<derived>
	<FMProperty: #definition type: #FMXPythonDeclaration opposite: #references>
	<package: #'FamixPython'>
	^ self attributeAt: #definition ifAbsentPut: [ FMMultivalueLink on: self opposite: #references: ]