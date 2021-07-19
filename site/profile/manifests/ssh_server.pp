		class profile::ssh_server {
			package {'openssh-server':
				ensure => present,
			}
			service { 'sshd':
				ensure => 'running',
				enable => 'true',
			}
			ssh_authorized_key { 'root@master.puppet.vm':
				ensure => present,
				user   => 'root',
				type   => 'ssh-rsa',
				key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDW3+s9DoKnoLzLTDvGCEMcgI+ch+vhKMJjahaFnwqVH1UCKIsrRPHCOob4xOmRFMuivEjnjlnG4X8AzNXwUfhPBhhAIkqGmH72YuLMH/JULtXjiJr6RQUgdgDdWLNpZhwQ8VcKR8MJkKbKTXeeYrgC92Nhz84QMZ6+j1VTrRKj3afDD11Ux2wWzDD4ZG4DvOk37Cdj3adD3HSGgZLCWzaH+2NVp1Vp4W+BqmjSRBMwVscm9+DuXr88vG/BjFaKlX9Q7UoD6/jcrlS1isAquasJxOhMXacckK7Xxvy+S0Dk6qNzXbjxGY8VEiw2IcDQfrqezoegomxKWvaKE78OV3TF',
			}  
		}
