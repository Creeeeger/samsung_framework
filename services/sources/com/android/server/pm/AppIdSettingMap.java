package com.android.server.pm;

import com.android.server.utils.SnapshotCache;
import com.android.server.utils.WatchedArrayList;
import com.android.server.utils.WatchedSparseArray;
import com.android.server.utils.Watcher;

/* loaded from: classes3.dex */
public final class AppIdSettingMap {
    public int mFirstAvailableAppId;
    public final WatchedArrayList mNonSystemSettings;
    public final SnapshotCache mNonSystemSettingsSnapshot;
    public final WatchedSparseArray mSystemSettings;
    public final SnapshotCache mSystemSettingsSnapshot;

    public AppIdSettingMap() {
        this.mFirstAvailableAppId = 10000;
        WatchedArrayList watchedArrayList = new WatchedArrayList();
        this.mNonSystemSettings = watchedArrayList;
        this.mNonSystemSettingsSnapshot = new SnapshotCache.Auto(watchedArrayList, watchedArrayList, "AppIdSettingMap.mNonSystemSettings");
        WatchedSparseArray watchedSparseArray = new WatchedSparseArray();
        this.mSystemSettings = watchedSparseArray;
        this.mSystemSettingsSnapshot = new SnapshotCache.Auto(watchedSparseArray, watchedSparseArray, "AppIdSettingMap.mSystemSettings");
    }

    public AppIdSettingMap(AppIdSettingMap appIdSettingMap) {
        this.mFirstAvailableAppId = 10000;
        this.mNonSystemSettings = (WatchedArrayList) appIdSettingMap.mNonSystemSettingsSnapshot.snapshot();
        this.mNonSystemSettingsSnapshot = new SnapshotCache.Sealed();
        this.mSystemSettings = (WatchedSparseArray) appIdSettingMap.mSystemSettingsSnapshot.snapshot();
        this.mSystemSettingsSnapshot = new SnapshotCache.Sealed();
    }

    public boolean registerExistingAppId(int i, SettingBase settingBase, Object obj) {
        if (i >= 10000) {
            int i2 = i - 10000;
            for (int size = this.mNonSystemSettings.size(); i2 >= size; size++) {
                this.mNonSystemSettings.add(null);
            }
            if (this.mNonSystemSettings.get(i2) != null) {
                PackageManagerService.reportSettingsProblem(5, "Adding duplicate app id: " + i + " name=" + obj);
                return false;
            }
            this.mNonSystemSettings.set(i2, settingBase);
            return true;
        }
        if (this.mSystemSettings.get(i) != null) {
            PackageManagerService.reportSettingsProblem(5, "Adding duplicate shared id: " + i + " name=" + obj);
            return false;
        }
        this.mSystemSettings.put(i, settingBase);
        return true;
    }

    public SettingBase getSetting(int i) {
        if (i >= 10000) {
            int i2 = i - 10000;
            if (i2 < this.mNonSystemSettings.size()) {
                return (SettingBase) this.mNonSystemSettings.get(i2);
            }
            return null;
        }
        return (SettingBase) this.mSystemSettings.get(i);
    }

    public void removeSetting(int i) {
        if (i >= 10000) {
            int i2 = i - 10000;
            if (i2 < this.mNonSystemSettings.size()) {
                this.mNonSystemSettings.set(i2, null);
            }
        } else {
            this.mSystemSettings.remove(i);
        }
        setFirstAvailableAppId(i + 1);
    }

    public final void setFirstAvailableAppId(int i) {
        if (i > this.mFirstAvailableAppId) {
            this.mFirstAvailableAppId = i;
        }
    }

    public void replaceSetting(int i, SettingBase settingBase) {
        if (i >= 10000) {
            int i2 = i - 10000;
            if (i2 < this.mNonSystemSettings.size()) {
                this.mNonSystemSettings.set(i2, settingBase);
                return;
            }
            PackageManagerService.reportSettingsProblem(5, "Error in package manager settings: calling replaceAppIdLpw to replace SettingBase at appId=" + i + " but nothing is replaced.");
            return;
        }
        this.mSystemSettings.put(i, settingBase);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
    
        return r1 + 10000;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int acquireAndRegisterNewAppId(com.android.server.pm.SettingBase r4) {
        /*
            r3 = this;
            com.android.server.utils.WatchedArrayList r0 = r3.mNonSystemSettings
            int r0 = r0.size()
            int r1 = r3.mFirstAvailableAppId
            int r1 = r1 + (-10000)
        La:
            if (r1 >= r0) goto L1f
            com.android.server.utils.WatchedArrayList r2 = r3.mNonSystemSettings
            java.lang.Object r2 = r2.get(r1)
            if (r2 != 0) goto L1c
            com.android.server.utils.WatchedArrayList r3 = r3.mNonSystemSettings
            r3.set(r1, r4)
        L19:
            int r1 = r1 + 10000
            return r1
        L1c:
            int r1 = r1 + 1
            goto La
        L1f:
            r1 = 9999(0x270f, float:1.4012E-41)
            if (r0 <= r1) goto L39
            r1 = 0
        L24:
            if (r1 >= r0) goto L37
            com.android.server.utils.WatchedArrayList r2 = r3.mNonSystemSettings
            java.lang.Object r2 = r2.get(r1)
            if (r2 != 0) goto L34
            com.android.server.utils.WatchedArrayList r3 = r3.mNonSystemSettings
            r3.set(r1, r4)
            goto L19
        L34:
            int r1 = r1 + 1
            goto L24
        L37:
            r3 = -1
            return r3
        L39:
            com.android.server.utils.WatchedArrayList r3 = r3.mNonSystemSettings
            r3.add(r4)
            int r0 = r0 + 10000
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.AppIdSettingMap.acquireAndRegisterNewAppId(com.android.server.pm.SettingBase):int");
    }

    public AppIdSettingMap snapshot() {
        return new AppIdSettingMap(this);
    }

    public void registerObserver(Watcher watcher) {
        this.mNonSystemSettings.registerObserver(watcher);
        this.mSystemSettings.registerObserver(watcher);
    }
}
