class projects::frontend {
    package {
        [
            'tmux',
            'phantomjs'
        ]:
    }

    nodejs::module { 'bower':
        node_version => 'v0.12'
    }

    nodejs::module { 'grunt-cli':
        node_version => 'v0.12'
    }

    nodejs::module { 'karma':
        node_version => 'v0.12'
    }

    nodejs::module { 'eslint':
        node_version => 'v0.12'
    }

    ruby::gem { 'compass':
        gem  => 'compass',
        ruby => '2.1.0'
    }

}
