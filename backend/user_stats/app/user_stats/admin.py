from django.contrib import admin
from .models import *

@admin.register(user_stats)
class user_statsAdmin(admin.ModelAdmin):
    list_displey = ("user_id", "user_wins", "user_losses",
                    "user_winrate", "user_elo")