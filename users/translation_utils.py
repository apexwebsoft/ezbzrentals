# import os
# import glob
# from django.conf import settings
# from .utils import translate_text

# def translate_project():
#     for root, dirs, files in os.walk(settings.BASE_DIR):
#         for file in files:
#             if file.endswith('.html') or file.endswith('.py'):
#                 with open(os.path.join(root, file), 'r+') as f:
#                     text = f.read()
#                     translated_text = translate_text(text, 'es')
#                     f.seek(0)
#                     f.write(translated_text)
#                     f.truncate()
