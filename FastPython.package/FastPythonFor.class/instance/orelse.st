accessing
orelse
	"Relation named: #orelse type: #FASTTStatement opposite: #parentOrelse"

	<generated>
	<derived>
	<FMProperty: #orelse type: #FASTTStatement opposite: #parentOrelse>
	^ self attributeAt: #orelse ifAbsentPut: [ FMMultivalueLink on: self opposite: #parentOrelse: ]