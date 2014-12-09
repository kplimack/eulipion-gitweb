
server_name = "git.#{chef_environment.gsub('_', '')}.#{domain}"
repo_path = '/data/repos/git'

default['gitweb'] = {
  cookbooks: %w( git ),
  packages: %w( gitweb ),
  repo_path: repo_path,
  user: {
    name: 'git',
    group: 'git',
    uid: nil,
    shell: '/bin/false'
  },
  server: {
    name: server_name,
    aliases: %w( )
  },
  config: {
    settings: {
      # path to git projects (.git)
      projectroot: "'#{repo_path}'",
      # display URLs for cloning
      #git_base_url_list: [ "git://#{server_name}", "https://#{server_name}" ],
      # directory to use for temp files
      git_temp: '"/tmp"',
      #site_name: "'#{server_name}'",
      # require export flag
      #export_ok: '"git-daemon-export-ok"',
      #strict_export: '1',
      # target of the home link on top of all pages
      #home_link: '$my_uri || "/"',
      # html text to include at home page
      home_text: '"indextext.html"',
      # file with project list; by default, simply scan the projectroot dir.
      projects_list: '$projectroot',
      # stylesheet to use
      stylesheet: '"gitweb.css"',
      # javascript code for gitweb
      javascript: '"gitweb.js"',
      # logo to use
      logo: '"git-logo.png"',
      # the 'favicon'
      favicon: '"git-favicon.png"'
    },
    features: {
      # enable git blame
      blame: '[1]',
      # enable grep
      grep: '[1]',
      # enable syntax highlighting
      highlight: '[1]',
      # enable pretty URLs
      pathinfo: '[1]',
      # enable pickaxe search
      pickaxe: '[1]',
      # enable snapshot downloads
      snapshot: "['zip', 'tgz']"
    }
  }
}
