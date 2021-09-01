export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'canister_heartbeat' : IDL.Func([], [], []),
    'count' : IDL.Func([], [IDL.Nat], []),
    'getCount' : IDL.Func([], [IDL.Nat], []),
  });
};
export const init = ({ IDL }) => { return []; };
