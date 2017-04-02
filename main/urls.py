'''
Created on Jan 11, 2016

@author: gconstantino
'''
from django.conf.urls import url
from main.views import HomeView
from django.contrib.auth.decorators import login_required



urlpatterns = [
    
    url(r'^$', HomeView.as_view(), name='home'),

]
