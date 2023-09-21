```
files  – Contains static and custom files that the role uses to perform various tasks.
handlers – A set of handlers that are triggered by tasks of the role. 
meta – Includes metadata information for the role, its dependencies, the author, license, available platform, etc.
tasks – A list of tasks to be executed by the role. This part could be considered similar to the task section of a playbook.
templates – Contains Jinja2 template files used by tasks of the role. (Read more about how to create an Ansible template.)
tests – Includes configuration files related to role testing.
vars – Contains variables defined for the role. These have quite a high precedence in Ansible.
```
