package;

import ecx.Engine;
import ecx.World;
import ecx.WorldConfig;
import openfl.display.Sprite;

class Main extends Sprite
{
    public function new()
    {
        super();
        
        var config = new WorldConfig();

        config.add(new UpdateSystem());

        config.add(new FooBarSystem());

        var foo = new Foo();
        config.add(foo);
        var bar = new Bar();
        config.add(bar);

        var world = Engine.createWorld(config, 1000);

        var entity = world.create();
        foo.create(entity);    
        bar.create(entity);    

        world.commit(entity);

        haxe.Timer.delay(function() {
            foo.remove(entity);
            world.commit(entity);
        }, 300);
    }
}