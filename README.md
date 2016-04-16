# inadyn-cookbook

This cookbook installs inadyn to configure automatic dns renewal

## Supported Platforms

Debian 8

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['inadyn']['conf']['logfile']</tt></td>
    <td>String</td>
    <td>Path to logfile</td>
    <td><tt>/var/log/inadyn/inadyn.log</tt></td>
  </tr>
  <tr>
    <td><tt>['inadyn']['conf']['verbose']</tt></td>
    <td>Integer</td>
    <td>Whether to have verbose logs or not</td>
    <td><tt>1</tt></td>
  </tr>
  <tr>
    <td><tt>['inadyn']['conf']['period']</tt></td>
    <td>Integer</td>
    <td>Length of time to wait before checking for updates</td>
    <td><tt>300</tt></td>
  </tr>
  <tr>
    <td><tt>['inadyn']['conf']['providers']</tt></td>
    <td>Array</td>
    <td>List of providers. Each provider should have a system, username, password, and alias; all strings.</td>
    <td><tt>[]</tt></td>
  </tr>
</table>

## Usage

### inadyn::default

Include `inadyn` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[inadyn::default]"
  ]
}
```

## Authors

Bryan Alves (<bryanalves@gmail.com>)
