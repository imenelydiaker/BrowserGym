from browsergym.core.registration import register_task

from .sample_task import SampleTask

register_task(id=SampleTask.get_task_id(), task_class=SampleTask)