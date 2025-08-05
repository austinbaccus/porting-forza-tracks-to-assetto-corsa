[original tutorial](https://codeescape.com/2012/05/forza-studio-4-0-forza-motorsport-resource-extraction-tool/)

# tools needed
- [`Forza Studio 4.4t2`](https://www.tapatalk.com/groups/kottons_chop_shop/forza-studio-4-4-t3213-s20.html)

# overview
First, I need to explain why I'm using `FS4.4t2` instead of `FS4.1` or `FS4.0`: `FS4.4t2` correctly extracts UVs. The original creator of Forza Studio, Mike Davis (aka `ernegien`/`xbox7887`) stopped working on Forza Studio a long time ago before he could get the UV code working. Some dude nicknamed "Chipi" picked up the work and made `FS4.4t2`, which extracts the UVs properly.

I do not recommend `Forza Studio 4.6`. It's sketchy, didn't work for me, and didn't seem to be an improvement over `FS4.4t2` based on the info provided anyways.

# process
1. Open the `Forza studio 4.4t2` applciation
2. `File` > `Import` > the `bin.zip` file from the last step
3. Check the box in the `Models` tab

The track should be loaded now. Everything is going to look either blue or silver. 

4. Right-click the top item in the `Models` tab
5. Click `Extract all` to extract the meshes and UVs
6. Switch the `Textures` tab
7. Right-click any item
8. Click `Extract all` to extract all textures
