import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'canister_heartbeat' : () => Promise<undefined>,
  'count' : () => Promise<bigint>,
  'getCount' : () => Promise<bigint>,
}
