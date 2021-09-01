export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'canister_heartbeat' : IDL.Func([], [], []),
    'getCount' : IDL.Func([], [IDL.Nat], []),
  });
};
export const init = ({ IDL }) => { return []; };
