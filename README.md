# sample-nginx-overlay

Sample overlay for the baseline InSpec profile at https://github.com/mitre/nginx-baseline with modifications based Our Project's different policy compliance baseline requirements. The baseline InSpec profile is used validate the secure configuration of Apache 2.2 Server STIG checks.

The original baseline InSpec profile is used validate the secure configuration of Apache 2.2 Server STIG checks.

This Overlay profile clearly distinguishes and measures to OUR policy requirements without modification to the baseline profile or misrepresentation that we are exactly compliant with the original STIG. This overlay allows us to show compliance with our own vetted requirements.

## Getting Started  
It is intended and recommended that InSpec and this profile overlay be run from a __"runner"__ host (such as a DevOps orchestration server, an administrative management system, or a developer's workstation/laptop) against the target remotely over __ssh__.

__For the best security of the runner, always install on the runner the _latest version_ of InSpec and supporting Ruby language components.__ 

Latest versions and installation options are available at the [InSpec](http://inspec.io/) site.

## Tailoring to Your Environment

The following inputs may be configured in an inputs ".yml" file for the profile to run correctly for your specific environment. More information about InSpec inputs can be found in the [InSpec Profile Documentation](https://www.inspec.io/docs/reference/profiles/).

```
# Path for the nginx configuration file
nginx_conf_file: ''

# Path to nginx backup repository
nginx_backup_repository: ''

# Subnet of the DMZ
dmz_subnet: ''

# Minimum Web vendor-supported version.
nginx_min_ver: ''

# Nginx owner
nginx_owner: ''

# The Nginx group
nginx_group: ''

# The system adminstrator
sys_admin: []

# The system adminstrator group
sys_admin_group: ''

# List of non admin user accounts
authorized_user_list: []

# Monitoring software for CGI or equivalent programs
monitoring_software: []

# List of disallowed packages
disallowed_packages_list: []

# disallowed_compiler_list
disallowed_compiler_list: []

# DoD-approved PKIs (e.g., DoD PKI, DoD ECA, and DoD-approved external partners
dod_approved_pkis: []

# File list of  documentation, sample code, example applications, and tutorials
nginx_disallowed_file_list: []

# File list of allowed documentation, sample code, example applications, and tutorials
nginx_allowed_file_list: []

# List of  authorized nginx modules
nginx_authorized_modules: []

# List of unauthorized nginx modules
nginx_unauthorized_modules: []

# Path for the nginx binary
nginx_path: ''

# domain and port to the OCSP Server
ocsp_server: ''

# crl_udpate_frequency
crl_udpate_frequency: 7
```

## Running This Overlay Directly from Github

Against a remote target using **_ssh_** with escalated privileges (if escalated privileges are needed) (i.e., InSpec installed on a separate runner host)
```bash
inspec exec https://github.com/mitre/nginx-baseline/archive/master.tar.gz -t ssh://TARGET_USERNAME:TARGET_PASSWORD@TARGET_IP:TARGET_PORT --sudo --sudo-password=<SUDO_PASSWORD_IF_REQUIRED> --input-file <path_to_your_input_file/name_of_your_input_file.yml> --reporter json:<path_to_your_output_file/name_of_your_output_file.json> 
```

Against a remote target using using **_ssh_** with a **_pem key_** with escalated privileges (if escalated privileges are needed) (i.e., InSpec installed on a separate runner host)
```bash
inspec exec https://github.com/mitre/nginx-baseline/archive/master.tar.gz -t ssh://TARGET_USERNAME@TARGET_IP:TARGET_PORT --sudo -i <your_PEM_KEY> --input-file <path_to_your_input_file/name_of_your_input_file.yml> --reporter json:<path_to_your_output_file/name_of_your_output_file.json>  
```

Against a **_locally_**-hosted instance with escalated privileges (if escalated privileges are needed) (i.e., InSpec installed on the target)
```bash
sudo inspec exec https://github.com/mitre/nginx-baseline/archive/master.tar.gz --input-file <path_to_your_input_file/name_of_your_input_file.yml> --reporter json:<path_to_your_output_file/name_of_your_output_file.json> 
```

Against a **_docker-containerized_** instance:
```bash
inspec exec https://github.com/mitre/nginx-baseline/archive/master.tar.gz -t docker://instance_id --input-file <path_to_your_input_file/name_of_your_input_file.yml> --reporter json:<path_to_your_output_file/name_of_your_output_file.json> 
```

### Different Run Options

  [Full exec options](https://docs.chef.io/inspec/cli/#options-3)

## Running This Overlay from a local Archive copy
If your runner is not always expected to have direct access to GitHub, use the following steps to create an archive bundle of this overlay and all of its dependent tests:

(Git is required to clone the InSpec profile using the instructions below. Git can be downloaded from the [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) site.) 

```
mkdir profiles
cd profiles
git clone https://github.com/mitre/sample-nginx-overlay.git
inspec archive sample-nginx-overlay
sudo inspec exec <name of generated archive> --input-file <path_to_your_input_file/name_of_your_input_file.yml> --reporter=cli json:<path_to_your_output_file/name_of_your_output_file.json> 
```

For every successive run, follow these steps to always have the latest version of this overlay and dependent profiles:

```
cd sample-nginx-overlay
git pull
cd ..
inspec archive sample-nginx-overlay --overwrite
sudo inspec exec <name of generated archive> --input-file <path_to_your_input_file/name_of_your_input_file.yml> --reporter=cli json:<path_to_your_output_file/name_of_your_output_file.json> 
```

## Using Heimdall for Viewing the JSON Results

The JSON results output file can be loaded into __[heimdall-lite](https://heimdall-lite.mitre.org/)__ for a user-interactive, graphical view of the InSpec results. 

The JSON InSpec results file may also be loaded into a __[full heimdall server](https://github.com/mitre/heimdall)__, allowing for additional functionality such as to store and compare multiple profile runs.

## Authors


## Special Thanks
* Eugene Aronne

## Contributing and Getting Help
To report a bug or feature request, please open an [issue](https://github.com/mitre/sample-nginx-overlay/issues/new).

## License
This is licensed under the [Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0) license. 

### NOTICE
DISA STIGs are published by DISA IASE, see: https://iase.disa.mil/Pages/privacy_policy.aspx
