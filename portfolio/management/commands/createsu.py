import os
from pathlib import Path

from decouple import AutoConfig
from django.contrib.auth.models import User
from django.core.management.base import BaseCommand

BASE_DIR = Path(__file__).resolve().parent.parent.parent.parent
config = AutoConfig(search_path=BASE_DIR)
# admin = config("admin")
# admin_email = config("admin_email")
# admin_password = config("admin_password")

admin = os.environ.get("ADMIN")
admin_email = os.environ.get("ADMIN_EMAIL")
admin_password = os.environ.get("ADMIN_PASSWORD")


class Command(BaseCommand):
    def handle(self, *args, **options):
        if not User.objects.filter(username=admin).exists():
            User.objects.create_superuser(admin, admin_email, admin_password)
            self.stdout.write(
                self.style.SUCCESS("Successfully created superuser")
            )
