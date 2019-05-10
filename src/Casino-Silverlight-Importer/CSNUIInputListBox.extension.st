Extension { #name : #CSNUIInputListBox }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIInputListBox class >> silverCanHandle: anElement [
	^ anElement name endsWith: 'ListBox'
]
