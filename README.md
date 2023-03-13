# Cloudformation Stack Outputs

This module creates a Cloudformation Stack solely for the purpose of allowing Stack Outputs and cross Cloudformation references. This is particularly useful when combining both Cloudformation (say, from Serverless Framework) and Terraform in the same project.

See this helpful blog post: https://theburningmonk.com/2019/03/making-terraform-and-serverless-framework-work-together/

Since Cloudformation does not allow creating a stack with out atleast a single resource - to get around  
this, we create a custom `NullResource` in the Stack that uses a falsey condition, effectively creating a no-op.

**Note**: If you need to quote any values as part of your Outputs, where the output value could be mistaken for YAML syntax, you must use single quotes.

### Usage

     module cfn_outputs {
       source = "{source}"

       cfn_stack_name       = "{cloudformation_stack_name}"
       export_names_prefix  = "{optional, to override the default behavior of using stack name as prefix for export names}"

       outputs = {
         foo = "bar"
         baz = "buux"
       }
     }
