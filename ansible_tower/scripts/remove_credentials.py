#!/usr/bin/env python


from cloudify import ctx
from cloudify import manager


secret_name = 'ANSIBLE_TOWER_AUTHENTICATION'

cfy_client = manager.get_rest_client()
cfy_client.secrets.create(
    key=secret_name,
    value='removed',
    update_if_exists=True,
    is_hidden_value=True
)

ctx.logger.debug("Removed value from secret {0}".format(secret_name))
