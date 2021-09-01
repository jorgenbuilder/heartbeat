import Debug "mo:base/Debug";
import Float "mo:base/Float";
import Time "mo:base/Time";

actor {
    stable var counter : Nat = 0;
    stable var lastCron : Int = 0;

    public func count () : async Nat {
        counter := counter + 1;
        counter;
    };

    public func getCount () : async Nat {
        counter;
    };

    public func canister_heartbeat () : async () {
        Debug.print("Thump thump");
        // Pretty sure this doesn't do anything yet
        // Instead, we'll call this from the frontend and debounce it
        await cron();
    };

    private func cron () : async () {
        let interval : Int = 1 * 60 * Float.toInt(1e9);  // 1 minute in nano seconds
        let now = Time.now();
        if (now - lastCron < interval) {
            return;
        };
        Debug.print("Run crons");
        lastCron := now;
        ignore await count();
    };

};
