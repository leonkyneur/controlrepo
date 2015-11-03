Package {
  allow_virtual => true,
}

sshkey { 'github.com':
  type => 'ssh-rsa',
  key  => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAlykvaOLzj/9yhqvZH3rU/CBcdJVRj4etjKK2AcAMqu3ECGYg0HIABlCNZgSK2uAaq+PAX50B+d7dySwhvoUEueoUeZE3IkDBuix2cit3uwANNKZ7c+OsjAleHjTmDR/glD36EZsgkhvZGdzt9oa6vkX64X/a2k/FF2G8qK52ggz9ieIkbY7qgHjyWP67Q2yGWZ/zxtNiXYAPR6SSRD+syA7rAjx85cDrIGsMC0BA/ziTb7ggaxLSRZJW5r63m+lBYprQhHJFUDFbdL/0ex+VITNvn1VlBSe5cx0JZNPg2IQf+w96Z7x9sQIj+ks7PoKOTNge/1HtcM8fCJX51C3gtw=='
}

class { 'r10k':
  version           => '1.5.1',
  sources           => {
    'puppet' => {
      'remote'  => 'git@github.com:leonkyneur/controlrepo.git',
      'basedir' => "${::settings::confdir}/environments",
      'prefix'  => false,
    },
  },
  manage_modulepath => false
}

