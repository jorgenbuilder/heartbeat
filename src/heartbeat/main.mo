import Debug "mo:base/Debug";
import Float "mo:base/Float";
import Time "mo:base/Time";

actor {
    stable var counter : Nat = 0;
    stable var lastCron : Int = 0;

    public func getCount () : async Nat {
        counter;
    };

    public func canister_heartbeat () : async () {
        // Tested this method on mainnet and local: it doesn't do anything.
        // Instead, we'll call this from the frontend and debounce it.
        // FYI making this a query func breaks it.
        Debug.print("Thump thump");
        cron();
    };
    
    func count () : Nat {
        counter := counter + 1;
        counter;
    };

    private func cron () : () {
        // Debounce requests based on desired interval.
        let interval : Int = 1 * 60 * Float.toInt(1e9); // 1 minute in nano seconds.
        let now = Time.now();
        if (now - lastCron < interval) {
            return;
        };
        // Run our tasks.
        Debug.print("Run crons");
        lastCron := now;
        ignore count();
    };

};
