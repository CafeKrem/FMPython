factory
operationSymbol: anOperationSymbol
	^ operationSymbolPool
		at: anOperationSymbol
		ifAbsentPut: [ PythonOperationSymbol new op: anOperationSymbol ]