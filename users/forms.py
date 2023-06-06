from django import forms  
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.forms import formset_factory
from django.forms.models import BaseInlineFormSet






class CreateUserForm(UserCreationForm):
	class Meta:
		model = User
		fields = ['username', 'email', 'password1', 'password2']


class RoomForm(forms.Form):
    name = forms.CharField()
    no_of_rooms = forms.IntegerField()

class RoomFormSet(BaseInlineFormSet):
    def __init__(self, *args, **kwargs):
        super(RoomFormSet, self).__init__(*args, **kwargs)
        for form in self.forms:
            form.empty_permitted = False

