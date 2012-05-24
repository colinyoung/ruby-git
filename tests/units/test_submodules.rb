#!/usr/bin/env ruby

require File.dirname(__FILE__) + '/../test_helper'

class TestSubmodules < Test::Unit::TestCase
  def setup
    # pass
  end
  
  def test_list_submodules
    in_submodule_test_repo do |path|
      g = Git.open('.')
      submodules = g.submodules
      assert_equal(["ruby-git"], submodules.keys)
    end
  end
  
end