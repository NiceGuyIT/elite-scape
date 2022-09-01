# Elite Scape website

This is the website for EliteScapeNC.com.

## Content

Here is the content for the site. This is for a landscaping company. Some photos are in the assets directory.

    Elite Scape
    5009 Parkmore Dr
    Holly Springs, NC 27540

## Requirements

- Responsive
- Mobile friendly
- Looks nice
- This should be a business or landing page style theme, not a blogging or documentation theme.
- If possible, don't have a white background. Maybe use an SVG background, a blob or some other texture/color/pattern 
  for the background.

## Quick Start

1. Download the extended version of hugo from their [releases page](https://github.com/gohugoio/hugo/releases).
   The extended version has support for Sass/SCSS.
2. Clone this repo: `git clone https://github.com/NiceGuyIT/elite-scape.git`
3. Init (download) the submodules (themes): `git submodule update --init`
4. Run the server: `hugo serve`

## Themes

Five example themes have been added as submodules. These themes have an `exampleSite` directory that has an example
site. To preview these themes stop the server and run the following.

1. cd to the exampleSite directory. For example: `cd themes/aether/exampleSite/`
2. Run the server referencing the themes directory that is 2 directories above: `hugo serve --themesDir ../../`
3. If you get a `module xxx not found` error, make sure the `theme` key in the config file matches the directory name.
   For example, the `hugo-theme-zen` theme has the theme as "zen" while the directory is called "hugo-theme-zen". Change
   the config to match and it will work.

## Development

Once a theme has been decided, copy some or all of the example site to the main directory to implement it.
