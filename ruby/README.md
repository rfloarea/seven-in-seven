# Ruby Notes

_Some notes that don't belong as inline comments._

## Notes

Hashes

- Hashes, "Remember that collections are buckets for objects. In the hash bucket, every object has a label. The label is the key, and the object is the value. A hash is a bunch of key-value pairs." p.22
- I might have phrased it as: A collection is like a bucket for objects. A hash is a collection, it is a type of bucket. In this type of bucket, every object is labelled to keep shit organized. We call this label a 'key', just to make things more complicated. And we call the object a 'value', also to make things more complicated. So in technical jargon, a hash is a collection of key-value pairs.
- See line 43 in day_two.rb for stuff on hashes.

Modules and Mixins

- Ruby uses modules to get around complicated and problematic inheritance structures
- "A module is a collection of functions and constants" p. 28
  - I assume he doesn't mean collections as in hashes. More in the generic sense.
- Including a module as part of a class is called a 'mixin (see, [to_file.rb](./to_file.rb)). When you do this, the behaviors and constants of that module become part of that class.
- The cool part (or one of the cool parts) is that we can add more modules and subclasses to the Person class. And each of these subclasses will have the behaviors of all the mixins, without needing to know how they're implemented.
- The core idea is to provide a single inheritance, plus mixins which creates a nice little bundle of behavior without a complex inheritance tree. You could call this "single-inheritance object-oriented structure".

## Useful things

- [Ruby API](https://rubyapi.org/)
  - "comprehensive and optimised search for Ruby documentation"
- [Programming Ruby: THe Pragmatic Programmer's Guide](https://ruby-doc.com/docs/ProgrammingRuby/)
  - "This book is a tutorial and reference for the Ruby programming language. Use Ruby, and you'll write better code, be more productive, and enjoy programming more."

## Questions

- What is the programming model for Ruby?
  - Object-oriented
- What is Ruby's typing model?
  - Duck typing. wtf is that?

## Reflections

2024-10-14
Yup, I'm feeling the magic. Especially when I hit the little random number game. Setting up terminal inputs as easy as that feels like cheating. I'm not an experienced programmer, but dam, using Ruby _does_ make me happy.

2024-10-18
I'm looking at some professional Ruby code and dam, this stuff is beautiful. The sparseness and legibility really speaks to me. I feel that I _want_ to code because of it. Not that I don't want to in other languages. But I can't deny a special draw from Ruby. I want to learn her secrets :D

As an example, here is a gem for [working with Webmentions](https://github.com/indieweb/webmention-client-ruby). I find myself wanting to sit down and just read this code.
