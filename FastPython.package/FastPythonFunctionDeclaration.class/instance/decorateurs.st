accessing
decorateurs
	"Relation named: #decorateurs type: #FASTExpression opposite: #functionDeclaration"

	<generated>
	<derived>
	<FMProperty: #decorateurs type: #FASTExpression opposite: #functionDeclaration>
	^ self attributeAt: #decorateurs ifAbsentPut: [ FMMultivalueLink on: self opposite: #functionDeclaration: ]