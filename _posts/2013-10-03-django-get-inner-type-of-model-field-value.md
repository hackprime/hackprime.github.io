---
id: 694
title: 'django: get inner type of model field value'
date: 2013-10-03T14:31:45+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=694
categories:
  - it
tags:
  - django
  - python
---

```
obj.__class__._meta.get_field('fieldname').get_internal_type()
```

source: [Can i get models field type from a model queryset in Django? &#8212; Stack Overflow](http://stackoverflow.com/questions/3691788/can-i-get-models-field-type-from-a-model-queryset-in-django)
