as yet unclassified
testDestroyClearsHandle
| client handle |

client:= TeleClient new.
client Free.
handle:= client client.
self assert: handle  equals: nil