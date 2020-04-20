# Teesco Application

A Flutter based Volunteer Management Application from Entrepreneurship Cell, NIT Raipur.

### Contributing Code
If you have improvements to Teesco, send us your pull requests!\
For those who are new to this, please refer Github's [how to](https://help.github.com/articles/using-pull-requests/).

Our team members will be assigned to review your pull requests. Once the pull request are approved and passes CI checks, your code will be merged on Github. 
If you decide to start on an issue, leave a comment so that other people know that you're working on it. If you want to help out, but not alone, use the issue comment thread to coordinate.

## Contribution Guidelines
#### General Guidelines
*   Include unit tests when you contribute new features, as they help to 
    1. Prove that your code works correctly, and 
    1. Guard against future breaking changes to lower the maintenance cost.
*   Bug fixes also generally require unit tests, as bug presence indicate insufficient test coverage.
*   New Features typically will be in [lib/features]. It must follow TDD Clean Architecture.
*   We discourage submitting PRs to fix one typo, one warning etc.

#### Writing & Running Unit Tests
If you are new to Flutter Unit testing refer [this](https://flutter.dev/docs/cookbook/testing/unit).\
To run tests on your local machine.
```bash
flutter test
```

## Branches

The repository has the following permanent branches:

* **master** - This contains the code which has been released (production ready code).
* **dev** - This contains the latest code. All the contributing PRs must be sent to this branch.

## License
[Apache License 2.0](LICENSE)
