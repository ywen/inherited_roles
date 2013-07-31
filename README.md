# InheritedRoles

[![Build Status](https://travis-ci.org/ywen/inherited_roles.png?branch=master)](https://travis-ci.org/ywen/inherited_roles)
[![Code Quality](https://codeclimate.com/badge.png)](https://codeclimate.com/github/ywen/inherited_roles)

To implement Inherited roles by organization

## Introduction

The code is packaged in a rubygem. The gem has no outside runtime dependencies.

## Persistence ( or lack thereof )

The requirements asked for no real DB, I went ahead implementing the models without using ActiveRecord. I believe this is not what the code problem implies. However, I see no real needs for using ActiveRecord and testing with doubles when I can just use POROs. I hope this is OK with you.

In the implementation, I made effort to identify the persistence access code from the others, namely, if are to change the implementation using a persistence, then only place that needs to be changed is in ```OrganizationRole.role_for``` method.
