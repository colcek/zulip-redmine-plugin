require "redmine_zulip"

Redmine::Plugin.register :redmine_zulip do
  name 'Zulip'
  author 'Zulip, Inc.'
  description 'Sends notifications to Zulip.'
  version RedmineZulip::VERSION
  url 'https://github.com/zulip/zulip-redmine-plugin'
  author_url 'https://www.zulip.org/'

  settings partial: "settings/redmine_zulip", default: {
    "zulip_url" => "",
    "zulip_email" => "",
    "zulip_api_key" => "",
    "zulip_stream_pattern" => "${project_name}",
    "zulip_issue_updates_subject_pattern" => "${issue_subject}",
    "zulip_version_updates_subject_pattern" => "Version ${version_name}"
  }
end
