import gymnasium as gym

env = gym.make("browsergym/sample_task")
obs, info = env.reset()
done = False

while not done:
    action = env.action_space.sample()
    obs, reward, done, info = env.step(action)
    print(f"Reward: {reward}, Done: {done}, Info: {info}")
