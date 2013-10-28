== jTunes exercize

This exercize is designed to expose you to meaningful intermediate concepts that should maximize your ultimate independence in Rails development.

=== Step 1:

Fork this repository, and use the SSH repo URL to clone to your machine.

Throughout the exercise, as you complete work that satisfies you, push it to
your repository.

=== Step 2:

Create migrations that will support these domain concepts.  I've provided the
associations for you; you will need to ensure the proper foreign keys are
present in the migrations.

The files in app/models will tell you what associations you need.  The files in
spec/factories will tell you which fields you need to create (and of what
types).

Make some inferrences and try things.  If they don't work out, destroy the
models, reset your database, and try again.

You will want to generate rails migrations for this step, since the models and
factories are already created for you.

You'll know that you have something that can work when this command can complete
successfully.

```
bundle exec rake jtunes:seed
```

Extra credit for those who include the not-null restriction on booleans in this
scheme.

=== Topics:

==== The home page

Create a home page that lists the following:

The five albums most recently released, with artist and album name.
The five songs most often listened to, with artist and album name.

==== The artist page

Create an artist home page that displays the artist's name and icon image.

It should also contain their albums in release order (five maximum).
It should also contain their top five songs, based on play acount.

Note that the data is similar in terms of what's fetched.

When this page is ready, add links on the home page to the artist whereever an
artist name is mentioned.

=== The plot thickens

We released your work on jTunes, and it led to one of Tipper Gore's grandkids
playing 'Ye's [New Slaves](http://rd.io/x/QE_zK0Kppj8/) while she was around.
It turned into a major problem.

Describe how you might implement a restriction saying that only those with
accounts that had logged in and verified their age would see albums that
displayed the Parental Advisory sticker that Tipper spearheaded.


=== Advanced questions:

Let's say that we wanted to introduce a 'follow' concept to the site that
allowed users to follow each other, or artists.  What would the associations
look like?  What would the schema look like?  (Hint: the technique used is
called polymorphism.  Look it up in the docs, and take a stab at writing the
migration.)






