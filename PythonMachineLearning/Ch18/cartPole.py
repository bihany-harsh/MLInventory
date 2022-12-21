import gym
import random

env = gym.make('CartPole-v1')

def Random_games():
    for episode in range(10):
        env.reset()

        for t in range(500):
            # to display the environment
            # env.render()

            # action_space can be 0, or 1 (left or right movement)
            action = env.action_space.sample()

            next_state, reward, done, bool2, info = env.step(action)

            print(t, next_state, reward, done, bool2, info, action)
            if done:
                env.close()
                break

Random_games()