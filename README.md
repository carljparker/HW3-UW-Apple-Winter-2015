### How was your experience making this app? ###

This was the most challenging HW so far. I think that needing to learn
and use objects (interfaces & protocols), delegates, and data sources
all in a single project was what made it so challenging.


### What resources did you find helpful? ###
Actually, I think the most helpful resource overall was Xcode itself and
the real-time way that it flags my code when I start to go off course.
For someone like me, who is just starting out with Objective-C, this
really helped to prevent me from making a lot of simple mistakes.

The articles on enumeration were also helpful. Using `for id obj in
collection` is much nicer than using a traditional `for (;;;)` loop.
One questions that comes up around the `for id obj in collection` syntax
is whether it is guaranteed to return the objects in the array in the
same order in which you would get them if you enumerated from lowest to
highest index with a traditional `for (;;;)` loop. I didn't see anyplace
that addresses this question. 


### One well-formed question or observation about the app, technologies used, or related topics. ###

Is there any way that I can call **controlTextDidChange** directly from
my code? Or can it be called only by the system? This method contained
my code for testing whether it was okay to add the text that is
currently in the input text field. I ended up needing to duplicate that
code in the method that toggles whether duplicates are allowed. I would
have preferred to just call **controlTextDidChange** from that method.

Also, my ToDoList class has a title property, which is the title of the
list itself (as opposed to the titles of the items in the list). I want
to set the title bar of the application to the title of the ToDoList,
but I was not able to figure out how to do that. By default, the title
bar just says "Window".


*** END ***

