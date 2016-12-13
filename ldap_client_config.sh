#!/bin/bash
# AUTHOR:   Reaz Mahmood (reaz.u.mahmood@gmail.com)
# NAME:     Openldap_client_config.sh
# VERSION:  1.1
# DATE:     21/11/2016 (dd/mm/yy)
# LICENCE:  Copyleft free software
#
# Variables
LD_SERVER=0

LD_BASEDN=0
#replace the vakue with your CA certificate URL
LD_CACERT=0

yum install -y openldap-clients nss-pam-ldapd
# This will prompt the user for Openldap server URL
echo -n "Enter Ldap Server Name: > "
read LD_SERVER
# This will prompt the user for Openldap base Dn
echo -n "Enter Ldap Basedn: > "
read LD_BASEDN
# This will prompt the user for Url to CA certificate
echo -n "Enter URL for downloading CA certificate: > "
read LD_CACERT
authconfig --enableldap --enableldapauth --ldapserver=$LD_SERVER --ldapbasedn=$LD_BASEDN --ldaploadcacert=$LD_CACERT --enableldaptls --update
