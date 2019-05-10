Extension { #name : #CSNUIInputCheckbox }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIInputCheckbox class >> silverCanHandle: anElement [
	^ anElement name endsWith: 'CheckBox'
]
