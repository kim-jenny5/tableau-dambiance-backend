# Tableau d'Ambiance

## Background

Tableau d'Ambiance is a picture board SPA (single-padge application), similar to that of VSCO/Tumblr, where users can create "collections," or albums and upload photos onto said collections. Due to the nature of this application, it does not have any secure user authentications (at least at this moment). Therefore, other users are able to see the pictures you upload if they get ahold of your username. On the other hand, this is a great application to share with your friends to create public photo albums to immortalize your memories!

## Tech Stack

My backend was a Rails API and my [frontend](https://github.com/kim-jenny5/tableau-dambiance-frontend) was done using vanilla JavaScript and HTML. Active Storage was also configured to handle picture file uploads and Amazon S3 cloud storage was used to handle the storing of the Active Storage attachments.

CSS and Bootstrap was used as well to design the frontend.

## Usage

To get started:

- Clone this repo
- Run `bundle` or `bundle install` to install the gems 💎
- Run `rake db:migrate` as well as `rake db:seed` (to see sample lists and movies)
- Run `rails s` in your console and go to `localhost:3000` in your browser to view locally

To view the API live:

- Visit [this link here](https://tableau-dambiance.herokuapp.com/)

## License

MIT License

Copyright (c) 2021 Jenny Kim

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
