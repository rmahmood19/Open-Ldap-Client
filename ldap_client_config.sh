#!/bin/bash
# AUTHOR:   Reaz Mahmood (reaz.u.mahmood@gmail.com)
# NAME:     Openldap_client_config.sh
# VERSION:  1.1
# DATE:     21/11/2016 (dd/mm/yy)
# LICENCE:  Copyleft free software
#
# Variables
# Replace the value with your Openldap server URL
LD_SERVER=0
# Replace the value with your Openldap Basedn
LD_BASEDN=0
#replace the vakue with your CA certificate URL
LD_CACERT=0

yum install -y openldap-clients nss-pam-ldapd
echo -n "Enter Ldap Server Name: > "
read LD_SERVER
echo -n "Enter Ldap Basedn: > "
read LD_BASEDN
echo -n "Enter URL for downloading CA certificate: > "
read LD_CACERT
authconfig --enableldap --enableldapauth --ldapserver=$LD_SERVER --ldapbasedn=$LD_BASEDN --ldaploadcacert=$LD_CACERT --enableldaptls --update