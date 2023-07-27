---
layout: post
title:  "Hello World!"
---

# Hello There!

**Hello world**, this is my first Jekyll-based blog post. It certainly was a trip getting here. I learned to blog/write via manual HTML authoring (even prior to the days of CSS), messed around in Livejournal for a bunch of years, then Wordpress and Grav for very short durations. Now I'm checking out Jekyll!

Initial edits were made via shell, then via VS Code (Web), with some complications:

- Locally-installed assets on a VM, WSL, etc. Initially I *wanted* to get this going via an LDAP user (with NFS-based home directory) from *any* capable system on my network, however:
  - Ruby can't compile gems on NFS mounts (where my home directory is stored), due to locking issues.
  - A Synology NAS exports said NFS share, however it doesn't have build-essential/compiler packages for Ruby to build gems with, despite there being a Ruby package on the [SynoCommunity](https://synocommunity.com) repo.
- CIFS-hosted site repository/clone
- Re-trusted CIFS share repo for Git (it didn't like that the file/directory ownership didn't match the editing user in the CLI or in VS-Code).
- VS-Code in this case is actually web-based, so I didn't have to manage a bunch of Code installs.

But otherwise, this seems fairly painless and I'll get to familiarize (and formalize) my use of GitHub.

Assuming commits go as I like, I'll soon be onto some Valheim server stuff for a group of friends.