import gymnasium as gym

env = gym.make("browsergym/sample_task")
obs, info = env.reset()
done = False

while not done:
    action = "click('50')"
    obs, reward, terminated, truncated, info = env.step(action)
    print(f"Reward: {reward}, Done: {done}, Info: {info}")
