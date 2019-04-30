Extension { #name : #CSNUIClass }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIClass class >> silverCanHandle: anElement for: aWidget [
	^ #('HorizontalAlignment' 'Orientation') includes: anElement name
]
