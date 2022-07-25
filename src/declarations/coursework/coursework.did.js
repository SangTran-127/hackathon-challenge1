export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'add' : IDL.Func([IDL.Nat, IDL.Nat], [IDL.Nat], ['query']),
    'clear_counter' : IDL.Func([], [], ['oneway']),
    'days_to_second' : IDL.Func([IDL.Nat], [IDL.Nat], ['query']),
    'divide' : IDL.Func([IDL.Nat, IDL.Nat], [IDL.Bool], ['query']),
    'increment_counter' : IDL.Func([IDL.Nat], [IDL.Nat], ['query']),
    'is_even' : IDL.Func([IDL.Nat], [IDL.Bool], ['query']),
    'maximum' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Nat], ['query']),
    'remove_from_array' : IDL.Func(
        [IDL.Vec(IDL.Nat), IDL.Nat],
        [IDL.Vec(IDL.Nat)],
        ['query'],
      ),
    'selection_sort' : IDL.Func(
        [IDL.Vec(IDL.Nat)],
        [IDL.Vec(IDL.Nat)],
        ['query'],
      ),
    'square' : IDL.Func([IDL.Nat], [IDL.Nat], ['query']),
    'sum_of_array' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Nat], ['query']),
  });
};
export const init = ({ IDL }) => { return []; };
