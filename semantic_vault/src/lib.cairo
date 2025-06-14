// SPDX-License-Identifier: MIT
#[feature("deprecated_legacy_map")]

#[starknet::contract]
mod Contract {
    use starknet::ContractAddress;
    use starknet::get_caller_address;
    use starknet::storage::StorageMapReadAccess;
    use starknet::storage::StorageMapWriteAccess;
    use starknet::storage::StoragePointerReadAccess;
    use starknet::storage::StoragePointerWriteAccess;


    #[storage]
    struct Storage {
        counter: u64,
        messages: LegacyMap<u64, felt252>,
        senders: LegacyMap<u64, ContractAddress>,
    }

    #[external(v0)]
    fn store_message(ref self: ContractState, message: felt252) {
        let caller = get_caller_address();
        let id = self.counter.read();
        self.messages.write(id, message);
        self.senders.write(id, caller);
        self.counter.write(id + 1);
    }

    #[external(v0)]
    fn get_message(self: @ContractState, id: u64) -> (felt252, ContractAddress) {
        let msg = self.messages.read(id);
        let sender = self.senders.read(id);
        (msg, sender)
    }

    #[external(v0)]
    fn total_messages(self: @ContractState) -> u64 {
        self.counter.read()
    }
}
