--- a/package/network/config/netifd/files/etc/init.d/network
+++ b/package/network/config/netifd/files/etc/init.d/network
@@ -30,7 +30,7 @@ reload_service() {
 
 	init_switch
 	ubus call network reload || rv=1
-	/sbin/wifi reload_legacy
+	/sbin/wifi up
 	return $rv
 }
 
@@ -40,6 +40,11 @@ stop_service() {
 	sleep 1
 }
 
+service_running() {
+        ubus -t 120 wait_for network.interface.lan
+        /sbin/wifi reload_legacy
+}
+
 validate_atm_bridge_section()
 {
 	uci_validate_section network "atm-bridge" "${1}" \
@@ -139,6 +144,7 @@ service_triggers()
 }
 
 shutdown() {
-	ifdown -a
-	sleep 1
+	/sbin/wifi down
+        ifdown -a
+        sleep 1
 }
