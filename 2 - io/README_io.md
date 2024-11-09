# Io

## Notes

- Io is a prototype language (like JS). Every object is a clone of another, called a _prototype_.
  - In a prototype language, every object is a clone of another object rather than a class. In languages like Java, classes are templates that we use to create objects. A class and an object are different. But in a language like Io, we create a _clone_ of an object from a prototype. Both the clone and the prototype are objects. In Io, we have prototypes which we clone to create objects that are identical in most ways.
- At a high level, "Io syntax simple chains messages together, with each message returning an object and each message taking optional parameters in parenthesis." p.46

  - "Everything is a message that returns another receiver." p.46

- Objects are collections of slots. Every object supports a type slot. In Io, type is an object not a class.

- I like how Bruce outlines the "basic ground rules" of how things are going as of page 53
  > - Every _thing_ is an object
  > - Every _interaction_ with an object is a message
  > - You don't instantiate classes; you clone other objects called _prototypes_
  > - Objects remember their prototypes
  > - Slots contain objects, including method objects
  > - A message returns the value in a slot or invokes the method in a slot
  > - If an object can't respond to a message, it sends that message to its prototype

## Links

- [Io Language Website](https://iolanguage.org/)
- [Their tutorial (code examples)](https://iolanguage.org/tutorial.html)
- [Try it Online - Io](https://tio.run/#io)
