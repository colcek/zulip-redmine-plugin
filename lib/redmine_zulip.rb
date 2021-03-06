module RedmineZulip
  VERSION = "2.1.2"
end

Rails.configuration.to_prepare do
  Issue.send(:include, RedmineZulip::IssuePatch)
  Project.send(:include, RedmineZulip::ProjectPatch)
  ProjectsController.send(:helper, RedmineZulip::ProjectSettingsTabs)
end
