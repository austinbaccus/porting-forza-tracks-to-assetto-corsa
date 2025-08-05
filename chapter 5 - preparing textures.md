# tools needed
- `convert-textures-to-png.ps1`

# overview
There are two steps to this chapter: convert all textures to `png`, and then organize your textures. Only the first step is required, but the second step is strongly recommended. A track like Amalfi GP has ~2,158 textures, which is a lot when you're trying to find the exact texture that some random object needs.

### part 1 - convert all textures to `.png`
1. Run the code from `src` > `convert-textures-to-png.ps1` in your terminal (this only works on Windows)

That's all for part 1.

### part 2 - organizing your textures
I want to explain the problem that this step solves before explaining how to do it. The problem is that our beloved `Forza Studio` does not link the correct textures to their respective materials. It only links the right material to its respective object (that's what the `.mtl` file is for). So all you get is a blank material for each object... which is not very helpful.

So now, unfortunately, it is up to you to find the right texture for all 2,000 objects in your track (large tracks like Amalfi have 2,500).

As an example, if you wanted to find the texture for a specific house, you would need to visually assess over 2,000 images and ask yourself "does this look like the right texture for this house?". And each time you answer "yes" (which is going to be a lot), you will apply that image to the house's material and then visually assess yet again if it's the correct texture. This process takes about 30 minutes. 30 minutes * 2,000 objects is 1,000 hours. Spending 1,000 hours just on the texturing part of a track port sucks... which is why you organize your textures.

# tips for organizing your textures

My folder structure for Amalfi textures looks like this:
- buildings
  - roofs
  - windows
  - doors
  - stairs
- pavement/road surfaces
- bricks
- terrain
- vegetation
- other

You are going to get a lot of textures that relate to each other, like this:

<img width="256" height="256" alt="_0x000003d5" src="https://github.com/user-attachments/assets/3e493ab9-3fc0-442c-9ca6-aa2c0a3cc8a4" />
<img width="256" height="256" alt="_0x0000034b" src="https://github.com/user-attachments/assets/42c4ceba-6fb5-4b4b-ab26-7146301806e1" />
<img width="256" height="256" alt="_0x000003d9" src="https://github.com/user-attachments/assets/6b62fdd8-4954-41e9-bf73-b951a0975ac9" />

I would recommend keeping these together. I'm a noob when it comes to all of this, but these related textures are often normal maps for the main diffuse texture. I'm not sure what the green-yellow texture is for.

<br/>

You are going to see a lot of bright red/orange/white/pink textures too, like this:

<img width="256" height="256" alt="_0x00000897" src="https://github.com/user-attachments/assets/38280839-4c3c-43f6-b497-d92b079310b1" />
<img width="256" height="256" alt="_0x00000a3e" src="https://github.com/user-attachments/assets/a37313ad-7af3-48f4-9696-69bdff6374a8" />
<img width="256" height="256" alt="_0x00000a2e" src="https://github.com/user-attachments/assets/3b75538e-f886-4170-adab-1737571f71d2" />

I have no idea what these are for. I put them into their own folder.

<br/>

You are also going to see a light of texture that are mostly white with some grey. I think that these are used for shadows? I just put these into their own folder.

<img width="256" height="256" alt="_0x00000cb7" src="https://github.com/user-attachments/assets/0ea22c84-cba2-4256-bf73-c4e5d373988a" />
<img width="256" height="256" alt="_0x00000b40" src="https://github.com/user-attachments/assets/36352f73-2715-4e3c-8ed7-3cd99df84e54" />
<img width="256" height="256" alt="_0x00000a0f" src="https://github.com/user-attachments/assets/79f93440-f3ef-49e7-96b6-d4a2acd43c2d" />

# results
Now, instead of searching through 2,000 textures to find what you're looking for, you're searching through ~100 textures (worst case scenario, which is usually the `buildings` folder, best case is terrain which only has ~20). This should bring your time spent on each texture down to ~1 minute. So instead of 1,000 hours, you're now only spending 30 hours.
