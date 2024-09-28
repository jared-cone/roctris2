// ⚠️ GENERATED CODE ⚠️ - this entire file was generated by the `roc glue` CLI command

#![allow(unused_unsafe)]
#![allow(dead_code)]
#![allow(unused_mut)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(non_upper_case_globals)]
#![allow(clippy::undocumented_unsafe_blocks)]
#![allow(clippy::redundant_static_lifetimes)]
#![allow(clippy::unused_unit)]
#![allow(clippy::missing_safety_doc)]
#![allow(clippy::let_and_return)]
#![allow(clippy::missing_safety_doc)]
#![allow(clippy::needless_borrow)]
#![allow(clippy::clone_on_copy)]
#![allow(clippy::non_canonical_partial_ord_impl)]


use roc_std::RocRefcounted;
use roc_std::roc_refcounted_noop_impl;

#[derive(Clone, Copy, PartialEq, PartialOrd, Eq, Ord, Hash, )]
#[repr(u8)]
pub enum SomeType {
    Hello = 0,
    Two = 1,
    World = 2,
}

impl core::fmt::Debug for SomeType {
    fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
        match self {
            Self::Hello => f.write_str("SomeType::Hello"),
            Self::Two => f.write_str("SomeType::Two"),
            Self::World => f.write_str("SomeType::World"),
        }
    }
}

roc_refcounted_noop_impl!(SomeType);



pub fn mainForHost() -> SomeType {
    extern "C" {
        fn roc__mainForHost_1_exposed_generic(_: *mut SomeType);
    }

    let mut ret = core::mem::MaybeUninit::uninit();

    unsafe {
        roc__mainForHost_1_exposed_generic(ret.as_mut_ptr(), );

        ret.assume_init()
    }
}