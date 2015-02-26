Facter.add(:cmdline) do
  setcode do
    Facter::Core::Execution.exec('cat /proc/cmdline')
  end
end
