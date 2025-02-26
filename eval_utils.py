import cv2
import numpy as np


def render_normal_map(normal_map):
    """
    Renders a normal map from a NumPy array.
    Assumes normals are in the range [-1, 1].
    """
    # Normalize to range [0, 1]
    normal_map = (normal_map + 1) / 2
    normal_map = np.clip(normal_map, 0, 1)  # Ensure valid range

    # Convert to 8-bit image (0-255)
    normal_map_rgb = (normal_map * 255).astype(np.uint8)

    return normal_map_rgb


def save_normal_map(normal_map, path='tmp.png'):
    """
    Saves a normal map to disk.
    """
    normal_map_rgb = render_normal_map(normal_map)
    cv2.imwrite(path, cv2.cvtColor(normal_map_rgb, cv2.COLOR_RGB2BGR))