#
# Cookbook:: bundle
# Recipe:: default
#
# Copyright:: 2026, The Authors, All Rights Reserved.

# https://docs.fedoraproject.org/en-US/epel/getting-started/#_other_rhel_9_compatible_distributions
execute "dnf --disableplugin=subscription-manager install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm"

dnf_package %w(
    httpie
    jq
    nmap
)
