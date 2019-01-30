Class {
	#name : #CSNSilverlightImporter,
	#superclass : #BLWebModel,
	#instVars : [
		'visitor'
	],
	#category : #'Casino-Silverlight-Importer'
}

{ #category : #api }
CSNSilverlightImporter >> createFactory [
	factory := CSNSilverlightFactory new model: model; importer: self; yourself
]

{ #category : #api }
CSNSilverlightImporter >> import [
	visitor := CSNXMLSilverlightVisitor new importer: self; factory: self factory; yourself.
	sourceModel acceptNodeVisitor: visitor 
]
