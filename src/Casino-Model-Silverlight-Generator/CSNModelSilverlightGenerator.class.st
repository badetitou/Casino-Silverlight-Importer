Class {
	#name : #CSNModelSilverlightGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'nullWidget',
		'widget'
	],
	#category : #'Casino-Model-Silverlight-Generator'
}

{ #category : #accessing }
CSNModelSilverlightGenerator class >> modifyMetamodel: aMetamodel [
	super modifyMetamodel: aMetamodel.
	self fixRemoteMetamodelRelationsIn: aMetamodel
]

{ #category : #accessing }
CSNModelSilverlightGenerator class >> packageName [
	<ignoreForCoverage>
	^ 'Casino-Model-Silverlight'
]

{ #category : #accessing }
CSNModelSilverlightGenerator class >> prefix [
	^ #CSNS
]

{ #category : #accessing }
CSNModelSilverlightGenerator class >> submetamodels [
	^ { CSNLayoutMetamodelGenerator }
]

{ #category : #definition }
CSNModelSilverlightGenerator >> defineClasses [
	nullWidget := builder newClassNamed: #NullWidget.
	widget := self remoteEntity: #Widget withPrefix: #CSN 
]

{ #category : #definition }
CSNModelSilverlightGenerator >> defineRelations [
	super defineRelations.
	nullWidget --|> widget
]
