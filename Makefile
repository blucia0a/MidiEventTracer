all:
	clang -O0 -g -framework Foundation -F/Users/blucia/Downloads/MIDIMonitor/MIDI\ Monitor.app/Contents/Frameworks/ -framework SnoizeMIDI -IMIDIApps/Frameworks  unarch.m -g -o unarch
