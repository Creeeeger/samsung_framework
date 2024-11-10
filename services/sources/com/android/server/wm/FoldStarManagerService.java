package com.android.server.wm;

import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.os.Binder;
import android.os.RemoteCallbackList;
import android.os.UserHandle;
import android.util.Slog;
import com.samsung.android.core.IFoldStarCallback;
import com.samsung.android.core.IFoldStarManager;
import com.samsung.android.rune.CoreRune;
import com.samsung.android.server.util.SafetySystemService;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public class FoldStarManagerService extends IFoldStarManager.Stub {
    public final ActivityTaskManagerService mAtm;
    public final RemoteCallbackList mCallbacks = new RemoteCallbackList();
    public int mRegisteredCallbackCount;

    public final boolean enforceFoldStarPermission(String str) {
        return false;
    }

    public Map getDisplayCompatPackages(int i, int i2, Map map) {
        return null;
    }

    public void initAppContinuityValueWhenReset(boolean z, boolean z2) {
    }

    public void setAllAppContinuityMode(int i, boolean z) {
    }

    public void setAppContinuityMode(String str, int i, boolean z) {
    }

    public void setDisplayCompatPackages(int i, Map map, boolean z) {
    }

    public void setFrontScreenOnWhenAppContinuityMode(boolean z) {
    }

    public FoldStarManagerService(ActivityTaskManagerService activityTaskManagerService) {
        this.mAtm = activityTaskManagerService;
    }

    public final void getLauncherPackages(int i, List list) {
        LauncherApps launcherApps = (LauncherApps) SafetySystemService.getSystemService(LauncherApps.class);
        if (launcherApps == null) {
            return;
        }
        Iterator<LauncherActivityInfo> it = launcherApps.getActivityList(null, UserHandle.of(i)).iterator();
        while (it.hasNext()) {
            list.add(it.next().getApplicationInfo().packageName);
        }
    }

    public void registerFoldStarCallback(IFoldStarCallback iFoldStarCallback) {
        int registeredCallbackCount;
        if (iFoldStarCallback == null || !enforceFoldStarPermission("registerFoldStarCallback()")) {
            return;
        }
        try {
            synchronized (this.mCallbacks) {
                this.mCallbacks.register(iFoldStarCallback);
                registeredCallbackCount = this.mCallbacks.getRegisteredCallbackCount();
            }
            WindowManagerGlobalLock windowManagerGlobalLock = this.mAtm.mGlobalLock;
            WindowManagerService.boostPriorityForLockedSection();
            synchronized (windowManagerGlobalLock) {
                try {
                    this.mRegisteredCallbackCount = registeredCallbackCount;
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
        } catch (Exception e) {
            Slog.w("FoldStar", "Failed to registerFoldStarCallback", e);
        }
    }

    public void unregisterFoldStarCallback(IFoldStarCallback iFoldStarCallback) {
        int registeredCallbackCount;
        if (iFoldStarCallback == null || !enforceFoldStarPermission("unregisterFoldStarCallback()")) {
            return;
        }
        try {
            synchronized (this.mCallbacks) {
                this.mCallbacks.unregister(iFoldStarCallback);
                registeredCallbackCount = this.mCallbacks.getRegisteredCallbackCount();
            }
            WindowManagerGlobalLock windowManagerGlobalLock = this.mAtm.mGlobalLock;
            WindowManagerService.boostPriorityForLockedSection();
            synchronized (windowManagerGlobalLock) {
                try {
                    this.mRegisteredCallbackCount = registeredCallbackCount;
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
        } catch (Exception e) {
            Slog.w("FoldStar", "Failed to unregisterFoldStarCallback", e);
        }
    }

    public void setFixedAspectRatioPackages(int i, Map map, boolean z) {
        if (!CoreRune.FW_FIXED_ASPECT_RATIO_MODE || map == null) {
            return;
        }
        ActivityTaskManagerService.enforceTaskPermission("setFixedAspectRatioPackages()");
        WindowManagerGlobalLock windowManagerGlobalLock = this.mAtm.mGlobalLock;
        WindowManagerService.boostPriorityForLockedSection();
        synchronized (windowManagerGlobalLock) {
            try {
                ConcurrentHashMap changeValuesAsUser = this.mAtm.mExt.mFixedAspectRatioController.getChangeValuesAsUser(i);
                if (z) {
                    changeValuesAsUser.clear();
                }
                changeValuesAsUser.putAll(map);
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    for (Object obj : map.keySet()) {
                        if (obj instanceof String) {
                            PackagesChange.removeTaskWithoutRemoveFromRecents(this.mAtm, (String) obj, i, "setFixedAspectRatioPackages");
                        }
                    }
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    this.mAtm.mExt.mFixedAspectRatioController.requestToSave(i);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x011a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.Map getFixedAspectRatioPackages(final int r11, int r12, java.util.Map r13) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.FoldStarManagerService.getFixedAspectRatioPackages(int, int, java.util.Map):java.util.Map");
    }

    public static /* synthetic */ Float lambda$getFixedAspectRatioPackages$6(FixedAspectRatioController fixedAspectRatioController, int i, String str) {
        return Float.valueOf(fixedAspectRatioController.getMergedChange(i, str));
    }

    public static /* synthetic */ Float lambda$getFixedAspectRatioPackages$7(FixedAspectRatioController fixedAspectRatioController, int i, String str) {
        return Float.valueOf(fixedAspectRatioController.getUserChange(i, str));
    }

    public static /* synthetic */ Float lambda$getFixedAspectRatioPackages$8(FixedAspectRatioController fixedAspectRatioController, String str) {
        return Float.valueOf(fixedAspectRatioController.getSystemChange(str));
    }

    public static /* synthetic */ Float lambda$getFixedAspectRatioPackages$9(FixedAspectRatioController fixedAspectRatioController, int i, String str) {
        return Float.valueOf(fixedAspectRatioController.getMergedChange(i, str));
    }
}
