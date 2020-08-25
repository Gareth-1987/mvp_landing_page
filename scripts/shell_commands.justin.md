## Common Shell Commands

### Django Shell

# CRUD - Create, Retreive, Update, Delete.

```bash
python manage.py shell
```

### Django Settings

**Accessing global variables/config in `settings.py`**

```python
from django.conf import settings

MY_VAR = getattr(settings, 'MY_VAR', 'default')
API_KEY = getattr(settings, 'API_KEY', None)
```

**Debug**

```python

DEBUG = settings.DEBUG
```

**BASE_DIR**

```python
BASE_DIR = settings.BASE_DIR
```

### Import of a Model

`from <appname>.models import <KlassName>`

```python
from emails.models import EmailEntry
```

### Get a single stored item

```python
EmailEntry.objects.get(id=1)
# EmailEntry.objects.get(email="agman228@gmail.com")
```

### List all stored items of a Model

```python
EmailEntry.objects.all()
```

### Filter all stored items of a Model

```python
EmailEntry.objects.filter(email="agman228@gmail.com")
```

### Create a new stored item (instance) of a Model

```python
EmailEntry.objects.create(email='hello@abc.com')
```

or

```python
obj = EmailEntry()
obj.email='hello@abc.com'
obj.save()
```

### Update a new stored item (instance) of a Model

```python
obj = EmailEntry.objects.get(id=1)
obj.name = "Gareth"
obj.save()
```

### Delete a new stored item (instance) of a Model

```python
obj = EmailEntry.objects.get(id=5)
obj.delete()
```
