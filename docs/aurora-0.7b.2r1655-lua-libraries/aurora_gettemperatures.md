## Details

_table_ **Aurora.GetTemperatures** _()_

Get current temperatures of the motherboard, CPU, GPU, and RAM.

Script Permissions: None

Table Values:

| Key | Data Type | Description                     |
| --- | --------- | ------------------------------- |
| BRD | Float     | Temperature of the motherboard. |
| CPU | Float     | Temperature of the CPU.         |
| GPU | Float     | Temperature of the GPU.         |
| RAM | Float     | Temperature of the RAM.         |

Example Table:

```
["BRD"]: 33.51171875
["CPU"]: 55.22578125
["GPU"]: 50.384375
["RAM"]: 47.15234375
```

## Example Script

See [Aurora Functions Example Script](./example-scripts/ExampleAuroraFunctions/Main.lua) for an example of using this function.
