Extension { #name : #CSNUIOrderedList }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIOrderedList class >> silverCanHandle: anElement [
	^ anElement name endsWith: 'ListBox'
]
