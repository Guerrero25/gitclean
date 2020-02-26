module GitCommands
  def get_git_branches
    branches = %x`git branch`.split.select do |branch|
      branch != "*"
    end

    branches
  end

  def delete_git_branches(branches)
    branches.each do |branch|
      %x`git branch -D #{branch}`
    end
  end

  def show_git_branches
    %x`git branch`
  end
end
