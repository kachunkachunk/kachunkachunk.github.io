---
layout: post
title: "Valheim patch 0.217.14 (Hildir's Request)"
date: 2023-08-23 14:30:00 -0700
categories: games valheim
tags: games valheim
img_path: /assets/img
---
![Patch 0.217.14 - Hildir's Request](posts/valheim_hildir_header.png){: .normal}

Valheim's 0.217.14 patch, Hildir's Request, came out this week. It marks the first update since deploying our server and world!
This also means that I had to figure out how to upgrade the server and mod. Wasn't painful, though.

## Updating the Server

We use Pterodactyl Panel. To update Valheim, I just needed to stop and start the game server. The server egg is designed to update the base images and game on startup.

Valheim Plus updates are usually needed as well, however, and this didn't update to the latest build automatically, despite using the `latest` tag.
So, some minor server-side changes were needed to accommodate for this. Waiting another day or few might let it resolve itself, but some of our folks can't quite wait.

For this update, I've specifically chosen the release tag `0.9.9.17`, from yesterday. To install it, I just needed to hit the "Reinstall Server" option in Pterodactyl Panel. Despite the warning that some server files may be deleted/reinstalled in the process (I took a backup first, just in case), we lost no world information or configuration customizations. Hooray!

## Required Client and Mod Update

For everyone playing -

The game itself should have updated in Steam automatically in the past few days, but if you copied the game folder for Valheim+ like I suggested earlier:
1. Go into your modded Valheim+ directory and delete all of its contents. It should now just be an empty folder or directory.
2. Locate your Valheim game folder and copy all of its content over to your currently-empty modded Valheim directory.
3. Go [here](https://github.com/Grantapher/ValheimPlus/releases/tag/0.9.9.17), and download the appropriate client release (likely `WindowsClient.zip`, [here](https://github.com/Grantapher/ValheimPlus/releases/download/0.9.9.17/WindowsClient.zip)).
4. Extract the contents of the zip file to your modded Valheim directory.
5. You should already have a Steam shortcut for this, but if not, running Valheim(.exe) should work as expected. Your save, character, etc., is all saved elsewhere.

If you did not copy the game directory for modding and just modded your main game client folder, then:
1. Go [here](https://github.com/Grantapher/ValheimPlus/releases/tag/0.9.9.17), and download the appropriate client release (likely `WindowsClient.zip`, [here](https://github.com/Grantapher/ValheimPlus/releases/download/0.9.9.17/WindowsClient.zip)).
2. Extract the contents of the zip file to your Valheim directory, overwriting any files/changes when prompted.
3. Run the game (now modded) as normal.

If you have problems with the game or mod while using the original game client folder (it can happen, which is why I suggested copying the game folder out for modding):
1. Go to your Valheim installation directory and delete all files/folders in there.
2. Go into Steam, right-click Valheim in your Library, and hit Properties.
3. Go to Installed Files and verify the integrity of your game files. It'll re-download the game.
4. Go [here](https://github.com/Grantapher/ValheimPlus/releases/tag/0.9.9.17), and download the appropriate client release (likely `WindowsClient.zip`, [here](https://github.com/Grantapher/ValheimPlus/releases/download/0.9.9.17/WindowsClient.zip)).
5. Extract the contents of the zip file to your Valheim directory.
6. Run the game (now modded) as normal.

It should take only a few minutes to get sorted, but holler in our group chat(s) if you have trouble.

## Update Details, Next Steps

As for the update itself, a bunch of quality of life improvements were introduced (they are multiplicative with Valheim+), but we've left them alone to vanilla defaults and will rely on the mod for most of our QoL improvements. Certainly open to suggestions/requests, though! Patch notes: [https://store.steampowered.com/news/app/892970/view/3677805209188203269](https://store.steampowered.com/news/app/892970/view/3677805209188203269)

No configuration changes were issued, so the game should play like before. Well, along with all the new updates, of course. See you in the Viking afterlife.