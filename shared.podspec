Pod::Spec.new do |spec|
    spec.name                     = 'shared'
    spec.version                  = '0.1'
    spec.homepage                 = 'https://github.com/mediacorp/news-core-kmm'
    spec.source                   = { :git => "git@github.com:mediacorp/news-core-kmm.git", :tag => "#{spec.version}-alpha-build2" }
    spec.authors                  = ''
    spec.license                  = 'Unspecified'
    spec.summary                  = 'Some description for the Shared Module'

    spec.vendored_frameworks      = "ios-dist/#{spec.version}-alpha/shared.framework"
    spec.libraries                = "c++"
    spec.module_name              = "#{spec.name}_umbrella"

    spec.ios.deployment_target = '13.0'

    spec.pod_target_xcconfig = {
        'KOTLIN_PROJECT_PATH' => ':shared',
        'PRODUCT_MODULE_NAME' => 'shared',
    }
end