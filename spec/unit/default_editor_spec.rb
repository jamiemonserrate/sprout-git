require 'unit/spec_helper'

describe 'sprout-git::default_editor' do
  let(:chef_run) { ChefSpec::Runner.new }

  it 'includes sprout-base::bash_it' do
    chef_run.converge(described_recipe)
    expect(chef_run).to include_recipe('sprout-base::bash_it')
  end

  it 'installs a bash-it custom plugin' do
    chef_run.converge(described_recipe)
    expect(chef_run).to create_bash_it_custom_plugin('git-export_editor.bash')
  end
end
