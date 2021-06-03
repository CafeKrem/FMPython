accessing
finaly
	"Relation named: #finaly type: #FASTTStatement opposite: #try"

	<generated>
	<derived>
	<FMProperty: #finaly type: #FASTTStatement opposite: #try>
	^ self attributeAt: #finaly ifAbsentPut: [ FMMultivalueLink on: self opposite: #try: ]