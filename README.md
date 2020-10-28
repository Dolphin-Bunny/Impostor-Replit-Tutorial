(I don't think you can join the server from mobile)

# Impostor build from source
A few scripts to automatically download the source for the [Impostor](https://github.com/Impostor/Impostor) custom Among Us server
(I did not make the server, just the scripts to run it on repl.it)

### If you don't want to use the `dev` branch of the server (currently the only branch with plugin support), you should use [this tutorial](https://github.com/Dolphin-Bunny/imposter-replit-basic)

## You will need:
1. An account on [repl.it](https://repl.it/)

## How to set up
#### part 1: Importing from Github
1. Go to repl.it and sign in
2. Go to the "My Repls" page
3. Click "New Repl" in the top left
4. Click Import From Github
5. Paste `https://github.com/Dolphin-Bunny/Impostor-Replit-Tutorial` into the repository url box
  a. You do not need to link your Github account
6. Click the blue "Import From Github" button
#### part 2: Setting up your repl
8. On line 1 of `main.sh`, replace `<Your Repls Name>` with the name of the repl you will host the server on BUT WITH SPACES REPLACED WITH DASHES ( `-` ), and `<Your Repl.it Username>` with your username on repl.it. 
  a. So for me, line 1 would be `getent hosts impostor-building-from-source.dolphinbunny.repl.co | awk '{ print $1 }'`
9. Type `sh install.sh` into the console on the right and press enter. This may take a few minutes. You should not need to do anything while it installs. When it is finished, it will say "Done!" at the bottom of the console
  * This will install several things onto your repl that are needed to use the `dev` branch of the server (the branch that supports plugins and has more features)
    - This will:
      - Install .NET SDK 5.0 on your repl
      - Build the impostor server 
  * You should do this each time you visit/reload the repl.it page
  * The script might be at 
    ```
    Microsoft (R) Build Engine version 16.8.0-preview-20475-05+aed5e7ed0 for .NET
    Copyright (C) Microsoft Corporation. All rights reserved.

    Determining projects to restore...
    ``` 
    For a while, but that is normal
#### Running the server
10. Click "Run" at the top of your screen
11. If everything worked, you should see something in the console that looks similar to:
```
> sh main.sh
Your repls ip address is:
35.201.120.147
[15:54:59 INF] Starting Impostor
[15:54:59 DBG] Hosting starting
[15:55:00 INF] Matchmaker is listening on 0.0.0.0:22023, the public server ip is 127.0.0.1:22023.
[15:55:00 INF] Loading plugins.
[15:55:00 INF] Loaded 0 plugins.
[15:55:00 INF] Application started. Press Ctrl+C to shut down.
[15:55:00 INF] Hosting environment: Development
[15:55:00 INF] Content root path: /home/runner/impostor_src/Impostor-dev/src/Impostor.Server/bin/Debug/net5.0/linux-x64
[15:55:00 DBG] Hosting started
```

#### Joining the server
12. The ip address of the server is below the `Your repls ip address is:` line
13. The port of the server is `22023` unless you changed it
14. The [Impostor Github repo](https://github.com/Impostor/Impostor)  has instructions for how to join the server

#### Plugins and config.json
You can put your plugins in the `plugins` folder on the left side of the editor
[More info on writing plugins here (you need to know C#)](https://github.com/Impostor/Impostor/blob/dev/docs/Writing-a-plugin.md)

You can edit `config.json` to change server settings
[You can find more information on `config.json` here](https://github.com/Impostor/Impostor/blob/dev/docs/Server-configuration.md)
