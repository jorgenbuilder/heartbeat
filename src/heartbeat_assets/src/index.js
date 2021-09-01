import { heartbeat } from "../../declarations/heartbeat";

async function update () {
  document.getElementById("counter").innerText = await heartbeat.getCount();
};

update();

setInterval(() => {
  heartbeat.canister_heartbeat();
  update();
}, 5 * 1000);