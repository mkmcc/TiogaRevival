# TiogaRevival

TiogaRevival is a fork of the original [Tioga](https://tioga.sourceforge.net) plotting library, a Ruby-based scientific graphics system known for its high-quality PDF output and LaTeX typesetting integration.

This project updates and preserves Tioga for use on macOS Sequoia and Ruby 2.x.


## What is Tioga?

Tioga is a Ruby library for creating publication-quality scientific figures, with:
* Full LaTeX rendering for math and text
* Fine-grained control over layout, axes, and everything on the page
* Scripting for automating plots

Originally developed in the mid-2000s, it saw use in astrophysics, physics, and other computational sciences.
While development seems to have stopped, its ease of use and the quality of its output remains unmatched (in my humble opinion).


## How did I make this repo?

I began with the latest Tioga source I could find from https://tioga.sourceforge.net:

```
sha256sum tioga-1.19.1.tar.xz
48c8cffbd91891fa2da94eb81168eee7e10b33deb7ea34adf093ac1ef8eb5339  tioga-1.19.1.tar.xz
```

This fork introduces only minimal changes:
* Replaced deprecated `Fixnum` with `Integer`
* Removed use of `Array#nitems`
* Substituted `Config` with `RbConfig` throughout
* Added missing load paths during setup
* Patched Unicode read errors in older scripts


TiogaRevival is a lightly-patched, fully functional version of Tioga that:
* **Builds and runs on macOS Sequoia**
* **Supports Ruby 2.x** (tested on system Ruby 2.6)
* **Preserves original behavior** and passes all original tests

This is not a redesign or rewrite — it's a faithful restoration with minimal changes.


## How can I use it?
### 1. Install dependencies
```
brew install gsl cairo pango pkg-config
```

### 2. Install Tioga
```
./HOME_INSTALL
```

### 3. Make a Plot
```
~/bin/tioga some-plot.rb -s
```


## Can I see some examples of Tioga plots?

* A sample of [research figures](https://mikemccourt.com/figure-gallery/) from my astronomy papers.
* A [lunar calendar](https://github.com/mkmcc/moon-poster) that I made for planning night hikes.
* Some [research posters](https://github.com/mkmcc/Posters) that I made in grad school.
* If you're interested in more examples, I have code for a number of my plots [here](https://github.com/mkmcc/TiogaPlots).


## Where is the Tioga documentation

The official documentation is on [sourceforge](https://tioga.sourceforge.net/doc/).

Just in case, I made a copy of the official documentation and added it to this repo.
It is under the folder `docs/`, and mirrored here: [Offline RDoc Documentation](https://mikemccourt.com/TiogaRevival/)


## Has this been tested?

Not really, no.  And neither do I know how to code in Ruby.
But it has allowed me to remake plots from my thesis, website, and my research posters, without issue.
I hadn't been able to build any of them for nearly a decade.
And if you're looking at this repo, you probably also want to be able to reuse some old work of yours.

Or maybe you just want to plot like it's 2010, we're two years into the great recession, the Iraq War is raging, Greece is about to default, Occupy Wall Street is picking up, DeepWater Horizon is spewing oil into the Gulf of Mexico, the first iPad just came out, Eyjafjallajökull is disrupting air travel worldwide, the Arab Spring uprisings are going on, Instagram just launched, and Obamacare has just been passed (to find out what was in it).
If so, more power to you!
