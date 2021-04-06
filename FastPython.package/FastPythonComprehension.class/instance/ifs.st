accessing
ifs
	"Relation named: #ifs type: #FASTExpression opposite: #parentIfs"

	<generated>
	<derived>
	<FMProperty: #ifs type: #FASTExpression opposite: #parentIfs>
	^ self attributeAt: #ifs ifAbsentPut: [ FMMultivalueLink on: self opposite: #parentIfs: ]