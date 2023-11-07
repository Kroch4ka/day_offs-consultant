# DayOffs Source Template

This repo is a template for building [day_offs] sources.
DaysOff is a plugin system that provides a common interface for day offs sources.
Every source is defined into it's own gem. Use this repository to create your own source gem.

### Setting up and cloning the repo
You can start using GitHub's [Use this template][use-template] button.
![Use this template](https://docs.github.com/assets/images/help/repository/use-this-template-button.png)
This will create a repository based off from this template.
After that is created, you can clone it locally to start working on it.

### Refactoring the template

The next step is for you to find and replace all the "parametrised" names in this template and change them to make it unique.
First of all, you should decide on the name of your source.
The current convention (which is by no means mandatory) is to call source gems as `days_off-<source_name>`.

In this template repository, the placeholder for your chosen source name is `MySource` (`my_source`).
So once you decide on the final name you want to use you should update all occurrences of `MySource` and all files with `my_source` in their name with the new name you chose.

### Main implementation

The bulk of the implementation is in the `DayOffs::Sources::MySource` class.

[use-template]: https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template
[day_offs]: https://github.com/Kroch4ka/day_offs