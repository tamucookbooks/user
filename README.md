User Cookbook
=============
Provides a lwrp to manage user accounts on systems.

Attributes
----------
#### user::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['user']['root_home']</tt></td>
    <td>String</td>
    <td>default root home path</td>
    <td><tt>/home</tt></td>
  </tr>
  <tr>
    <td><tt>['user']['default_shell']</tt></td>
    <td>String</td>
    <td>default shell to use per platform</td>
    <td><tt>/bin/bash</tt></td>
  </tr>
</table>

Resource/Provider
-----------------

## user_account

### Actions
- **create** - creates a user
- **delete** - deletes a user

### Attributes
- **username** - name of user account
- **password** - user password
- **default_group** - name of an existing default group to place user in (instead of creating a group same as username)
- **groups** - array of groups to add to the user
- **home** - override home dir if desired
- **manage_home** - whether to create the home dir
- **ssh_keys** - array of ssh keys
- **uid** - specify uid
- **shell** - shell to use
- **include_nodes** - only add user to list of nodes
- **exclude_nodes** - don't add user to list of nodes

Usage
-----
#### user::default

Just include `user` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[user]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
- Author:: Jim Rosser(jarosser06@tamu.edu)

```text
copyright (C) 2014 Texas A&M

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the “Software”), to deal in the Software without restriction,
including without limitation the rights to use, copy, modify, merge,
publish, distribute, sublicense, and/or sell copies of the Software,
and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
```
