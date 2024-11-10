package com.android.server.wm;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import android.text.TextUtils;
import com.android.server.wm.MultiWindowSupportPolicyController;
import com.samsung.android.rune.CoreRune;
import com.samsung.android.server.packagefeature.PackageFeature;
import com.samsung.android.server.packagefeature.PackageFeatureCallback;
import com.samsung.android.server.packagefeature.PackageFeatureData;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;

/* loaded from: classes3.dex */
public class MultiWindowSupportPolicyController implements IController {
    public MultiWindowSupportRepository mAllowListRepository;
    public final ActivityTaskManagerService mAtm;
    public MultiWindowSupportRepository mBlockListRepository;

    @Override // com.android.server.wm.IController
    public void initialize() {
    }

    public MultiWindowSupportPolicyController(ActivityTaskManagerService activityTaskManagerService) {
        this.mAtm = activityTaskManagerService;
        this.mAllowListRepository = new MultiWindowSupportRepository.AllowListRepository(activityTaskManagerService);
        this.mBlockListRepository = new MultiWindowSupportRepository.BlockListRepository(activityTaskManagerService);
    }

    @Override // com.android.server.wm.IController
    public void dumpLocked(PrintWriter printWriter, String str) {
        printWriter.println("[MultiWindowSupportPolicyController]");
        MultiWindowSupportRepository multiWindowSupportRepository = this.mAllowListRepository;
        if (multiWindowSupportRepository != null) {
            multiWindowSupportRepository.dump(printWriter, str);
        }
        MultiWindowSupportRepository multiWindowSupportRepository2 = this.mBlockListRepository;
        if (multiWindowSupportRepository2 != null) {
            multiWindowSupportRepository2.dump(printWriter, str);
        }
    }

    public void updateAllTasksLocked() {
        Iterator it = this.mAtm.getRecentTasks().getRawTasks().iterator();
        while (it.hasNext()) {
            Task task = (Task) it.next();
            updateSupportPolicyLocked(task, null);
            task.forAllActivities(new Consumer() { // from class: com.android.server.wm.MultiWindowSupportPolicyController$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    MultiWindowSupportPolicyController.this.lambda$updateAllTasksLocked$0((ActivityRecord) obj);
                }
            });
        }
    }

    /* renamed from: updateSupportPolicyLocked */
    public void lambda$updateAllTasksLocked$0(ActivityRecord activityRecord) {
        activityRecord.mIgnoreDevSettingForNonResizable = isIgnoreDevSettingForNonResizable(activityRecord.info);
        ActivityInfo activityInfo = activityRecord.info;
        activityInfo.resizeMode = checkSupportPolicyLocked(activityInfo.resizeMode, activityRecord.packageName);
    }

    public void updateSupportPolicyLocked(Task task, ActivityInfo activityInfo) {
        if (activityInfo != null) {
            task.mIgnoreDevSettingForNonResizable = isIgnoreDevSettingForNonResizable(activityInfo);
        }
        ComponentName componentName = task.realActivity;
        task.mResizeMode = checkSupportPolicyLocked(task.mResizeMode, componentName != null ? componentName.getPackageName() : null);
    }

    public final int checkSupportPolicyLocked(int i, String str) {
        int i2;
        if (this.mAtm.mForceResizableActivities) {
            return i & (-1048577) & (-2097153);
        }
        if (TextUtils.isEmpty(str)) {
            return i;
        }
        int i3 = i & (-1048577) & (-2097153);
        if (isAllowListApp(str)) {
            i2 = 1048576;
        } else {
            if (!isBlocklistApp(str)) {
                return i3;
            }
            i2 = 2097152;
        }
        return i3 | i2;
    }

    public boolean supportsMultiWindowInDisplayArea(TaskDisplayArea taskDisplayArea, int i, boolean z, boolean z2) {
        if (i == 10) {
            return false;
        }
        if (this.mAtm.mForceResizableActivities || (1048576 & i) != 0) {
            return true;
        }
        if ((2097152 & i) != 0) {
            return supportsNonResizableMultiWindow(taskDisplayArea, z2);
        }
        if (z) {
            return true;
        }
        return supportsNonResizableMultiWindow(taskDisplayArea, z2);
    }

    public static boolean supportsNonResizableMultiWindow(TaskDisplayArea taskDisplayArea, boolean z) {
        if (z) {
            return false;
        }
        return taskDisplayArea.supportsNonResizableMultiWindow();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int getResizeMode(android.content.pm.ActivityInfo r9) {
        /*
            r8 = this;
            r0 = 0
            if (r9 == 0) goto L64
            java.lang.String r1 = r9.packageName
            if (r1 != 0) goto L8
            goto L64
        L8:
            long r1 = android.os.Binder.clearCallingIdentity()
            android.content.pm.IPackageManager r3 = android.app.AppGlobals.getPackageManager()     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L2f
            android.content.ComponentName r4 = r9.getComponentName()     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L2f
            com.android.server.wm.ActivityTaskManagerService r5 = r8.mAtm     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L2f
            android.content.Context r5 = r5.mContext     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L2f
            int r5 = r5.getUserId()     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L2f
            r6 = 128(0x80, double:6.32E-322)
            android.content.pm.ActivityInfo r3 = r3.getActivityInfo(r4, r6, r5)     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L2f
            boolean r3 = r8.isIgnoreDevSettingForNonResizable(r3)     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L2f
            android.os.Binder.restoreCallingIdentity(r1)
            goto L33
        L2a:
            r8 = move-exception
            android.os.Binder.restoreCallingIdentity(r1)
            throw r8
        L2f:
            android.os.Binder.restoreCallingIdentity(r1)
            r3 = r0
        L33:
            com.android.server.wm.ActivityTaskManagerService r1 = r8.mAtm
            java.lang.Object r1 = r1.mGlobalLockWithoutBoost
            monitor-enter(r1)
            int r2 = r9.resizeMode     // Catch: java.lang.Throwable -> L61
            java.lang.String r4 = r9.packageName     // Catch: java.lang.Throwable -> L61
            int r2 = r8.checkSupportPolicyLocked(r2, r4)     // Catch: java.lang.Throwable -> L61
            boolean r4 = android.content.pm.ActivityInfo.isResizeableMode(r2)     // Catch: java.lang.Throwable -> L61
            if (r4 != 0) goto L4f
            boolean r9 = r9.supportsPictureInPicture()     // Catch: java.lang.Throwable -> L61
            if (r9 == 0) goto L4d
            goto L4f
        L4d:
            r9 = r0
            goto L50
        L4f:
            r9 = 1
        L50:
            com.android.server.wm.ActivityTaskManagerService r4 = r8.mAtm     // Catch: java.lang.Throwable -> L61
            com.android.server.wm.RootWindowContainer r4 = r4.mRootWindowContainer     // Catch: java.lang.Throwable -> L61
            com.android.server.wm.TaskDisplayArea r4 = r4.getDefaultTaskDisplayArea()     // Catch: java.lang.Throwable -> L61
            boolean r8 = r8.supportsMultiWindowInDisplayArea(r4, r2, r9, r3)     // Catch: java.lang.Throwable -> L61
            if (r8 == 0) goto L5f
            r0 = 2
        L5f:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L61
            return r0
        L61:
            r8 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L61
            throw r8
        L64:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.MultiWindowSupportPolicyController.getResizeMode(android.content.pm.ActivityInfo):int");
    }

    public boolean isAllowListApp(String str) {
        MultiWindowSupportRepository multiWindowSupportRepository = this.mAllowListRepository;
        return multiWindowSupportRepository != null && multiWindowSupportRepository.containsPackage(str, false);
    }

    public void addAllowPackage(String str) {
        MultiWindowSupportRepository multiWindowSupportRepository = this.mAllowListRepository;
        if (multiWindowSupportRepository == null) {
            return;
        }
        multiWindowSupportRepository.addPackage(str);
    }

    public void removeAllowPackage(String str) {
        MultiWindowSupportRepository multiWindowSupportRepository = this.mAllowListRepository;
        if (multiWindowSupportRepository == null) {
            return;
        }
        multiWindowSupportRepository.removePackage(str);
    }

    public List getAllowAppList() {
        MultiWindowSupportRepository multiWindowSupportRepository = this.mAllowListRepository;
        if (multiWindowSupportRepository == null) {
            return Collections.emptyList();
        }
        return multiWindowSupportRepository.getCopiedPackageList(false);
    }

    public boolean isBlocklistApp(String str) {
        MultiWindowSupportRepository multiWindowSupportRepository = this.mBlockListRepository;
        return multiWindowSupportRepository != null && multiWindowSupportRepository.containsPackage(str, true);
    }

    public void addBlockPackage(String str) {
        MultiWindowSupportRepository multiWindowSupportRepository = this.mBlockListRepository;
        if (multiWindowSupportRepository == null) {
            return;
        }
        multiWindowSupportRepository.addPackage(str);
    }

    public void removeBlockPackage(String str) {
        MultiWindowSupportRepository multiWindowSupportRepository = this.mBlockListRepository;
        if (multiWindowSupportRepository == null) {
            return;
        }
        multiWindowSupportRepository.removePackage(str);
    }

    public List getBlocklistAppList() {
        MultiWindowSupportRepository multiWindowSupportRepository = this.mBlockListRepository;
        if (multiWindowSupportRepository == null) {
            return new ArrayList();
        }
        return multiWindowSupportRepository.getCopiedPackageList(true);
    }

    public void removeFromDeferredBlockListIfNeeedLocked(Task task) {
        MultiWindowSupportRepository multiWindowSupportRepository;
        ComponentName componentName = task.realActivity;
        if (componentName == null || (multiWindowSupportRepository = this.mBlockListRepository) == null || !multiWindowSupportRepository.removeDeferredPackages(componentName.getPackageName())) {
            return;
        }
        updateSupportPolicyLocked(task, null);
    }

    public final boolean isIgnoreDevSettingForNonResizable(ActivityInfo activityInfo) {
        if (activityInfo == null) {
            return false;
        }
        ApplicationInfo applicationInfo = activityInfo.applicationInfo;
        if (applicationInfo == null || !containsIgnoreNonResizableMetaData(applicationInfo.metaData)) {
            return containsIgnoreNonResizableMetaData(activityInfo.metaData);
        }
        return true;
    }

    public static boolean containsIgnoreNonResizableMetaData(Bundle bundle) {
        return bundle != null && bundle.getBoolean("com.samsung.android.multiwindow.ignore.nonresizable.setting", false);
    }

    /* loaded from: classes3.dex */
    public abstract class MultiWindowSupportRepository implements PackageFeatureCallback {
        public final ActivityTaskManagerService mAtm;
        public Set mDeferredPackages;
        public Set mTempPackages;
        public final String mTitle;
        public final Object mLock = new Object();
        public final Set mPackages = new HashSet();
        public final Runnable mUpdateRunnable = new Runnable() { // from class: com.android.server.wm.MultiWindowSupportPolicyController$MultiWindowSupportRepository$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MultiWindowSupportPolicyController.MultiWindowSupportRepository.this.onUpdate();
            }
        };

        public abstract void onUpdate();

        public MultiWindowSupportRepository(ActivityTaskManagerService activityTaskManagerService, String str) {
            this.mAtm = activityTaskManagerService;
            this.mTitle = str;
        }

        public void replaceAllPackages(Set set) {
            synchronized (this.mLock) {
                this.mPackages.clear();
                this.mPackages.addAll(set);
                scheduleUpdate();
            }
        }

        public boolean containsPackage(String str, boolean z) {
            boolean contains;
            if (str == null) {
                return false;
            }
            synchronized (this.mLock) {
                contains = getPackages(z).contains(str);
            }
            return contains;
        }

        public void addPackage(String str) {
            if (str == null) {
                return;
            }
            synchronized (this.mLock) {
                if (this.mPackages.add(str)) {
                    scheduleUpdate();
                }
            }
        }

        public void removePackage(String str) {
            if (str == null) {
                return;
            }
            synchronized (this.mLock) {
                if (this.mPackages.remove(str)) {
                    scheduleUpdate();
                }
            }
        }

        public boolean removeDeferredPackages(String str) {
            boolean z = false;
            if (str == null) {
                return false;
            }
            synchronized (this.mLock) {
                Set set = this.mDeferredPackages;
                if (set != null && set.remove(str)) {
                    z = true;
                }
            }
            return z;
        }

        public List getCopiedPackageList(boolean z) {
            ArrayList arrayList = new ArrayList();
            synchronized (this.mLock) {
                arrayList.addAll(getPackages(z));
            }
            return arrayList;
        }

        public final Set getPackages(boolean z) {
            Set set;
            if (!z || (set = this.mDeferredPackages) == null || set.isEmpty()) {
                return this.mPackages;
            }
            Set orCreateTempPackages = getOrCreateTempPackages();
            orCreateTempPackages.clear();
            orCreateTempPackages.addAll(this.mPackages);
            for (String str : this.mDeferredPackages) {
                if (orCreateTempPackages.contains(str)) {
                    orCreateTempPackages.remove(str);
                } else {
                    orCreateTempPackages.add(str);
                }
            }
            return orCreateTempPackages;
        }

        public Set getOrCreateDeferredPackages() {
            if (this.mDeferredPackages == null) {
                this.mDeferredPackages = new HashSet();
            }
            return this.mDeferredPackages;
        }

        public Set getOrCreateTempPackages() {
            if (this.mTempPackages == null) {
                this.mTempPackages = new HashSet();
            }
            return this.mTempPackages;
        }

        public void scheduleUpdate() {
            this.mAtm.mH.removeCallbacks(this.mUpdateRunnable);
            this.mAtm.mH.post(this.mUpdateRunnable);
        }

        public void dump(PrintWriter printWriter, String str) {
            String str2 = str + "  ";
            synchronized (this.mLock) {
                printWriter.println(str + this.mTitle + "=" + this.mPackages.size());
                if (CoreRune.SAFE_DEBUG) {
                    dumpPackages(printWriter, str2, this.mPackages);
                }
                Set set = this.mDeferredPackages;
                if (set != null && !set.isEmpty()) {
                    printWriter.println(str + this.mTitle + "(Deferred)=" + this.mPackages.size());
                    dumpPackages(printWriter, str2, this.mDeferredPackages);
                }
            }
            printWriter.println();
        }

        public final void dumpPackages(PrintWriter printWriter, String str, Set set) {
            printWriter.print(str);
            if (set.isEmpty()) {
                printWriter.print("Empty");
            } else {
                Iterator it = set.iterator();
                int i = 0;
                while (it.hasNext()) {
                    printWriter.print((String) it.next());
                    i++;
                    if (i % 5 == 0) {
                        printWriter.println();
                        printWriter.print(str);
                    }
                    printWriter.print(" ");
                }
            }
            printWriter.println();
        }

        /* loaded from: classes3.dex */
        public class AllowListRepository extends MultiWindowSupportRepository {
            public AllowListRepository(ActivityTaskManagerService activityTaskManagerService) {
                super(activityTaskManagerService, "AllowList");
                PackageFeature.ALLOW_MULTI_WINDOW.registerCallback(this);
            }

            @Override // com.samsung.android.server.packagefeature.PackageFeatureCallback
            public void onPackageFeatureDataChanged(PackageFeatureData packageFeatureData) {
                replaceAllPackages(packageFeatureData.keySet());
            }

            @Override // com.android.server.wm.MultiWindowSupportPolicyController.MultiWindowSupportRepository
            public void onUpdate() {
                WindowManagerGlobalLock windowManagerGlobalLock = this.mAtm.mGlobalLock;
                WindowManagerService.boostPriorityForLockedSection();
                synchronized (windowManagerGlobalLock) {
                    try {
                        this.mAtm.mMwSupportPolicyController.updateAllTasksLocked();
                    } catch (Throwable th) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }

        /* loaded from: classes3.dex */
        public class BlockListRepository extends MultiWindowSupportRepository {
            public BlockListRepository(ActivityTaskManagerService activityTaskManagerService) {
                super(activityTaskManagerService, "BlockList");
                PackageFeature.DISPLAY_COMPAT.registerCallback(this);
            }

            @Override // com.samsung.android.server.packagefeature.PackageFeatureCallback
            public void onPackageFeatureDataChanged(PackageFeatureData packageFeatureData) {
                synchronized (this.mLock) {
                    Set orCreateTempPackages = getOrCreateTempPackages();
                    orCreateTempPackages.clear();
                    for (Map.Entry entry : packageFeatureData.entrySet()) {
                        if ("b".equals(entry.getValue())) {
                            orCreateTempPackages.add((String) entry.getKey());
                        }
                    }
                    replaceAllPackages(orCreateTempPackages);
                }
            }

            @Override // com.android.server.wm.MultiWindowSupportPolicyController.MultiWindowSupportRepository
            public void onUpdate() {
                WindowManagerGlobalLock windowManagerGlobalLock = this.mAtm.mGlobalLock;
                WindowManagerService.boostPriorityForLockedSection();
                synchronized (windowManagerGlobalLock) {
                    try {
                        synchronized (this.mLock) {
                            Set orCreateDeferredPackages = getOrCreateDeferredPackages();
                            Iterator it = this.mAtm.getRecentTasks().getRawTasks().iterator();
                            while (it.hasNext()) {
                                Task task = (Task) it.next();
                                if (task.realActivity != null && task.getRootTask() != null) {
                                    String packageName = task.realActivity.getPackageName();
                                    if (!orCreateDeferredPackages.contains(packageName)) {
                                        if (containsPackage(packageName, false) != ((task.mResizeMode & 2097152) != 0)) {
                                            orCreateDeferredPackages.add(packageName);
                                        }
                                    }
                                }
                            }
                        }
                    } catch (Throwable th) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }
}
