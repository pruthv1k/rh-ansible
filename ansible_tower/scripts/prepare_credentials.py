#!/usr/bin/env python


import base64
from cloudify import ctx
from cloudify import manager
from cloudify.state import ctx_parameters as inputs


secret_name = 'ANSIBLE_TOWER_AUTHENTICATION'
username = inputs['ANSIBLE_TOWER_USERNAME']
password = inputs['ANSIBLE_TOWER_PASSWORD']
string_to_encode = username + ':' + password
string_encoded = string_to_encode.encode('ascii')

base64_bytes = base64.b64encode(string_encoded)
base64_string = base64_bytes.decode("ascii")

cfy_client = manager.get_rest_client()
cfy_client.secrets.create(
    key=secret_name,
    value=base64_string,
    update_if_exists=True,
    is_hidden_value=True
)

ctx.logger.debug("Created secret {0}".format(secret_name))
