accessing
body
	"Relation named: #body type: #FASTTStatement opposite: #classDeclaration"

	<generated>
	<derived>
	<FMProperty: #body type: #FASTTStatement opposite: #classDeclaration>
	^ self attributeAt: #body ifAbsentPut: [ FMMultivalueLink on: self opposite: #classDeclaration: ]