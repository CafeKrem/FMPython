accessing
decorateurs
	"Relation named: #decorateurs type: #FASTTExpression opposite: #functionDeclaration"

	<generated>
	<derived>
	<FMProperty: #decorateurs type: #FASTTExpression opposite: #functionDeclaration>
	^ self attributeAt: #decorateurs ifAbsentPut: [ FMMultivalueLink on: self opposite: #functionDeclaration: ]