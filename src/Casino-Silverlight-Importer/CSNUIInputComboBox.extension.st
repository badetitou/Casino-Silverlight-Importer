Extension { #name : #CSNUIInputComboBox }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIInputComboBox class >> silverCanHandle: anElement [
	^ anElement name endsWith: 'ComboBox'
]
