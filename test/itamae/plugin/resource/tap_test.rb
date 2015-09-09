require 'test_helper'
require 'itamae/plugin/resource/tap'

module Itamae
  module Plugin
    module Resource
      class Itamae::Plugin::Resource::TestTap < Test::Unit::TestCase
        setup do
          @resource = Tap.new(stub, 'test/tap')
        end

        sub_test_case '#action_install' do
          setup do
            @resource.expects(:run_command)
              .with('brew tap | grep -w -- test/tap', {:error => false})
              .returns(stub(stdout: '', exit_status: 1))
          end

          test 'tap' do
            @resource.expects(:run_command)
              .with(['brew', 'tap','test/tap'])
            @resource.run
          end
        end

        sub_test_case '#action_delete' do
          setup do
            @resource.attributes.action = :delete
            @resource.expects(:run_command)
              .with('brew tap | grep -w -- test/tap', {:error => false})
              .returns(stub(stdout: 'test/tap', exit_status: 0))
          end

          test 'untap' do
            @resource.expects(:run_command)
              .with(['brew', 'untap','test/tap'])
            @resource.run
          end
        end
      end
    end
  end
end
