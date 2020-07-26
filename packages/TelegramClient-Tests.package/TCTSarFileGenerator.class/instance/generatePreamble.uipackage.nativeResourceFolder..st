helpers
generatePreamble: package uipackage: ui nativeResourceFolder: folder

	"Returns the inteded filepath for the tdlib binaries"
^'| file destination |
self fileInMonticelloZipVersionNamed:
''' , package , '.mcz''.' ,'
file := ((Smalltalk platformName) startsWith: ''Win32'')
ifTrue: [''tdjson.dll'' ]
ifFalse: [(anOsName startsWith: ''Mac OS'')
ifTrue: [''libtdjson.1.6.0.dylib'' ]
ifFalse: [''libtdjson.so.1.6.0'' ]].
destination := FileDirectory default.			
self fileInMonticelloZipVersionNamed:
''' , ui , '.mcz''.
TCUTelegram registerOpenCommand.
(self membersMatching: (''' , folder , FileDirectory slash , ''',file)) do: [ :f | self extractMemberWithoutPath: f inDirectory: destination].' 