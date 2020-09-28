package stateSingleton
//Always Go for singleton
type manager struct {
    state string
}
// cerner_2^5_2020
var singleton *manager
var once sync.Once
func GetManager() *manager {
    once.Do(func() {
        singleton = &manager{state: "off"}
    })
    return singleton
}
// cerner_2^5_2020
func (sm *manager) GetState() string {
    return sm.state
}
func (sm *manager) SetState(s string) {
    sm.state = s
}