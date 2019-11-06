# -*- coding:utf8 -*-

import sys
from workflow import Workflow3, web

def translate(wf):
    import md5
    import random

    # 此处修改为你的应用 ID
    appKey = ''
    # 此处修改为你的应用密钥
    key = ''
    
    query = " ".join(sys.argv[1:])

    salt = str(random.randint(1, 65536))
    sign = appKey + query + salt + key

    m1 = md5.new()
    m1.update(sign)
    sign = m1.hexdigest()

    params = dict(appKey=appKey, q=query, salt=salt, sign=sign, to='auto')
    r = web.get('https://openapi.youdao.com/api', params)
    r.raise_for_status()
    res = r.json()

    if res.get('translation'):
        ent = res['translation']
        basic_def = u",".join(ent)
        wf.add_item(title=basic_def,subtitle=u"基本释义",valid=True,arg=basic_def)
        if res.get('web'):
            posts = res['web']
            for post in posts:
                web_def = u", ".join(post['value'])
                wf.add_item(title=web_def, subtitle=post['key'],valid=True,arg=web_def)
    else:
        wf.add_item(title=u"No result", subtitle="errorCode:"+res["errorCode"])

    wf.send_feedback()

if __name__ == "__main__":
    wf = Workflow3()
    sys.exit(wf.run(translate))
