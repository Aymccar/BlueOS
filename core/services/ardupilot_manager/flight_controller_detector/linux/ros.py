import platform
from typing import Any, List

from flight_controller_detector.linux.linux_boards import LinuxFlightController
from typedefs import Platform, Serial

class ROS(LinuxFlightController):
    manufacturer = "CRC"
    
    def __init__(self, **data: Any) -> None:
        name = "ROS"
        plat = Platform.ROS
        
        super().__init__(**data, name=name, platform=plat)

    def detect(self) -> bool:
        return True

    def get_serials(self) -> List[Serial]:
        return []
