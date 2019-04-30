Extension { #name : #CSNUIHeading1 }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIHeading1 class >> silverCanHandle: anElement [
	^ anElement name endsWith: 'EnteteGroupeUserControl'
]
