import { heartbeat } from "../../declarations/heartbeat";

async function update () {
  document.getElementById("counter").innerText = await heartbeat.getCount();
};

update();

setInterval(() => {
  // heartbeat.canister_heartbeat();
  update();
}, 5 * 1000);

document.getElementById("clickMeBtn").addEventListener("click", async () => {
  const greeting = await heartbeat.count();
  document.getElementById("counter").innerText = greeting;
});
