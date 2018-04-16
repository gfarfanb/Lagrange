
# Way of the Developer theme - A flavour of Lagrange

[![Build Status](https://travis-ci.org/gfarfanb/way-of-the-developer.svg?branch=gh-pages)](https://travis-ci.org/gfarfanb/way-of-the-developer)

Based on [Lagrange], this is a minimalist Jekyll theme for running a personal blog. 
This flavour contains all original [Lagrange] features with some additional as:

- Fork of [Lagrange]
  - Modern and minimal design
  - Responsive template for pages and posts
  - [Google Analytics](https://analytics.google.com/)
  - 404 page
  - Sitemap
  - RSS feed
  - Pagination
  - Blogging functionality
    - Archive page
    - Discus comments
    - Related posts
    - Reading time
    - Author signature
    - Social sharing
- Additional features
  - [Algolia](https://www.algolia.com/) 
  - Donation page (PayPal, Bitcoins)
  - [Tags] page
  - [Categories][Tags] page
  - Posts series
  - Improvements in related posts
  - More sharing options
  - Travis CI integration
    - [Algolia](https://github.com/algolia/algoliasearch-jekyll) indexing
    - [HTML-Proofer](https://github.com/gjtorikian/html-proofer) validation
  - Scripts
    - Add post
    - Add draft
    - Publish draft

## Quick-Start guide

To start using Jekyll right away, 
[fork the Way of the Developer repository on GitHub](https://github.com/gfarfanb/way-of-the-developer/fork). 
From there, you can rename the repository to `USERNAME.github.io`, where `USERNAME` is your GitHub username, 
and edit the `_config.yml` file to your liking. Ensure that you have a branch named `gh-pages`. 
Your website should be ready immediately at `http://USERNAME.github.io`.

Head over to the `_posts` directory to view all the posts that are currently on the website, 
and to see examples of what post files generally look like. You can simply just duplicate the 
template post and start adding your own content.

### How to install it

For a full local installation,
 [download your own copy](https://github.com/gfarfanb/way-of-the-developer/archive/gh-pages.zip) 
 and unzip it into it's own directory. From there, open up your favorite command line tool, 
 and enter `jekyll serve`. Your site should be up and running locally at 
 [http://localhost:4000](http://localhost:4000). If you do not have installed `jekyll` command 
 follow the next instructions:

#### Windows approach

* Check Ruby installation in command line `ruby --version`. If you do not have Ruby then download 
and install it using [RubyInstaller](https://rubyinstaller.org/) (in this case *rubyinstaller-2.4.1-2-x64.exe* 
was selected).  In case that you already have Ruby, the output must be similar to:
```bash
ruby 2.4.1p111 (2017-03-22 revision 58053) [x64-mingw32]
```
* Install Bundler via command line (maybe you need to **run as Administrator** mode):
```bash
gem install bundler
```
* Install Jekyll and all dependencies.
```bash
bundle install
```
* Check Jekyll installation in command line `jekyll --version`, output must be similar to:
```bash
jekyll 3.5.2
```
* Jekyll is already to use.

#### Ubuntu approach

* Check Ruby installation in command line `ruby --version`. If you do not have Ruby you can follow 
[this guide for installing Ruby on Ubuntu](https://gorails.com/setup/ubuntu/14.04) 
(remember choice the best setup based on Ubuntu version using `lsb_release -a`). 
In case that you already have Ruby, the output must be similar to:
```bash
ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-linux]
```
* Install Bundler via command line:
```bash
gem install bundler
```
* Install Jekyll and all dependencies.
```bash
bundle install
```
* Check Jekyll installation in command line `jekyll --version`, output must be similar to:
```bash
jekyll 3.5.2
```
* Jekyll is already to use.

### Posts

You will find this post in your `_posts` directory. Go ahead and edit it and re-build the site to 
see your changes. You can rebuild the site in many different ways, but the most common way is to 
run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

To add new posts, simply add a file in the `_posts` directory that follows the convention 
`YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source 
for this post to get an idea about how it works. If you already have a website built with Jekyll, 
simply copy over your posts.

### Configuration

To change site settings, edit the `_config.yml` file found in the root of your repository. 
Anything under 'Site Settings' can be tweaked to your liking.

If you are hosting your site on GitHub Pages, then committing a change to the `_config.yml` 
file will force a rebuild of your site with Jekyll. Any changes made should be viewable soon after. 
If you are hosting your site locally, then you must run `jekyll serve` again for the changes to take place.

In the `_config.yml` file, you'll be able to change the title of your site along with any tagline you want,
which shows up in the site header, as well as the description of your site for SEO purposes. 
You can also change the social media information, and add your own social media icons.

### Posting images

It is a really bad practice to include images inside the main code of the project. So, in orther to avoid
that practice just read this useful article 
[Posting Images on Github's Wiki](https://publicobject.com/2014/12/31/posting-images-on-githubs-wiki/).
Basically you need to put your images under Wiki's project repository, after that the images will be 
accesible using this root `https://raw.githubusercontent.com/wiki/<github-username>/<github-repository>`.
The file `_data/settings.yml` contains a property `assets-img` with the root path and whatever part
you want to show an image, just put the resource like 
`{{ site.data.settings.assets-img }}/any_image_you_already_push_to_wiki.png`.

### Everything Else

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. 
File all bugs/feature requests at [Jekyll's GitHub repo][jekyll-gh]. If you have questions, 
you can ask them on [Jekyll Talk][jekyll-talk].

## User customization

### Authors and social links

Your contact information edit in the `_data/authors.yml` (name, email, Twitter and GitHub usernames, 
or whatever you need to include). Current listed fields are used in several parts during Jekyll building. 
If you don't have any, no problem, respective links will be broken :sweat_smile:.

```yml
primary:
  name: <author-name>
  email: <author-email>
  envelope: <author-email>
  keybase: <author-keybase-username>
  github: <author-github-username>
  twitter: <author-twitter-username>
#  linkedin: <author-linkedin-username>
#  facebook: <author-facebook-username>
#  google-plus: <author-google-plus-community-username>
#  stack-overflow: <author-stackoverflow-username>
```

In the `_data/settings.yml` are listed the social links that you want to share. The list is 
matched with accounts' `primary` author using `icon` field, and if you do not have any social,
just comment `primary` author account. On the other hand, the list is used both in menu and footer, 
you can hide any link in menu part using `head: false` field. Available social icons are powered 
by [Font Awesome](http://fontawesome.io/icons/), so you can use any icon that they offer.
```yml
social:
- {icon: 'github', link: 'https://github.com/', head: true}
- {icon: 'twitter', link: 'https://twitter.com/', head: false}
- {icon: 'linkedin', link: 'http://www.linkedin.com/in/', head: false}
- {icon: 'facebook', link: 'https://facebook.com/', head: false}
- {icon: 'google-plus', link: 'https://plus.google.com/communities/', head: false}
- {icon: 'stack-overflow', link: 'https://stackoverflow.com/users/', head: false}
- {icon: 'envelope', link: 'mailto:', head: true}
```

### Settings about user accounts

In order to add the next information you are going to need a few suscriptions:

<table>
  <tr>
  	<th scope="col">Account</th>
  	<th scope="col">Function</th>
  	<th scope="col">File</th>
  	<th scope="col">Configuration</th>
  </tr>
  <tr>
  	<td><a href="https://github.com/">GitHub</a></td>
  	<td>Edit page</td>
  	<td>_data/settings.yml</td>
  	<td>
  		github-repository: <em>&lt;github-repository-name&gt;</em><br>
  		github-branch: <em>&lt;github-repository-branch&gt;</em><br>
  		assets-img: <em>https://raw.githubusercontent.com/wiki/&lt;github-username&gt;/&lt;github-repository-name&gt;</em>
  	</td>
  </tr>
  <tr>
    <td><a href="https://www.google.com/analytics/">Google Analytics</a></td>
  	<td>Analytics</td>
  	<td>_data/settings.yml</td>
  	<td>
  		google-tracking-id: <em>&lt;google-analytics-tracking-id&gt;</em>
  	</td>
  </tr>
  <tr>
    <td><a href="https://disqus.com/">Disqus</a></td>
  	<td>Comments</td>
  	<td>_data/settings.yml</td>
  	<td>
  		disqus:<br>
  		&nbsp;&nbsp;disqus-shortname: <em>&lt;disqus-site-shortname&gt;</em>
  	</td>
  </tr>
  <tr>
  	<td rowspan="2"><a href="https://www.algolia.com/">Algolia</a></td>
  	<td>Indexing</td>
  	<td>_config.yml</td>
  	<td>
  		algolia:<br>
  		&nbsp;&nbsp;application_id: <em>&lt;algolia-application-ip&gt;</em><br>
  		&nbsp;&nbsp;index_name: <em>&lt;algolia-index-name&gt;</em>
  	</td>
  </tr>
  <tr>
  	<td>Searching</td>
  	<td>_data/settings.yml</td>
  	<td>
  		algolia-search: <em>&lt;algolia-search-api-key&gt;</em>
  	</td>
  </tr>
  <tr>
    <td><a href="https://www.paypal.com">PayPal</a></td>
  	<td>Donation</td>
  	<td>_data/settings.yml</td>
  	<td>
  		donate-paypal: <em>&lt;paypal-donation-id&gt;</em>
  	</td>
  </tr>
  <tr>
    <td><a href="https://www.blockchain.com/">Blockchain</a></td>
  	<td>Donation</td>
  	<td>_data/settings.yml</td>
  	<td>
  		donate-blockchain: <em>&lt;blockchain-payment-address&gt;</em>
  	</td>
  </tr>
</table>

### Checklist

Before to put your site into production, maybe you should complete the next list:

- [ ] Remove post from `_posts`
- [ ] Edit the `_config.yml` for: Algolia indexing, pagination and related posts settings.
- [ ] Edit the `_data/settings.yml` for: Title/tagline, source code repository, accounts related and social links.
- [ ] Describe in `about.md` the purpose of your site.
- [ ] Describe in `contact.md` how people can reach you.
- [ ] Edit `README.md` (at least for license signature).
- [ ] Change all what you need.

## Travis CI Integration

The file names `.travis.yml` contains a little [Travis Ci](https://travis-ci.org) pipeline.
 This pipeline executes:
a) site indexation, b) site building and c) HTML validation.

```yml
language: ruby
cache: bundler
branches:
  only:
    - gh-pages
script: 
  - bundle exec jekyll algolia push
  - bundle exec jekyll build 
  - bundle exec htmlproofer ./_site --disable-external --empty-alt-ignore
rvm:
 - 2.2.2
```

> `.travis.yml` uses a `Gemfile` to install build dependencies. Don't worry it's already defined 
to this project.

If you need Travis CI, create/open your dashboard, configure a new repository, switch on `Build pushes` 
in settings and add an [environment variable](http://docs.travis-ci.com/user/environment-variables/) 
also in settings. 

```properties
ALGOLIA_API_KEY=<Algolia-Admin-API-Key>
```

All push to your branch (e.g. `gh-pages`) Travis will catch them and then trigger pipeline for you.

## Scripts

You can generate a new draft file by running:
```bash
_scripts/newdraft.rb "Title of your post"
```

After past all post reviews, you can promote your draft to post by running:
```bash
_scripts/publishdraft.rb _draft/Title-of-your-post.md
```

If you are going to write a coffee post, you can generate a new post by running:
```bash
_scripts/newpost.rb "Title of your post"
```

## License

Copyright © 2018, [Giovanni Farfán B](https://github.com/gfarfanb). Released under the 
[MIT License](https://opensource.org/licenses/MIT).

[Lagrange]: https://github.com/LeNPaul/Lagrange
[Tags]: https://codinfox.github.io/dev/2015/03/06/use-tags-and-categories-in-your-jekyll-based-github-pages/

[jekyll-docs]: http://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/

