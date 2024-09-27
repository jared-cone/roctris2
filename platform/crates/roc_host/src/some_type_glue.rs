#[derive(Clone, Copy, PartialEq, PartialOrd, Eq, Ord, Hash)]
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
