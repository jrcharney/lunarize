# Lunarize

Solarized for people who want to see the damn screen!

## About Lunarize

Have you even installed a piece of software that later you realized was a very bad idea?

Did you feel that because you had that software install you had to force yourself to like it and accept it and tell everyone how awesome it is when really it was really bad?

That's Solarized in a nutshell.  Everyone says "It's so good."  Yeah, if you set your screen to really bright and don't mind the backlight sucking up the batter in two hours.

Lunarize is catharsis for folks who want to roll back to the way things were before you broke them.

No teal backgrounds on teal foregrounds.  No "soft" colors that are "easy on the eyes".  The problem with terminals isn't the minimalism of the pallete, it's that your screen is set really bright instead of at normal levels.  It's like looking at a TV screen with the bright setting turned up, complaining about why the colors are so bright then complaining about why logos from all the TV networks you watch are burnt into the screen.

## How to use Lunarize

1. Turn down the brightness on your screen.  (Seriously, it's like you're staring into the sun.)
2. Install Lunarize. (If you have Solarized installed, don't worky, Lunarize will fix it.)
3. Tell the guys who make SPF13-vim, Powerline, and whatever other popular Vim plugins not to cater just to pander to the poor souls stuck using Solarized.  (Palettes for everybody!)

## But what I don't have Solarized?

That's OK. Lunarize will still work.  Even better, you have the option of turning it off, alterning the palette to your taste, or whatever.

## What else would you recommend that I use if I use Lunarize?

* [Vim](http://www.vim.org/)
  * [Pathogen](https://github.com/tpope/vim-pathogen)
  * [SPF13-Vim](https://github.com/spf13/spf13-vim)
  * [Powerline Fonts](https://github.com/powerline/fonts)
* [Tmux](http://tmux.sourceforge.net/)
  * [libevent](http://libevent.org/)
  * [ncurses](http://invisible-island.net/ncurses/)
* [URXVT](http://software.schmorp.de/pkg/rxvt-unicode)
  * [Perl](https://www.perl.org/get.html) (You’ll need to get the version from the Perl website. Using Perl that comes with your distro is not enough.)
  * [XSel](http://www.vergenet.net/~conrad/software/xsel/)
  * [URXVT-Perls](https://github.com/muennich/urxvt-perls) (Has programs to allow for copy and paste between CLI and GUI programs!)
* [IRSSI](http://irssi.org/) or [WeeChat](http://weechat.org/) (I’m thinking of moving to WeeChat.)
* X11 (which generally comes with Linux AFAIK)

None of which are really required to run Lunarize but will be necessary if you've done stuff to Vim, Tmux, URXVT, IRSSI, or X11.

## What do you plan to do with this project?
Basically merge a lot of Ethan Schoonover's Solarized components into one repository, write the files like you would if you were going to drop in stuff (or let a script do that for you), and unf##k a lot of stuff Solarize f##ks with.

I just want to see the screen again.

## What did you merge into this project?

* [Solarized’s xresources](https://github.com/solarized/xresources)
* [Solarized’s tmux-solarized](https://github.com/solarized/tmux-colors-solarized)

I’m pretty sure these are the two repos I need to undo the damage done.

## Why is there Xresources and Xresource.full?

I though about creating a piece-wise version of Xresources.  Xresources.full is a full drop-in-replacement of your `~/.Xresources` file, where `Xresources` is now the minimal version that doesn’t include the fun stuff like copy and paste or features ideal for URXVT.

## What is URXVT-Perls?

URXVT-Perls is a project Bert Münnich made. I’m probably going to merge it into Lunarize.  Perls is a must have if you are using a terminal like URXVT.  You can copypasta (copy and paste) between command line programs and graphic user programs.  Only when you do it in the command line, you will need to use the Alt key instead of the Control key.  Historically, Linux has called the Alt key the Meta Key.  On my keyboard, I prefer to use left Alt for commands. ¡Uso la tecla Alt derecha (tecla AltGr) para escribir en el teclado de la computadora en español! ;-)  I really wish I had learned how to do that ten years ago when I needed it.

Anyway, most of the instructions for installing all that can be found on the [Rigel Wiki](https://github.com/jrcharney/rigel/wiki)
