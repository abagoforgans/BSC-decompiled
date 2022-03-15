import sqlite3
import json

import sys
import time
import os

from .helpers import opcode, padded_hex, cached
from .helpers import COLOR_HEADER,COLOR_BLUE,COLOR_OKGREEN,COLOR_WARNING,FAIL,ENDC,COLOR_BOLD,COLOR_UNDERLINE,COLOR_GREEN,COLOR_GRAY

def _cursor():
    conn = sqlite3.connect("4byte.db")

    try:
        c = conn.cursor()
    except:
        # fails in multi-threading, this should help
        conn = sqlite3.connect("4byte.db")
        return conn.cursor()

    return c

@cached
def fetch_sig(hash):
    if type(hash) == str:
        hash = int(hash, 16)

    c = _cursor()
    c.execute(
        f"SELECT hash, folded_name from functions where hash={hash}"
    )

    results = c.fetchall()
    if len(results) == 0:
        return None

    row = results[0]
    
    params = []
    if '()' not in row[1]:
        keys = row[1][row[1].index('(')+1:-1].replace('(','').replace(')','').split(',')
        num = 1
        for k in keys:
            params.append({"type": k, "name": "arg" + str(num)})
            num += 1
    return {
        "hash": padded_hex(row[0], 8),
        "name": row[1].split('(')[0],
        "folded_name": row[1],
        "params": params,
    }