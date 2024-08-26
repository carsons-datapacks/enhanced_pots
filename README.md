# Enhanced Pots
Upgrades to make decorated pots more useful.

[Download Data Pack](https://github.com/carsons-datapacks/enhanced_pots/archive/refs/heads/main.zip)

Watch the video to see it in action:

[![](https://github.com/user-attachments/assets/3a81062c-f96c-450a-924c-727d6bb8ab1b)](https://youtu.be/vqQo6c4QMV4)

### Enhancement #1
Pots can store up to 96 items. This can be set up to 99 with the following command:

```mcfunction
data modify storage enhanced_pots max_stack_size set value 99
```

### Enhancement #2
Pots keep their contents when broken without a tool.

Use them like a shulker box that can only store 1 item type.

### Enhancement #3
Pots with gunpowder explode when shot with a flaming arrow or lit with flint and steel.

The size of the explosion is determined by the amount of gunpowder in the pot.

This can be disabled/enabled with the following command:

```mcfunction
# disable
data modify storage enhanced_pots disable_explosions set value true
# enable
data remove storage enhanced_pots disable_explosions
```

### Enhancement #4
Put flowers, saplings, or mushrooms in pots to display them.

## Options
### `max_stack_size`
Set the maximum number of items a pot can hold.

* Default: `96`
* Max: `99`

```mcfunction
data modify storage enhanced_pots max_stack_size set value 99
```

### `disable_explosions`
Disables gunpowder pots from exploding.

```mcfunction
# disable
data modify storage enhanced_pots disable_explosions set value true
# enable
data remove storage enhanced_pots disable_explosions
```

### `throwable`
Disables gunpowder pots from being thrown.

```mcfunction
# enable
data modify storage enhanced_pots throwable set value true
# disable
data remove storage enhanced_pots throwable
```
