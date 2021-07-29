# README

Jobboard is a ruby on rails demo application with performance issues.

As a developer, your objectives are to:
- determine the causes of the problems using the tools provided
- fix the existing problems

## Prerequisites

- Docker
- ruby > 2.6
- bundler
- yarn 1.22.10

## Setup

```
bundle install
rails webpacker:install
rake db:create && rake db:migrate && rake db:seed
```

## Start the application

`rails server`

## Issues to solve

### Slow application boot

Determine where the problem comes from using the ruby profiler Stackprof.

### Offers page is slow

Do you know what is n+1 queries?

### Companies page load in > 1s for 15 items

What part of the code is involved in the process?




