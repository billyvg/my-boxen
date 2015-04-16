class projects::frontend {
    package {
        [
            'tmux',
            'phantomjs'
        ]:
    }

    nodejs::module { 'bower':
        node_version => 'v0.12.2'
    }

    nodejs::module { 'grunt-cli':
        node_version => 'v0.12.2'
    }

    nodejs::module { 'eslint':
        node_version => 'v0.12.2'
    }

    ruby_gem { 'compass':
        gem  => 'compass',
        ruby_version => '2.1.2'
    }
}
