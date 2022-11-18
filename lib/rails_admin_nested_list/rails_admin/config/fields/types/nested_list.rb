module RailsAdmin
  module Config
    module Fields
      module Types
        class NestedList < RailsAdmin::Config::Fields::Association

          RailsAdmin::Config::Fields::Types.register(:nested_list, self)

          register_instance_option :partial do
            :form_nested_list
          end

          # orderable associated objects
          register_instance_option :orderable do
            false
          end

          def method_name
            nested_form ? "#{name}_attributes".to_sym : super
          end

          # Reader for validation errors of the bound object
          def errors
            bindings[:object].errors[name]
          end

          def associated_prepopulate_params
            { associated_model_config.abstract_model.param_key => { association.foreign_key => bindings[:object].try(:id) } }
          end

        end
      end
    end
  end
end
