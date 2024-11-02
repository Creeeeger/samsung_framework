package com.android.systemui.statusbar.policy;

import android.content.Context;
import android.hardware.devicestate.DeviceStateManager;
import android.util.SparseIntArray;
import com.android.systemui.statusbar.policy.DevicePostureController;
import com.android.systemui.util.Assert;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DevicePostureControllerImpl implements DevicePostureController {
    public final List mListeners = new ArrayList();
    public int mCurrentDevicePosture = 0;
    public final SparseIntArray mDeviceStateToPostureMap = new SparseIntArray();

    public DevicePostureControllerImpl(Context context, DeviceStateManager deviceStateManager, Executor executor) {
        for (String str : context.getResources().getStringArray(17236169)) {
            String[] split = str.split(":");
            if (split.length == 2) {
                try {
                    this.mDeviceStateToPostureMap.put(Integer.parseInt(split[0]), Integer.parseInt(split[1]));
                } catch (NumberFormatException unused) {
                }
            }
        }
        deviceStateManager.registerCallback(executor, new DeviceStateManager.DeviceStateCallback() { // from class: com.android.systemui.statusbar.policy.DevicePostureControllerImpl$$ExternalSyntheticLambda0
            public final void onStateChanged(int i) {
                final DevicePostureControllerImpl devicePostureControllerImpl = DevicePostureControllerImpl.this;
                devicePostureControllerImpl.getClass();
                Assert.isMainThread();
                devicePostureControllerImpl.mCurrentDevicePosture = devicePostureControllerImpl.mDeviceStateToPostureMap.get(i, 0);
                ((ArrayList) devicePostureControllerImpl.mListeners).forEach(new Consumer() { // from class: com.android.systemui.statusbar.policy.DevicePostureControllerImpl$$ExternalSyntheticLambda1
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((DevicePostureController.Callback) obj).onPostureChanged(DevicePostureControllerImpl.this.mCurrentDevicePosture);
                    }
                });
            }
        });
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void addCallback(Object obj) {
        Assert.isMainThread();
        ((ArrayList) this.mListeners).add((DevicePostureController.Callback) obj);
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void removeCallback(Object obj) {
        Assert.isMainThread();
        ((ArrayList) this.mListeners).remove((DevicePostureController.Callback) obj);
    }
}
