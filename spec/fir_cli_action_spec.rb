describe Fastlane::Actions::FirCliAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The fir_cli plugin is working!")

      Fastlane::Actions::FirCliAction.run(nil)
    end
  end
end
