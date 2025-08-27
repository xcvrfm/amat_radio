# amat_radio

A library of tools related to Amateur Radio.

[![Package Version](https://img.shields.io/hexpm/v/amat_radio)](https://hex.pm/packages/amat_radio)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/amat_radio/)

## uls

The `uls` module focuses on working with the FCC's Universal Licensing System (ULS) data, which is publicly avaialable.
There are functions to download daily/weekly data files, as well as the SQL schema.

More information about the FCC's ULS system can be found at
https://www.fcc.gov/wireless/data/public-access-files-database-downloads

```sh
gleam add amat_radio@1
```

```gleam
import amat_radio

pub fn main() -> Nil {
  // TODO: An example of the project in use
}
```

Further documentation can be found at <https://hexdocs.pm/amat_radio>.

## Development

```sh
gleam test  # Run the tests
```
