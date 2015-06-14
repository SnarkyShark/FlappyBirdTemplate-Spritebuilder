#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    // variable = (varType*)[fileSomething load:@"name"];
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];   // add character as a child of physicsNode
}

-(void)update:(CCTime)delta
{
    // put update code here
}

// put new methods here
// -(returnType)methodName: (parameterType)parameter
- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event {
    // this will get called every time the player touches the screen
    [character flap];
}

@end
