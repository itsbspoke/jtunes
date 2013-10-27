== jTunes exercize

This exercize is designed to expose you to meaningful intermediate concepts that should maximize your ultimate independence in Rails development.

=== Step 1:

Fork this repository, and use the SSH repo URL to clone to your machine.

=== Step 2:

Create migrations that will support these domain concepts.  I've provided the
associations for you; you will need to ensure the proper foreign keys are
present in the migrations.

*User*

As it comes from Devise is fine, that's already present.

*Artist*

has_many :albums
has_many :songs, :through => :albums
name: Limited length string
icon: An image for the artist

*Album
belongs_to :artist
has_many :songs

name: limited length string
icon: An image for the album
clean: boolean, indicating OK for play by minors
release_date: 

*Song
belongs_to :album
belongs_to :artist
name: limited length string
length_in_seconds: integer

*Play
belongs_to :user
belongs_to :song

=== Advanced questions:

Let's say that we wanted to introduce a 'follow' concept to the site that
allowed users to follow each other, or artists.  What would the associations
look like?  What would the schema look like?  (Hint: the technique used is
called polymorphism.)






