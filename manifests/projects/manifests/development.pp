class projects::development {
    include python
    include java

    include ctags

    package {
        [
            'tmux',
            'phantomjs'
        ]:
    }

    nodejs::module { 'bower':
        node_version => 'v0.10'
    }

    nodejs::module { 'grunt-cli':
        node_version => 'v0.10'
    }

    nodejs::module { 'karma':
        node_version => 'v0.10'
    }

    nodejs::module { 'jshint':
        node_version => 'v0.10'
    }

    ruby::gem { 'compass':
        gem  => 'compass'
    }

}
