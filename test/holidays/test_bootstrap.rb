require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

require 'holidays/bootstrap'

class BootstrapTests < Test::Unit::TestCase
  def test_call_registers_builtin_global_methods
    Holidays::Bootstrap.call

    repo = Holidays::Factory::Definition.custom_methods_repository

    assert_not_nil repo.find("easter(year)")
    assert_not_nil repo.find("lunar_to_solar(year, month, day, region)")
  end

  def test_load_all_definitions_is_a_deprecated_alias_for_bootstrap
    assert_same Holidays::Bootstrap, Holidays::LoadAllDefinitions
  end
end
