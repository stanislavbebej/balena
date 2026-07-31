pipelineJob('backup-medicom') {
    definition {
        cpsScm {
            scm {
                git {
                    remote {
                        github('stanislavbebej/balena')
                        credentials('github-access-token')
                    }
                    branches('devel', 'main')
                }
            }
        }
    }
    displayName('Záloha Medicom')
}
