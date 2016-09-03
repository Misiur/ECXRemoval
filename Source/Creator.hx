package;

import ecx.Service;
import ecx.Wire;

class Creator extends Service
{
    var _foo:Wire<Foo>;
    var _bar:Wire<Bar>;

    public function new() {}

    public function createFoobar()
    {
        var entity = world.create();
        _foo.create(entity);    
        _bar.create(entity);    

        world.commit(entity);

        return entity;
    }
}