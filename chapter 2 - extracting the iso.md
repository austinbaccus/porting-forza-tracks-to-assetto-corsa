[original tutorial](https://digiex.net/threads/xbox-360-xiso-extract-best-an-easiest-xdg3-extraction-tool-with-gui-ftp.9711/)

# tools needed
- [xbox 360 iso extract](https://digiex.net/attachments/isoextract-rar.7679/)

# overview
Both FM3 and FM4 have two discs each. The first disc (the 'Play' disc) has all the code for the game, and quite a lot of content like sound files, track files, car files, etc. The second disc is purely content. 

FM3 disc 2 track content:
- Amalfi Coast (long version)
- Fujimi Kaido
- Nurburgring

FM4 disc 2 track content:
- No tracks

There were two DLC tracks for FM4 (Top Gear Soccer Field, Benchmark), and I think that those might be included in your disc 2's .iso. In this case, before extracting, you need to use the `Xenia` emulator to "install" disc 2. This creates an file that you can extract just like disc 1.

# process

1. Make sure your .iso's look correct. The memory size for each should be about 7.6 GB.
<img width="727" height="57" alt="image" src="https://github.com/user-attachments/assets/e7c058a9-ba04-416a-a611-d1cc3afceadd" />

2. Start the `xbox 360 iso extract` application
3. Select the `.iso` file to extract
4. Select the destination folder
5. Click the `go` button
6. Navigate to the folder you just extracted
7. Navigate to the nested `Media` folder
8. You should get a folder that looks something like this:
<img width="396" height="419" alt="image" src="https://github.com/user-attachments/assets/e7ba801d-5932-4aea-8d20-b8416ddc9773" />

9. Navigate to the `Tracks` folder
10. Inside each Track folder, there is a `bin.zip` file
<img width="985" height="289" alt="image" src="https://github.com/user-attachments/assets/8f033674-3018-48b8-a135-a098adb46419" />

This is the file that you will extract in the next step. It contains all the stuff you need (meshes, textures, UVs, etc.)
