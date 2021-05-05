accessing
body
	"Relation named: #body type: #FASTStatement opposite: #classDeclaration"

	<generated>
	<derived>
	<FMProperty: #body type: #FASTStatement opposite: #classDeclaration>
	^ self attributeAt: #body ifAbsentPut: [ FMMultivalueLink on: self opposite: #classDeclaration: ]