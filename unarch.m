/* ========================================================================
 *
 * Author: Edward Patel, Memention AB, http://memention.com
 *
 * ======================================================================== */

#import <Foundation/Foundation.h>
#import "SnoizeMIDI/SMMessage.h"
#import "SnoizeMIDI/SMVoiceMessage.h"


int main (int argc, const char * argv[]) {

    NSDictionary *toneMap = [NSDictionary  dictionaryWithObjectsAndKeys:
    [NSNumber numberWithDouble: 32.7032], @"C1",
    [NSNumber numberWithDouble: 34.6478], @"C#1",
    [NSNumber numberWithDouble: 36.7081], @"D1",
    [NSNumber numberWithDouble: 38.8909], @"D#1",
    [NSNumber numberWithDouble: 41.2034], @"E1",
    [NSNumber numberWithDouble: 43.6535], @"F1",
    [NSNumber numberWithDouble: 46.2493], @"F#1",
    [NSNumber numberWithDouble: 48.9994], @"G1",
    [NSNumber numberWithDouble: 51.9131], @"G#1",
    [NSNumber numberWithDouble: 55.0000], @"A1",
    [NSNumber numberWithDouble: 58.2705], @"A#1",
    [NSNumber numberWithDouble: 61.7354], @"B1",
    [NSNumber numberWithDouble: 65.4064], @"C2",
    [NSNumber numberWithDouble: 69.2957], @"C#2",
    [NSNumber numberWithDouble: 73.4162], @"D2",
    [NSNumber numberWithDouble: 77.7817], @"D#2",
    [NSNumber numberWithDouble: 82.4069], @"E2",
    [NSNumber numberWithDouble: 87.3071], @"F2",
    [NSNumber numberWithDouble: 92.4986], @"F#2",
    [NSNumber numberWithDouble: 97.9989], @"G2",
    [NSNumber numberWithDouble: 103.8262], @"G#2",
    [NSNumber numberWithDouble: 110.0000], @"A2",
    [NSNumber numberWithDouble: 116.5409], @"A#2",
    [NSNumber numberWithDouble: 123.4708], @"B2",
    [NSNumber numberWithDouble: 130.8128], @"C3",
    [NSNumber numberWithDouble: 138.5913], @"C#3",
    [NSNumber numberWithDouble: 146.8324], @"D3",
    [NSNumber numberWithDouble: 155.5635], @"D#3",
    [NSNumber numberWithDouble: 164.8138], @"E3",
    [NSNumber numberWithDouble: 174.6141], @"F3",
    [NSNumber numberWithDouble: 184.9972], @"F#3",
    [NSNumber numberWithDouble: 195.9977], @"G3",
    [NSNumber numberWithDouble: 207.6523], @"G#3",
    [NSNumber numberWithDouble: 220.0000], @"A3",
    [NSNumber numberWithDouble: 233.0819], @"A#3",
    [NSNumber numberWithDouble: 246.9417], @"B3",
    [NSNumber numberWithDouble: 261.6256], @"C4",
    [NSNumber numberWithDouble: 277.1826], @"C#4",
    [NSNumber numberWithDouble: 293.6648], @"D4",
    [NSNumber numberWithDouble: 311.1270], @"D#4",
    [NSNumber numberWithDouble: 329.6276], @"E4",
    [NSNumber numberWithDouble: 349.2282], @"F4",
    [NSNumber numberWithDouble: 369.9944], @"F#4",
    [NSNumber numberWithDouble: 391.9954], @"G4",
    [NSNumber numberWithDouble: 415.3047], @"G#4",
    [NSNumber numberWithDouble: 440.0000], @"A4",
    [NSNumber numberWithDouble: 466.1638], @"A#4",
    [NSNumber numberWithDouble: 493.8833], @"B4",
    [NSNumber numberWithDouble: 523.2511], @"C5",
    [NSNumber numberWithDouble: 554.3653], @"C#5",
    [NSNumber numberWithDouble: 587.3295], @"D5",
    [NSNumber numberWithDouble: 622.2540], @"D#5",
    [NSNumber numberWithDouble: 659.2551], @"E5",
    [NSNumber numberWithDouble: 698.4565], @"F5",
    [NSNumber numberWithDouble: 739.9888], @"F#5",
    [NSNumber numberWithDouble: 783.9909], @"G5",
    [NSNumber numberWithDouble: 830.6094], @"G#5",
    [NSNumber numberWithDouble: 880.0000], @"A5",
    [NSNumber numberWithDouble: 932.3275], @"A#5",
    [NSNumber numberWithDouble: 987.7666], @"B5",
    [NSNumber numberWithDouble: 1046.5023], @"C6",
    [NSNumber numberWithDouble: 1108.7305], @"C#6",
    [NSNumber numberWithDouble: 1174.6591], @"D6",
    [NSNumber numberWithDouble: 1244.5079], @"D#6",
    [NSNumber numberWithDouble: 1318.5102], @"E6",
    [NSNumber numberWithDouble: 1396.9129], @"F6",
    [NSNumber numberWithDouble: 1479.9777], @"F#6",
    [NSNumber numberWithDouble: 1567.9817], @"G6",
    [NSNumber numberWithDouble: 1661.2188], @"G#6",
    [NSNumber numberWithDouble: 1760.0000], @"A6",
    [NSNumber numberWithDouble: 1864.6550], @"A#6",
    [NSNumber numberWithDouble: 1975.5332], @"B6",
    [NSNumber numberWithDouble: 2093.0045], @"C7",
    [NSNumber numberWithDouble: 2217.4610], @"C#7",
    [NSNumber numberWithDouble: 2349.3181], @"D7",
    [NSNumber numberWithDouble: 2489.0159], @"D#7",
    [NSNumber numberWithDouble: 2637.0205], @"E7",
    [NSNumber numberWithDouble: 2793.8259], @"F7",
    [NSNumber numberWithDouble: 2959.9554], @"F#7",
    [NSNumber numberWithDouble: 3135.9635], @"G7",
    [NSNumber numberWithDouble: 3322.4376], @"G#7",
    [NSNumber numberWithDouble: 3520.0000], @"A7",
    [NSNumber numberWithDouble: 3729.3101], @"A#7",
    [NSNumber numberWithDouble: 3951.0664], @"B7",
    [NSNumber numberWithDouble: 4186.0090], @"C8", 
                                            nil];

    NSDictionary *tones = [NSDictionary dictionaryWithObjectsAndKeys:
                @"A0", @"15",
                @"A#0", @"16",
                @"B0", @"17",
                @"C1", @"18",
                @"C#1", @"19",
                @"D1", @"1A",
                @"D#1", @"1B",
                @"E1", @"1C",
                @"F1", @"1D",
                @"F#1", @"1E",
                @"G1", @"1F",
                @"G#1", @"20",
                @"A1", @"21",
                @"A#1", @"22",
                @"B1", @"23",
                @"C2", @"24",
                @"C#2", @"25",
                @"D2", @"26",
                @"D#2", @"27",
                @"E2", @"28",
                @"F2", @"29",
                @"F#2", @"2A",
                @"G2", @"2B",
                @"G#2", @"2C",
                @"A2", @"2D",
                @"A#2", @"2E",
                @"B2", @"2F",
                @"C3", @"30",
                @"C#3", @"31",
                @"D3", @"32",
                @"D#3", @"33",
                @"E3", @"34",
                @"F3", @"35",
                @"F#3", @"36",
                @"G3", @"37",
                @"G#3", @"38",
                @"A3", @"39",
                @"A#3", @"3A",
                @"B3", @"3B",
                @"C4", @"3C",
                @"C#4", @"3D",
                @"D4", @"3E",
                @"D#4", @"3F",
                @"E4", @"40",
                @"F4", @"41",
                @"F#4", @"42",
                @"G4", @"43",
                @"G#4", @"44",
                @"A4", @"45",
                @"A#4", @"46",
                @"B4", @"47",
                @"C5", @"48",
                @"C#5", @"49",
                @"D5", @"4A",
                @"D#5", @"4B",
                @"E5", @"4C",
                @"F5", @"4D",
                @"F#5", @"4E",
                @"G5", @"4F",
                @"G#5", @"50",
                @"A5", @"51",
                @"A#5", @"52",
                @"B5", @"53",
                @"C6", @"54",
                @"C#6", @"55",
                @"D6", @"56",
                @"D#6", @"57",
                @"E6", @"58",
                @"F6", @"59",
                @"F#6", @"5A",
                @"G6", @"5B",
                @"G#6", @"5C",
                @"A6", @"5D",
                @"A#6", @"5E",
                @"B6", @"5F",
                @"C6", @"60",
                @"C#7", @"61",
                @"D7", @"62",
                @"D#7", @"63",
                @"E7", @"64",
                @"F7", @"65",
                @"F#7", @"66",
                @"G7", @"67",
                @"G#7", @"68",
                @"A7", @"69",
                @"A#7", @"6A",
                @"B7", @"6B",
                @"C8", @"6C",
                @"C#8", @"6D",
                @"D8", @"6E",
                @"D#8", @"6F",
                @"E8", @"70",
                @"F8", @"71",
                @"F#8", @"72",
                @"G8", @"73",
                @"G#8", @"74",
                @"A8", @"75",
                @"A#8", @"76",
                @"B8", @"77",
                @"C9", @"78",
                @"C#9", @"79",
                @"D9", @"7A",
                @"D#9", @"7B",
                @"E9", @"7C",
                @"F9", @"7D",
                @"F#9", @"7E",
                @"G9", @"7F",
                nil];

        if( argc != 2 && argc != 3 ){ fprintf(stderr,"Usage: unarch <filename> [mode]\nMode is 'f' to output frequencies or 't' to output tone names (e.g., C#3)\n\n"); exit(1); }

        bool namedTones = false;
        if( argc == 3 ){

          if( !strcmp(argv[2], "t") ){

            namedTones = true;

          }else if( !strcmp(argv[2], "f") ){

            namedTones = false;

          }else{

            fprintf(stderr,"Usage: unarch <filename> [mode]\nMode is 'f' to output frequencies or 't' to output tone names (e.g., C#3)\n\n"); 
            exit(1);

          }
          
        }

        NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

        NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:
                                                   [NSString stringWithCString:argv[1] encoding:NSUTF8StringEncoding]];

	NSData *rdata = [dict valueForKey:@"messageData"];

        NSArray *msgArray = NULL;

        if (rdata) {
          id obj = [NSKeyedUnarchiver unarchiveObjectWithData:rdata];
          if (obj && [obj isKindOfClass:[NSArray class]]) {
            msgArray = (NSArray*)obj; 
          }
        }


        for(id msg in msgArray){
          if (msg && [msg isKindOfClass:[SMVoiceMessage class]]){

            SMVoiceMessage *vmsg = (SMVoiceMessage *)msg;

            Byte db1 = [msg dataByte1];
            Byte db2 = [msg dataByte2];

            char db1s[3]; 
            sprintf(db1s,"%x",db1);
            NSString *db1ns = [NSString stringWithCString:db1s encoding:NSASCIIStringEncoding];

            char db2s[3];
            sprintf(db2s,"%x",db2);
            NSString *db2ns = [NSString stringWithCString:db2s encoding:NSASCIIStringEncoding];

            NSString *note = [tones objectForKey:[db1ns uppercaseString]];
            NSNumber *tone = [toneMap objectForKey:note];

            if( namedTones ){
              
              printf("%s\n", [note cStringUsingEncoding:NSUTF8StringEncoding]);

            }else{

              printf("%f\n", [tone floatValue]);

            }

          }
        }

    [pool drain];
    return 0;
}
