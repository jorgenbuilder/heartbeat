# Heartbeat

![](heartbeat.mov)

`canister_heartbeat` is coming, but it's probably not reliable enough for the hackathon. In this implementation, the frontend periodically calls the `canister_heartbeat` method, and the canister debounces those calls to run on the desired interval.

Try it out:

```shell
dfx start &
dfx deploy
```

Then open it up in chrome.
