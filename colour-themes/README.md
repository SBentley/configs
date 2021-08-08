# `themer`

Your theme's unique URL:

https://themer.dev/?colors.dark.shade0=%23161c1f&colors.dark.shade7=%23cfcfcf&colors.dark.accent0=%23EFA6A2&colors.dark.accent1=%2350CACD&colors.dark.accent2=%23E0AF85&colors.dark.accent3=%235ACCAF&colors.dark.accent6=%23E6A3DC&colors.dark.accent7=%23A3B8EF&colors.dark.accent4=%2374C3E4&colors.dark.accent5=%23CCACED&colors.dark.shade6=&colors.light.shade0=%23ffffff&colors.light.shade7=%23000000&activeColorSet=dark&calculateIntermediaryShades.dark=true

If you find `themer` useful, here are some ways to support the project:

* Star [`themer` on GitHub](https://github.com/mjswensen/themer)
* Follow [@themerdev](https://twitter.com/themerdev) on Twitter
* [Send a tip through the Brave Browser](https://brave.com/the537), either on [the repository page](https://github.com/mjswensen/themer) or [the Web UI](https://themer.dev)
* Pay what you want when downloading your theme from [themer.dev](https://themer.dev)

# Installation instructions

## CMD

Simply double-click the desired theme file to add the color keys to the registry:

* `CMD/themer-dark.reg`
* `CMD/themer-light.reg`

The scheme of CMD can then be configured with the `color` command. For example, use `color 07` to set the background and foreground to your color set's default.

## ConEmu

1. Open the ConEmu settings and navigate to Features > Colors. Take note of the location of `ConEmu.xml` for later.
2. Create a new color scheme by typing a name in the "Schemes" field and clicking Save.
3. Close ConEmu.
4. Open `ConEmu.xml` and locate the color scheme name you typed in step 2.
5. Replace the `<value>` elements `ColorTable00` through `ColorTable31` with the contents of your themer-generated XML (`ConEmu/themer-dark.xml` or `ConEmu/themer-light.xml`). Be sure to leave the others, like `ExtendColors`, etc. intact.
6. Open ConEmu and select your theme again in settings.

## Konsole

Copy (or symlink) the generated files to `~/.local/share/konsole/`:

    cp 'Konsole/themer-dark.colorscheme' ~/.local/share/konsole/
    cp 'Konsole/themer-light.colorscheme' ~/.local/share/konsole/

Then choose the desired theme in Konsole > Settings > Edit Current Profile > Appearance.

## Sublime Text

1. Copy (or symlink) the generated theme files (`Sublime Text/themer-sublime-text-dark.tmTheme` or `Sublime Text/themer-sublime-text-light.tmTheme`) to the `User/` packages folder (you can see where this folder is located by choosing the "Browse Packages..." menu option in Sublime Text).
2. Choose the theme from the list of available color themes.

## Vim

Copy or symlink `Vim/ThemerVim.vim` to `~/.vim/colors/`.

Then set the colorscheme in `.vimrc`:

    " The background option must be set before running this command.
    colo ThemerVim

## Vim lightline

Make sure that the `background` option is set in `.vimrc`.

Copy or symlink `Vim lightline/ThemerVimLightline.vim` to `~/.vim/autoload/lightline/colorscheme/`.

Then set the colorscheme in `.vimrc`:

    let g:lightline = { 'colorscheme': 'ThemerVimLightline' }

## Visual Studio

1. Select Tools > Import and Export Settings...
2. Choose the "Import selected environment settings" option
3. Choose whether or not to save a backup of current settings
4. Click "Browse..." and choose the generated theme file ('Visual Studio/themer-dark.vssettings' or 'Visual Studio/themer-light.vssettings')
5. Click "Finish"

## VS Code

Copy (or symlink) the generated package directory into the VS Code extensions directory:

    cp -R 'VS Code/theme-themer-vscode' ~/.vscode/extensions/

Then reload or restart VS Code. The generated theme package should be in the list of installed extensions, and "Themer Dark" / "Themer Light" will be available in the list of themes.

## Windows Terminal

1. Open the Windows Terminal settings (`Ctrl`-`,`)
2. Add the contents of 'Windows Terminal/themer-dark.json' and 'Windows Terminal/themer-light.json' to the `schemes` array in `profile.json`
3. Set the `colorScheme` property to the desired scheme name ("Themer Dark" or "Themer Light") in the profiles section of `profile.json`, e.g.:

    "profiles": {
      "defaults": {
        "colorScheme": "Themer Dark"
      }
    }