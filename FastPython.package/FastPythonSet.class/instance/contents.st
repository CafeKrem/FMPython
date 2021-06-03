accessing
contents
	"Relation named: #contents type: #FASTTExpression opposite: #set"

	<generated>
	<derived>
	<FMProperty: #contents type: #FASTTExpression opposite: #set>
	^ self attributeAt: #contents ifAbsentPut: [ FMMultivalueLink on: self opposite: #set: ]