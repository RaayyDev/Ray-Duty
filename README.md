# 🚨 Duty Toggle Script for FiveM

A simple yet powerful script to manage on-duty/off-duty states for jobs in FiveM. Designed to work with **ESX Framework**, this script allows toggling duty status and equipping or unequipping specific weapons based on the job configuration. 🎮

---

## 🌟 Features
- 🛠️ **Duty Toggle:** Seamlessly switch between on-duty and off-duty states.
- 🔫 **Weapon Management:** Automatically gives or removes weapons based on job status.
- 📍 **Custom Markers:** Configurable markers to define duty toggle points.
- 🔒 **Job-Specific Access:** Only players with specific jobs can interact with toggle points.

---

## ⚙️ Configuration

### 1️⃣ **Setting up duty toggle points**
Edit the `Config.puntos` table in the `config.lua` file. Each point requires:
- `job`: The job identifier (e.g., `poli`).
- `weapons`: A list of weapons to give or remove when toggling.
- `pos`: The position of the marker (`vector3`).
- `color`: Marker color in RGB format.

#### Example:
```lua
Config.puntos = {
  {job = "poli", weapons = {taser = true, porra = true, linterna = true}, pos = vector3(440.9622, -976.8954, 30.68958), color = {r = 0, g = 0, b = 0}},
}
```

### 2️⃣ **Marker Settings**
Customize marker appearance using the `Config.DrawMarker` table:
- `type`: Marker type (e.g., sphere, cylinder).
- `radius`: Dimensions of the marker.
- `bounce`: Whether the marker bounces.
- `rotatewithcamera`: Whether the marker rotates with the camera.
- `rotate`: Whether the marker rotates.

#### Example:
```lua
Config.DrawMarker = {
    type = 20,
    radius = {x = 0.2, y = 0.2, z = 0.2},
    bounce = false,
    rotatewithcamera = false,
    rotate = true
}
```

---

## ✨ Credits
- Script by **Ray**
- Made with ❤️ for the FiveM community.

---

## 📜 License
This script is open-source and free to use under the MIT License. Feel free to modify it to suit your needs!