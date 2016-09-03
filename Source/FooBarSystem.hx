package;

import ecx.Family;
import ecx.System;
import ecx.Wire;

class FooBarSystem extends System
{
    var _foo:Wire<Foo>;
    var _bar:Wire<Bar>;

    var entities:Family<Foo, Bar>;

    public function new() {}

    override function update()
    {
        for(entity in entities)
        {
            var foo = _foo.get(entity);
            var bar = _bar.get(entity);
            trace(foo.a, bar.b);
        }
    }
}