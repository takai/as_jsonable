# as_jsonable

as_jsonable provides a tiny DSL to override ```as_json```.

# Usage

```ruby
class Employee < ActiveRecord::Base
  as_json only: [:fisrt_name, :last_name]
end
```

This code equivalent to:

```ruby
class Employee < ActiveRecord::Base
  def as_json(options)
    super({ only: [:fisrt_name, :last_name] }.merge(options))
  end
end
```
