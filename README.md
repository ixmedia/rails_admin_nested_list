
# Rails Admin Nested List

A simple gem to work with [rails_admin](https://github.com/sferik/rails_admin) that allow nested association display list instead tabs.

## Installation


```ruby
gem "rails_admin_nested_list"
```

Then, add asset to pipeline in app/assets/config/manifest.js file:<br/>
` /= link rails_admin_nested_list`

## Usage

```ruby
RailsAdmin.config do |config|
  config.model MyAwesomeModel do
    edit do
      field :associations, :nested_list
    end
  end
end
```
## Config

- `active` - Open association field (default: false)

```ruby
RailsAdmin.config do |config|
  config.model MyAwesomeModel do
    edit do
      field :associations, :nested_list do
        active true
      end
    end
  end
end
```
active true
