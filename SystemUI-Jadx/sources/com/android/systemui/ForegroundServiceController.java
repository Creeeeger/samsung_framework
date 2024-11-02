package com.android.systemui;

import android.os.Handler;
import android.os.UserHandle;
import android.service.notification.StatusBarNotification;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.SparseArray;
import com.android.systemui.appops.AppOpsController;
import com.android.systemui.appops.AppOpsControllerImpl;
import com.android.systemui.util.Assert;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ForegroundServiceController {
    public static final int[] APP_OPS = {24};
    public final Handler mMainHandler;
    public final SparseArray mUserServices = new SparseArray();
    public final Object mMutex = new Object();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface UserStateUpdateCallback {
        boolean updateUserState(ForegroundServicesUserState foregroundServicesUserState);
    }

    public ForegroundServiceController(AppOpsController appOpsController, Handler handler) {
        this.mMainHandler = handler;
        ((AppOpsControllerImpl) appOpsController).addCallback(APP_OPS, new AppOpsController.Callback() { // from class: com.android.systemui.ForegroundServiceController$$ExternalSyntheticLambda0
            @Override // com.android.systemui.appops.AppOpsController.Callback
            public final void onActiveStateChanged(final boolean z, final String str, final int i, final int i2) {
                final ForegroundServiceController foregroundServiceController = ForegroundServiceController.this;
                foregroundServiceController.getClass();
                foregroundServiceController.mMainHandler.post(new Runnable() { // from class: com.android.systemui.ForegroundServiceController$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ForegroundServiceController foregroundServiceController2 = ForegroundServiceController.this;
                        int i3 = i;
                        int i4 = i2;
                        String str2 = str;
                        boolean z2 = z;
                        foregroundServiceController2.getClass();
                        Assert.isMainThread();
                        int userId = UserHandle.getUserId(i4);
                        synchronized (foregroundServiceController2.mMutex) {
                            ForegroundServicesUserState foregroundServicesUserState = (ForegroundServicesUserState) foregroundServiceController2.mUserServices.get(userId);
                            if (foregroundServicesUserState == null) {
                                foregroundServicesUserState = new ForegroundServicesUserState();
                                foregroundServiceController2.mUserServices.put(userId, foregroundServicesUserState);
                            }
                            if (z2) {
                                ArrayMap arrayMap = foregroundServicesUserState.mAppOps;
                                if (arrayMap.get(str2) == null) {
                                    arrayMap.put(str2, new ArraySet(3));
                                }
                                ((ArraySet) arrayMap.get(str2)).add(Integer.valueOf(i3));
                            } else {
                                ArrayMap arrayMap2 = foregroundServicesUserState.mAppOps;
                                ArraySet arraySet = (ArraySet) arrayMap2.get(str2);
                                if (arraySet != null) {
                                    arraySet.remove(Integer.valueOf(i3));
                                    if (arraySet.size() == 0) {
                                        arrayMap2.remove(str2);
                                    }
                                }
                            }
                        }
                    }
                });
            }
        });
    }

    public static boolean isDisclosureNotification(StatusBarNotification statusBarNotification) {
        if (statusBarNotification.getId() == 40 && statusBarNotification.getTag() == null && statusBarNotification.getPackageName().equals("android")) {
            return true;
        }
        return false;
    }

    public final boolean isDisclosureNeededForUser(int i) {
        synchronized (this.mMutex) {
            ForegroundServicesUserState foregroundServicesUserState = (ForegroundServicesUserState) this.mUserServices.get(i);
            boolean z = false;
            if (foregroundServicesUserState == null) {
                return false;
            }
            if (foregroundServicesUserState.mRunning != null && System.currentTimeMillis() - foregroundServicesUserState.mServiceStartTime >= 5000) {
                for (String str : foregroundServicesUserState.mRunning) {
                    ArraySet arraySet = (ArraySet) foregroundServicesUserState.mImportantNotifications.get(str);
                    if (arraySet != null && arraySet.size() != 0) {
                    }
                    z = true;
                    break;
                }
            }
            return z;
        }
    }

    public final void updateUserState(int i, UserStateUpdateCallback userStateUpdateCallback, boolean z) {
        synchronized (this.mMutex) {
            ForegroundServicesUserState foregroundServicesUserState = (ForegroundServicesUserState) this.mUserServices.get(i);
            if (foregroundServicesUserState == null) {
                if (z) {
                    foregroundServicesUserState = new ForegroundServicesUserState();
                    this.mUserServices.put(i, foregroundServicesUserState);
                } else {
                    return;
                }
            }
            userStateUpdateCallback.updateUserState(foregroundServicesUserState);
        }
    }
}
