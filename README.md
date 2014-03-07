I kept finding myself writing one-off scripts to feed my indecision and make a random choice. I wrote this workflow to automate my indecision. ;)

This is a workflow for the OS X app [Alfred 2]. You'll need a license for the powerpack to install it.

[Alfred 2]: http://www.alfredapp.com/

![The workflow lets you ask for a yes/no response, flip a coin, choose a random number, choose from a list, or roll a die.](http://clintonstrong.com/i/d6beb6.png)

**[Download](http://packal.org/workflow/random-choice)**

Some of these keywords are duplicates of existing workflows, but I wanted to have all my RNGs in one workflow. Feel free to disable any keywords you don't want or need.

Oh, and you don't have to worry about downloading a light or dark version of the workflow. The icons adjust automatically based on your theme as soon as you start using the workflow. See [alfred-icons](https://github.com/clintxs/alfred-icons) for more information about how this works.

## Usage

### choose

Enter a comma separated list of values and pick one at random.

![Example usage: choose khajiit, dark elf, nord](http://clintonstrong.com/i/5bbb94.png)

### roll

Roll a die. Enter the number of sides, and have a random number chosen.

### rand

At its simplest, `rand` just an alias of `roll`. For example, `rand 20` and `roll 20` both do the same thing. However, you can define a lower and upper limit with `rand`.

Example usage:

- `rand 20`
- `rand 10-20`
- `rand 50 70`
- `rand 100..1000`

### flip

Flip a coin: heads or tails.

### should

Like `flip`, but with a yes or no response instead.
