include_controls 'redhat-enterprise-linux-8-stig-baseline' do

    control 'V-13613' do
        impact 0.0
        desc 'caveat', 'This is Not Applicable for our project since we have an approved risk-based decision on 10/1/2021 allowing relaxing this requirement.'
        describe 'This is Not Applicable for our project since we have an approved risk-based decision on 10/1/2021 allowing relaxing this requirement.' do
          skip 'This is Not Applicable for our project since we have an approved risk-based decision on 10/1/2021 allowing relaxing this requirement.'
        end
    end
    
    control 'V-13737' do
        title 'The HTTP request header fields must be limited. '
        desc "check", "To view the large_client_header_buffers value enter the
  following command:
  grep ""large_client_header_buffers"" on the nginx.conf file and any separate
  included configuration files
  If the value of large_client_header_buffers is not set to 3 buffers at 1k,
  this is a finding. "
        desc "fix", 'Edit the configuration file to set the
  large_client_header_buffers to 3 buffers and 1k.'
    end

    
    control 'V-26294' do
        impact 0.0
        desc 'caveat', 'This is Not Applicable for our project since we have an approved risk-based decision on 10/1/2021 allowing relaxing this requirement.'
        describe 'This is Not Applicable for our project since we have an approved risk-based decision on 10/1/2021 allowing relaxing this requirement.' do
          skip 'This is Not Applicable for our project since we have an approved risk-based decision on 10/1/2021 allowing relaxing this requirement.'
        end
    end

end
