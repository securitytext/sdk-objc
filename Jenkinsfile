node {
        stage 'Checkout'
            checkout scm	

        stage 'Pre-Build'
            sh 'pod install'

        stage 'Build'
            sh 'xcodebuild -workspace "SecuritytextOrgAPI.xcworkspace" -scheme "SecuritytextOrgAPI"  ONLY_ACTIVE_ARCH=NO' 
        }