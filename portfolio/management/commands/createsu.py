from django.contrib.auth.models import User
from django.core.management.base import BaseCommand

from decouple import AutoConfig
BASE_DIR = Path(__file__).resolve().parent.parent.parent.parent
config = AutoConfig(search_path=BASE_DIR)
admin = config("admin")
admin_email = config("admin_email")
admin_password = config("admin_password")

class Command(BaseCommand):
    def handle(self, *args, **options):
        if not User.objects.filter(username=admin).exists():
            User.objects.create_superuser(admin, admin_email, admin_password)
            self.stdout.write(self.style.SUCCESS("Successfully created superuser"))