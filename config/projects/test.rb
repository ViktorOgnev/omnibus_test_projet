
name            "test"
maintainer    "test Inc"
homepage    "http://test.com"

install_dir      File.absolute_path("/opt/test")

build_version   "1.2.3.4"
build_iteration 1

if windows?
  resources_path  "files/windows_msi/Resources"
  package :msi do
    upgrade_code '2CD7259C-776D-4DDB-A4C8-6E544E580AA1'
    wix_light_extension "WixUtilExtension"
  end
end

dependency "preparation"
dependency "test"

exclude "\.git*"
exclude "bundler\/git"
