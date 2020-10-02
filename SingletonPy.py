# Program for cerner_2^5_2020 
class Singleton:
   __instance = None
   @staticmethod 
   def getInstance():
      """ Static access method. """
      """ cerner_2^5_2020 """
      if Singleton.__instance == None:
         Singleton()
      return Singleton.__instance
   def __init__(self):
      """ Virtually private constructor. """
      if Singleton.__instance != None:
         raise Exception("This class is a singleton!")
      else:
         Singleton.__instance = self
s = Singleton()
print s

s = Singleton.getInstance()
print s

s = Singleton.getInstance()
print s
