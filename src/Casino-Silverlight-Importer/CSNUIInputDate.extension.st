Extension { #name : #CSNUIInputDate }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIInputDate class >> silverCanHandle: anElement [
	^ anElement name endsWith: 'DatePickerCustomControl'
]
