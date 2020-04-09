==============
Class Diagrams
==============

Design Patterns
===============

Build Pattern
-------------

.. uml::

    @startuml
    title Builder Pattern
    skinparam monochrome true
    skinparam noteFontSize 9

    class Director {
        -builder: Builder
        +Construct(): void
    }
    note left of Director::Construct()
    this.builder.buildePart1()
    this.builder.buildePartx()
    end note

    abstract class Builder {
        +BuildPart1(): void
        +BuildPartx(): void
        +GetProduct(): Product
    }

    class ConcreteBuilder {
        +BuildPart1(): void
        +BuildPartx(): void
        +GetProduct(): Product
    }

    Director o- Builder
    Builder <|.. ConcreteBuilder
    Product <. ConcreteBuilder : constructs
    @enduml

Command Pattern
---------------

.. uml:: command.txt