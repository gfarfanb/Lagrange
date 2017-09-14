# Lagrange

A minimalist Jekyll theme for running a personal blog. For everything you would ever need to know, please visit [the demo site](https://lenpaul.github.io/Lagrange/).

![alt text](https://cloud.githubusercontent.com/assets/8409329/21747617/7ef0e18e-d53a-11e6-8f90-8bb14b62ba20.jpg "Lagrange Demo Image")

### Quick-Start Guide

To start using Jekyll right away, [fork the Lagrange repository on GitHub](https://github.com/LeNPaul/Lagrange/fork). From there, you can rename the repository to 'USERNAME.github.io', where 'USERNAME' is your GitHub username, and edit the `_config.yml` file to your liking. Ensure that you have a branch named `gh-pages`. Your website should be ready immediately at 'http://USERNAME.github.io'.

Head over to the `_posts` directory to view all the posts that are currently on the website, and to see examples of what post files generally look like. You can simply just duplicate the template post and start adding your own content.

## How to install it

For a full local installation of Lagrange, [download your own copy of Lagrange](https://github.com/gfarfanb/way-of-the-developer/archive/gh-pages.zip) and unzip it into it's own directory. From there, open up your favorite command line tool, and enter `jekyll serve`. Your site should be up and running locally at [http://localhost:4000](http://localhost:4000). If you do not have installed `jekyll` command follow the next instructions:

### Windows approach

* Download and install Ruby using [RubyInstaller](https://rubyinstaller.org/). *In this case rubyinstaller-2.4.1-2-x64.exe was used*.
* Check Ruby installation in command line `ruby --version`, output must be similar to:
```bash
ruby 2.4.1p111 (2017-03-22 revision 58053) [x64-mingw32]
```
* Install Jekyll and dependencies via command line:
```bash
gem install jekyll jekyll-paginate jekyll-sitemap jekyll-feed
```
* Check Jekyll installation in command line `jekyll --version`, output must be similar to:
```
jekyll 3.5.2
```
* Jekyll is already to use.

### Ubuntu approach

You can check next [guide for installing Ruby on Ubuntu](https://gorails.com/setup/ubuntu/14.04). Check your Ubuntu version in terminal `lsb_release -a` and choice the best setup for you.

* Install some dependencies for Ruby:
```bash
sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs
```
* Installing with `rbenv` is a simple two step process. First you install `rbenv`, and then `ruby-build`:
```bash
cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.4.1
rbenv global 2.4.1
```
* Check Ruby installation in command line `ruby --version`, output must be similar to:
```bash
ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-linux]
```
* Install Jekyll and dependencies via command line:
```bash
gem install jekyll jekyll-paginate jekyll-sitemap jekyll-feed
```
* Check Jekyll installation in command line `jekyll --version`, output must be similar to:
```
jekyll 3.5.2
```
* Jekyll is already to use.


### Posts

You will find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

To add new posts, simply add a file in the `_posts` directory that follows the convention `YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works. If you already have a website built with Jekyll, simply copy over your posts.

### Configuration

To change site settings, edit the `_config.yml` file found in the root of your repository. Anything under 'Site Settings' can be tweaked to your liking.

If you are hosting your site on GitHub Pages, then committing a change to the `_config.yml` file will force a rebuild of your site with Jekyll. Any changes made should be viewable soon after. If you are hosting your site locally, then you must run `jekyll serve` again for the changes to take place.

In the `_config.yml` file, you'll be able to change the title of your site along with any tagline you want, which shows up in the site header, as well as the description of your site for SEO purposes. You can also change the social media information, and add your own social media icons.

### Everything Else

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll's GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: http://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
