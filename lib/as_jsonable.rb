# coding: utf-8

module AsJsonable
  module ClassMethods
    def as_json(options={})
      define_method(:as_json) do |args|
        args ||= {}
        super(options.merge(args))
      end
    end
  end
end

ActiveRecord::Base.send :extend, AsJsonable::ClassMethods
