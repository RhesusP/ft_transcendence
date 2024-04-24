from djando.db import models

class user_stats(models.Model):
    user_id = models.IntegerField() # or set as primary?
    user_wins = models.IntegerField(default= 0)
    user_losses = models.IntegerField(default=0)
    user_win_rate = models.FloatField(default=0)
    user_elo = models.IntegerField(default=900)

    def serialize(self):
        return {
            'user_id': self.user_id,
            'user_wins': self.user_wins,
            'user_losses': self.user_losses,
            'user_win_rate': self.user_win_rate,
            'user_elo': self.user_elo
        }

