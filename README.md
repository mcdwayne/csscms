# CSSCMS
<b>A CMS based on stuffing everything we can into CSS and leveraging Bash tools to handle everyting else.</b>

## What?

[Go take a look at the CSSCMS website](https://csscms.club) to see what this looks like in practice. Inspect the HTML. 


## Why? 

Becasue why am I using `npm` or `GoLang` or even `PHP` to write `HTML` and `CSS` and maybe some simple `JS`? 

Can't I just write that `HTML` and `CSS` directly?" 

Turns out I can can. 

But then I have to keep track of the headers, footers, common menus and all the things from every page. The value of the CMS is that you can make those parts build dynamically. I think along the way, at some level, we want to have all this freedom to make changes quickly and iteratively, even though it is kinda rare to change certain thinks like the header and footer that much. I asked myself what if we solved this part of the CMS problem with some good old fashioned `CSS`. 

No, really. 

If you [go take a look at the CSSCMS website](https://csscms.club) you can see a working example of this. Made with a principle of 'if we can stuff it in the CSS we shall', I even go so far as to stuffing entire pages of content in the `content:before` selector. 

## How?

### Installation

Clone this repo locally and open in your favorite IDE. 
Open the `index.html` file in a browser. 

### Look at the file layout

No surprises here.  Index in the root and everything else in a logicial folder.

### Making new posts

1. Install the tool by running in your terminal: `chmod 755 postcreator.sh` 
2. Use the tool by running `./postcreator.sh name-of-new-post` <br>
This will clone a new `name-of-new-post.html` and `name-of-new-post.css` from the `src` file and insert a link to the new post at the top of the list on our `pageindex.html` using good ol' `sed`. 
3. Drop your content into the content section and style that post with the css file stored over in `css/post/css/name-of-new-post.css`

### Markdown FTW! 

The fastest and best way to build out HTML, like I am doing right now, is through Markdown and a good editor. I am not building a Markdown to HTML parcer. There are a lot out there and I personally like [MacDown](https://macdown.uranusjr.com/). If they spit out HTML then they are good.  

### Deleting posts

1. Install the tool by running in your terminal: `chmod 755 postdeleter.sh`
2. Use the tool by running `./postdeleter.sh name-of-post-to-delete` <br>
This deleted the `html` and `css` as well as removing the link from the `postindex.html`

## Modifying things globally?

But what about the links in the menus and such that live outside the CSS? For that, there has been a solution for many, many years and it is called `sed` or `awk`. These tools are very well doucmented and can be seen in action in the `postcreator.sh` and `postdeleter.sh` tooling.  Theoretically you could build a command line to rule all of this, but, hey this is a proof of concept.  


## Software Updates?

Nope. Not going to happen. But guess what, unless they change how the browser reads CSS and HTML this is not likely going to ever need an update. No `npm` libraries to keep track of, no weird dependencies opening me up for hacks. 

## Hosting

GithubPages is my suggestion but literally any hosting on earth is good enough for presenting a flat static site.  Again, once set up, never ever worry about updating your site code again, ever, or until you want to update the content.  

## Is this a good idea?

Likely no. There are likely a lot of issues that I am not seeing here or thinking through and this is meant as a way to play out a thought experiment more than I think it should go into proudction for most use cases. However, there is a specific set of blogs that are basically just 
