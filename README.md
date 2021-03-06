# vRealize Automation Plug-in Starter Content Pack for vRA 7.3 and Puppet plug-in for vRealize 3.0

## Introduction

This repository provides "batteries-included" starter Puppet content for the [Puppet plug-in for vRealize Automation 3.0](https://solutionexchange.vmware.com/store/products/puppet-plugin-for-vrealize-automation). It shows you how Puppet code is organized to make self-service provisioning easy and can create 5 different machine types out of the box:
- Linux base server
- Linux MySQL server
- Linux web server
- Windows base server
- Windows web server

With vRA 7.3 and the Puppet plug-in for vRealize Automation 3.0, building Puppet Enterprise blueprints is easier than ever with PE components now built directly into the vRA Enterprise GUI. While creating blueprints, you simply drag and drop the Puppet component onto the blueprint and fill in a couple of text boxes. No need to jump back and forth from vRA to vRO to get set up. Even better, Puppet role classes are now read dynamically from your Puppet Server, so you need only pick from the list instead of typing classes out manually.

## Getting started

Here's your high-level plan to get started with vRA 7.3 Enterprise to take advantage of the new GUI Puppet components:
- Create a Puppet Enterprise master and follow the instructions at the bottom of this page to install the starter content.
- [Remove any previous Puppet plug-ins](https://docs.puppet.com/pe/latest/vro_intro.html#removing-previous-versions-of-the-puppet-plug-in) and install the [Puppet plug-in for vRealize Automation 3.0](https://solutionexchange.vmware.com/store/products/puppet-plugin-for-vrealize-automation) into the **embedded vRO that comes in your vRA appliance (external vRO servers are not supported in this case at this time)**.
- Follow the [vRA 7.3 docs to add a Puppet endpoint](http://pubs.vmware.com/vrealize-automation-73/index.jsp#com.vmware.vra.prepare.use.doc/GUID-7F7059C8-E80F-42E8-B0AE-32F794C6FC38.html) (points to your master), and create your Puppet Enterprise blueprints using code from this repo that is now on your PE master.

> Note: If you're not using vRA 7.3 Enterprise, or plan to use the legacy Event Broker Subscriptions workflow, or are just using vRO without vRA, then you may install the Puppet plug-in into either the embedded vRO or an external vRO appliance.

> Note: if you are using vRealize 6.x or 7.0 through 7.2, then use the "iaas_eventbroker" branch of this repo.

vRA 7.3 Puppet docs:
- [Create a Puppet Endpoint](http://pubs.vmware.com/vrealize-automation-73/index.jsp#com.vmware.vra.prepare.use.doc/GUID-7F7059C8-E80F-42E8-B0AE-32F794C6FC38.html)
- [Creating Puppet Enabled vSphere Blueprints](http://pubs.vmware.com/vrealize-automation-73/index.jsp#com.vmware.vra.prepare.use.doc/GUID-45BF018B-0C25-489D-89AA-8A7C91E7E9A6.html)
- [Add a Puppet Component to a vSphere Blueprint](http://pubs.vmware.com/vrealize-automation-73/index.jsp#com.vmware.vra.prepare.use.doc/GUID-BB99F78C-1638-4852-92B7-30348E8EBBA2.html)
- [vRealize Automation 7.3 Release Notes](http://pubs.vmware.com/Release_Notes/en/vra/73/vrealize-automation-73-release-notes.html)

Please see the [Puppet plug-in for vRealize documentation](https://docs.puppet.com/pe/latest/vro_intro.html) for more detailed information.

## Install Starter Content on your PE Master

Installation with git
```
git clone https://github.com/puppetlabs/puppet-vro-starter_content.git
cd puppet-vro-starter_content
sudo bash scripts/vra_nc_setup.sh
sudo puppet agent -t
```

Installation with curl
```
curl -sSL https://github.com/puppetlabs/puppet-vro-starter_content/archive/production.tar.gz | tar -zx
cd puppet-vro-starter_content-production
sudo bash scripts/vra_nc_setup.sh
sudo puppet agent -t
```

Special thanks for creation and testing of this starter content go to Abir Majumdar, Tommy Speigner, Erik Dasher, Kai Pak, Tyler Pace, Garrett Guillotte, Colin Brock, Justin May, Bryan Jen, Lindsey Smith, Jeremy Adams and the whole Puppet TSE team.
