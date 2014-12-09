# gitweb-cookbook

TODO: Enter the cookbook description here.

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['gitweb']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### gitweb::default

Include `gitweb` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[gitweb::default]"
  ]
}
```

## License and Authors

Author:: ShowMobile, LLC (<jake.plimack@gmail.com>)
