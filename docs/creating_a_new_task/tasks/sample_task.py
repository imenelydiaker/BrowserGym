from typing import Tuple

import playwright.sync_api
from browsergym.core.task import AbstractBrowserTask


class SampleTask(AbstractBrowserTask):
    def __init__(self, seed: int) -> None:
        super().__init__(seed)

    @classmethod
    def get_task_id(cls):
        return "sample_task"

    def setup(self, page: playwright.sync_api.Page) -> Tuple[str, dict]:
        """Set up everything needed to execute the task."""
        page.goto("https://www.google.com")
        goal = "Search for 'Eiffel Tower' Wikipedia page."
        info = {}
        return goal, info

    def teardown(self) -> None:
        """Clean environment after completing task."""
        # Nothing to do for this task.
        ...

    def validate(
        self, page: playwright.sync_api.Page, chat_messages: list[str]
    ) -> Tuple[float, bool, str, dict]:
        """Compute reward based on reaching final URL."""
        if page.url() == "https://en.wikipedia.org/wiki/Eiffel_Tower":
            return 1.0, True, "Task completed", {}
        else:
            return 0.0, False, "Task not completed", {}

    def cheat(self, page: playwright.sync_api.Page, chat_messages: list[str]) -> None:
        """Solve the task using a pre-defined solution."""
        page.get_by_text("Search").fill("Eiffel Tower")
        page.get_by_text("Google Search").click()
        page.get_by_text("Eiffel Tower - Wikipedia").click()
