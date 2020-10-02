//programme for cerner_2^5_2020
+ (id)sharedInstance {
static MyObject *sharedInstance = nil;
static dispatch_once_t onceToken;
dispatch_once(&onceToken, ^{
sharedInstance = [[self alloc] init];
});
return sharedInstance;
}
// get singleton
- (id)init {
if (self = [super init]) {
	NSLog(@"Hello :: %@", "cerner_2^5_2020");
}
return self;
}