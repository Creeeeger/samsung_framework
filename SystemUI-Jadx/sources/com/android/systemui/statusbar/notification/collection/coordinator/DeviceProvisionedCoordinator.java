package com.android.systemui.statusbar.notification.collection.coordinator;

import android.content.pm.IPackageManager;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter;
import com.android.systemui.statusbar.policy.DeviceProvisionedController;
import com.android.systemui.statusbar.policy.DeviceProvisionedControllerImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DeviceProvisionedCoordinator implements Coordinator {
    public final DeviceProvisionedController mDeviceProvisionedController;
    public final AnonymousClass1 mNotifFilter = new NotifFilter("DeviceProvisionedCoordinator") { // from class: com.android.systemui.statusbar.notification.collection.coordinator.DeviceProvisionedCoordinator.1
        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter
        public final boolean shouldFilterOut(NotificationEntry notificationEntry, long j) {
            if (!((DeviceProvisionedControllerImpl) DeviceProvisionedCoordinator.this.mDeviceProvisionedController).isDeviceProvisioned() && !notificationEntry.mSbn.getNotification().extras.getBoolean("android.allowDuringSetup")) {
                return true;
            }
            return false;
        }
    };
    public final AnonymousClass2 mDeviceProvisionedListener = new DeviceProvisionedController.DeviceProvisionedListener() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.DeviceProvisionedCoordinator.2
        @Override // com.android.systemui.statusbar.policy.DeviceProvisionedController.DeviceProvisionedListener
        public final void onDeviceProvisionedChanged() {
            invalidateList("onDeviceProvisionedChanged");
        }
    };

    /* JADX WARN: Type inference failed for: r3v1, types: [com.android.systemui.statusbar.notification.collection.coordinator.DeviceProvisionedCoordinator$1] */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.android.systemui.statusbar.notification.collection.coordinator.DeviceProvisionedCoordinator$2] */
    public DeviceProvisionedCoordinator(DeviceProvisionedController deviceProvisionedController, IPackageManager iPackageManager) {
        this.mDeviceProvisionedController = deviceProvisionedController;
    }

    @Override // com.android.systemui.statusbar.notification.collection.coordinator.Coordinator
    public final void attach(NotifPipeline notifPipeline) {
        ((DeviceProvisionedControllerImpl) this.mDeviceProvisionedController).addCallback(this.mDeviceProvisionedListener);
        notifPipeline.addPreGroupFilter(this.mNotifFilter);
    }
}
