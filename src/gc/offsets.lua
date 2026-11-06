-- Per-game offset tables for Switch native images.
-- Extracted from the decompressed NSOs using hactool + symbol table analysis.
-- SDK version for GC: 14.3.1.0
return {
    -- Gravity Circuit (LÖVE 11.4, Switch, title 01008D9019128000, SDK 14.3.1.0)
    ["gravity-circuit"] = {
        present = 0x239360,
        mod0 = 0x8,
        got_memcpy = 0x51a6e8,

        sdk = {
            mod0 = 0x8,
            memcpy = 0x589198,

            -- nn::nifm
            nifm_init = 0x398de0,
            nifm_submit_now = 0x399ee0,
            nifm_ip = 0x399b40,

            -- nn::socket
            sock_init = 0x1413c0,
            socket = 0x140f50,
            bind = 0x140e40,
            listen = 0x140ed0,
            accept = 0x140e20,
            recv = 0x140da0,
            send = 0x140de0,
            close = 0x140fa0,
            setsockopt = 0x140ef0,
            poll = 0x140fd0,
            fcntl = 0x141090,
            sock_error = 0x1412c0,

            -- JankFFI gadgets (from SDK .text)
            thunk_ptr = 0x8962c,
            launder = 0x75500,
            launder_arg1 = 0x38,
            launder_callee = 0x48,
            launder_arg0 = 0x50,

            fiber_switch = 0x12ee80,
            fiber_pop_gp = 0x3ba524,
            fiber_capture = 0x31d6c,

            -- Full-ABI gadgets for ffi_call.lua
            ctx_restore = 0x5672e4,
            ctx_save = 0x567370,
            fp_capture = 0x563658,
        },
        expect = {
            present_head = "fd7bbea9f44f01a9fd030091081700d0",
            memcpy_head = "e80301cb090940923f0102eb22040054",
        },
    },

    -- Kingdom Rush (LÖVE 0.10.2, Switch) — offsets TBD
    ["kingdom-rush"] = {
        present = 0x0,
        mod0 = 0x0,
        got_memcpy = 0x0,
        sdk = {
            mod0 = 0x0,
            memcpy = 0x0,
            nifm_init = 0x0,
            nifm_submit_now = 0x0,
            nifm_ip = 0x0,
            sock_init = 0x0,
            socket = 0x0,
            bind = 0x0,
            listen = 0x0,
            accept = 0x0,
            recv = 0x0,
            send = 0x0,
            close = 0x0,
            setsockopt = 0x0,
            poll = 0x0,
            fcntl = 0x0,
            sock_error = 0x0,
            thunk_ptr = 0x0,
            launder = 0x0,
            launder_arg1 = 0x38,
            launder_callee = 0x48,
            launder_arg0 = 0x50,
            fiber_switch = 0x0,
            fiber_pop_gp = 0x0,
            fiber_capture = 0x0,
            ctx_restore = 0x0,
            ctx_save = 0x0,
            fp_capture = 0x0,
        },
        expect = {
            present_head = "",
            memcpy_head = "",
        },
    },
}
