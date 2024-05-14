#!/usr/bin/env python3
""" insert into school """
import pymongo


def insert_school(mongo_collection, **kwargs):
    """ insert school """
    return mongo_collection.insert_one(kwargs).inserted_id
