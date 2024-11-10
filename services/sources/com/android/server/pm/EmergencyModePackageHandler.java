package com.android.server.pm;

import android.app.ActivityThread;
import android.content.Context;
import android.content.IIntentReceiver;
import android.content.Intent;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.UserHandle;
import android.util.SparseArray;
import com.android.server.ServiceThread;
import com.android.server.Watchdog;
import com.android.server.pm.pkg.PackageStateInternal;
import com.samsung.android.emergencymode.Elog;
import com.samsung.android.knox.SemPersonaManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class EmergencyModePackageHandler {
    public static final int[] EMPTY_INT_ARRAY = new int[0];
    public final Context mContext;
    public final EMPackageHandler mEMPackageHander;
    public final ServiceThread mEMPackageHanderThread;
    public final PendingPackageBroadcastsWithList mPendingBroadcastsForBurst;
    public final PackageManagerService mPkgMgrSvc;
    public final ProtectedPackages mProtectedPackages;
    public UserManagerInternal mUserManager;

    public EmergencyModePackageHandler(Context context, PackageManagerService packageManagerService, UserManagerInternal userManagerInternal, ProtectedPackages protectedPackages) {
        ServiceThread serviceThread = new ServiceThread("EMPackageHandler", 0, true);
        this.mEMPackageHanderThread = serviceThread;
        this.mPendingBroadcastsForBurst = new PendingPackageBroadcastsWithList();
        serviceThread.start();
        this.mContext = context;
        this.mPkgMgrSvc = packageManagerService;
        this.mProtectedPackages = protectedPackages;
        EMPackageHandler eMPackageHandler = new EMPackageHandler(serviceThread.getLooper());
        this.mEMPackageHander = eMPackageHandler;
        this.mUserManager = userManagerInternal;
        Watchdog.getInstance().addThread(eMPackageHandler, 600000L);
    }

    /* loaded from: classes3.dex */
    public class EMPackageHandler extends Handler {
        public final long TIMEOUT;
        public ArrayList[] emComponents;
        public int emCurrentPosition;
        public boolean[] emDontKillFlags;
        public int emID;
        public int[] emNewState;
        public String[] emPackages;
        public int emPreviousID;
        public int emProgression;
        public IIntentReceiver emReceiverBroadcastNext;
        public int emSize;
        public int emTotSize;
        public int[] emUids;
        public int emUserId;

        public EMPackageHandler(Looper looper) {
            super(looper);
            this.emID = 0;
            this.emPreviousID = -1;
            this.TIMEOUT = 60000L;
            this.emReceiverBroadcastNext = new IIntentReceiver.Stub() { // from class: com.android.server.pm.EmergencyModePackageHandler.EMPackageHandler.1
                public void performReceive(Intent intent, int i, String str, Bundle bundle, boolean z, boolean z2, int i2) {
                    int i3 = -1;
                    if (intent == null) {
                        Elog.v("EMPkgHandler", "intent is null!");
                    } else {
                        i3 = intent.getIntExtra("EM_PKG_HADNLER_ID", -1);
                    }
                    if (EMPackageHandler.this.emID == i3) {
                        Elog.d("EMPkgHandler", "performReceive sending EM_SEND_PENDING_BROADCAST id[" + i3 + "]");
                        EmergencyModePackageHandler.this.mEMPackageHander.sendEmptyMessage(2);
                        return;
                    }
                    Elog.v("EMPkgHandler", "performReceive canceled emID[" + EMPackageHandler.this.emID + "]  thisID[" + i3 + "]");
                }
            };
        }

        public void initForPendingBroadcast(int i) {
            makeNewID();
            this.emPreviousID = this.emID;
            this.emPackages = null;
            this.emComponents = null;
            this.emUids = null;
            this.emDontKillFlags = null;
            this.emNewState = null;
            this.emSize = 0;
            this.emTotSize = 0;
            this.emCurrentPosition = 0;
            this.emUserId = i;
            this.emProgression = 0;
        }

        public void resetTask() {
            makeNewID();
            this.emPreviousID = this.emID;
            this.emPackages = null;
            this.emComponents = null;
            this.emUids = null;
            this.emDontKillFlags = null;
            this.emNewState = null;
            this.emSize = 0;
            this.emTotSize = 0;
            this.emCurrentPosition = 0;
            this.emProgression = 0;
            Elog.d("EMPkgHandler", "EMPackageHandler memory references are released");
        }

        public void makeNewID() {
            this.emID = (this.emID + 1) % 1000;
            Elog.d("EMPkgHandler", "makeNewID [" + this.emID + "]");
        }

        public boolean isCanceled() {
            return this.emPreviousID != this.emID;
        }

        public int getProgressionOfPackageChanged() {
            return this.emProgression;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                doHandleMessage(message);
            } finally {
                Process.setThreadPriority(0);
            }
        }

        public void doHandleMessage(Message message) {
            int i;
            int i2 = message.what;
            if (i2 == 1) {
                Elog.d("EMPkgHandler", "EM_MAKE_PENDING_BROADCAST Start");
                initForPendingBroadcast(message.arg1);
                PendingPackageBroadcastsWithList pendingPackageBroadcastsWithList = EmergencyModePackageHandler.this.mPendingBroadcastsForBurst;
                if (pendingPackageBroadcastsWithList != null) {
                    int size = pendingPackageBroadcastsWithList.size();
                    this.emSize = size;
                    if (size <= 0) {
                        Elog.v("EMPkgHandler", "pending size [" + this.emSize + "] EM_MAKE_PENDING_BROADCAST Cancel");
                        this.emProgression = 0;
                        EmergencyModePackageHandler.this.mEMPackageHander.sendEmptyMessage(4);
                        return;
                    }
                    String[] strArr = new String[size];
                    this.emPackages = strArr;
                    ArrayList[] arrayListArr = new ArrayList[size];
                    this.emComponents = arrayListArr;
                    int[] iArr = new int[size];
                    this.emUids = iArr;
                    boolean[] zArr = new boolean[size];
                    this.emDontKillFlags = zArr;
                    int[] iArr2 = new int[size];
                    this.emNewState = iArr2;
                    int handlePendingBroadcastsForBurst = EmergencyModePackageHandler.this.handlePendingBroadcastsForBurst(strArr, arrayListArr, iArr, zArr, iArr2, size);
                    this.emTotSize = handlePendingBroadcastsForBurst;
                    if (handlePendingBroadcastsForBurst > 0) {
                        EmergencyModePackageHandler.this.mEMPackageHander.sendEmptyMessage(2);
                    }
                }
                Elog.d("EMPkgHandler", "EM_MAKE_PENDING_BROADCAST End");
                return;
            }
            if (i2 != 2) {
                if (i2 == 3) {
                    Elog.d("EMPkgHandler", "EM_CHECK_TIMEOUT_OF_BROADCAST");
                    EmergencyModePackageHandler.this.mEMPackageHander.sendEmptyMessage(2);
                    return;
                }
                if (i2 == 4) {
                    Elog.d("EMPkgHandler", "EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED");
                    Intent intent = new Intent("com.samsung.intent.action.EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED");
                    intent.addFlags(268435456);
                    EmergencyModePackageHandler.this.mContext.sendBroadcast(intent);
                    resetTask();
                    return;
                }
                if (i2 != 5) {
                    return;
                }
                if (EmergencyModePackageHandler.this.mEMPackageHander.hasMessages(4)) {
                    Elog.d("EMPkgHandler", "cancelEMHandlerSendPendingBroadcast : Nothing to do");
                    return;
                }
                if (EmergencyModePackageHandler.this.mEMPackageHander.hasMessages(2)) {
                    EmergencyModePackageHandler.this.mEMPackageHander.removeMessages(2);
                }
                if (EmergencyModePackageHandler.this.mEMPackageHander.hasMessages(3)) {
                    EmergencyModePackageHandler.this.mEMPackageHander.removeMessages(3);
                }
                if (EmergencyModePackageHandler.this.mEMPackageHander.hasMessages(1)) {
                    EmergencyModePackageHandler.this.mEMPackageHander.removeMessages(1);
                }
                Elog.v("EMPkgHandler", "EM_CANCEL_SENDING_BROADCAST");
                EmergencyModePackageHandler.this.mEMPackageHander.sendEmptyMessage(4);
                return;
            }
            Elog.d("EMPkgHandler", "EM_SEND_PENDING_BROADCAST Start");
            if (EmergencyModePackageHandler.this.mEMPackageHander.hasMessages(3)) {
                EmergencyModePackageHandler.this.mEMPackageHander.removeMessages(3);
            }
            if (this.emCurrentPosition >= this.emTotSize) {
                this.emProgression = 0;
                if (this.emPreviousID == this.emID) {
                    EmergencyModePackageHandler.this.mEMPackageHander.sendEmptyMessage(4);
                    return;
                }
                Elog.v("EMPkgHandler", "SKIP EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED emPrevioudID[" + this.emPreviousID + "] emID[" + this.emID + "]");
                return;
            }
            Computer snapshotComputer = EmergencyModePackageHandler.this.mPkgMgrSvc.snapshotComputer();
            int i3 = 0;
            while (i3 < 10 && (i = this.emCurrentPosition) < this.emTotSize) {
                PackageStateInternal packageStateInternal = snapshotComputer.getPackageStateInternal(this.emPackages[i]);
                int enabledState = packageStateInternal != null ? packageStateInternal.getUserStateOrDefault(this.emUserId).getEnabledState() : -1;
                boolean z = i3 == 9 || this.emCurrentPosition == this.emTotSize - 1;
                int[] iArr3 = this.emNewState;
                int i4 = this.emCurrentPosition;
                if (enabledState == iArr3[i4]) {
                    this.emProgression = (int) ((i4 / this.emTotSize) * 100.0f);
                    if (z) {
                        EmergencyModePackageHandler.this.mEMPackageHander.sendEmptyMessageDelayed(3, 60000L);
                        EmergencyModePackageHandler emergencyModePackageHandler = EmergencyModePackageHandler.this;
                        String[] strArr2 = this.emPackages;
                        int i5 = this.emCurrentPosition;
                        emergencyModePackageHandler.sendPackageChangedBroadcastWithReceiver(strArr2[i5], this.emDontKillFlags[i5], this.emComponents[i5], this.emUids[i5], this.emReceiverBroadcastNext, this.emID);
                    } else {
                        EmergencyModePackageHandler.this.sendPackageChangedBroadcastWithReceiver(this.emPackages[i4], this.emDontKillFlags[i4], this.emComponents[i4], this.emUids[i4], null, this.emID);
                    }
                    this.emCurrentPosition++;
                } else {
                    Elog.v("EMPkgHandler", "SKIP EM_SEND_PENDING_BROADCAST [" + this.emCurrentPosition + "] / [" + (this.emTotSize - 1) + "] name[" + this.emPackages[this.emCurrentPosition] + "] curr[" + enabledState + "]  now[" + this.emNewState[this.emCurrentPosition] + "]  emUserId[" + this.emUserId + "]");
                    if (i3 == 9 || this.emCurrentPosition == this.emTotSize - 1) {
                        EmergencyModePackageHandler.this.mEMPackageHander.sendEmptyMessage(2);
                    }
                    this.emCurrentPosition++;
                }
                i3++;
            }
            Elog.d("EMPkgHandler", "EM_SEND_PENDING_BROADCAST End");
        }
    }

    /* loaded from: classes3.dex */
    public class PendingPackageBroadcastsWithList {
        public final SparseArray mUidMap = new SparseArray(2);
        public final SparseArray mUidMapOfNewPkgState = new SparseArray(2);

        public ArrayList get(int i, String str) {
            return (ArrayList) getOrAllocate(i).get(str);
        }

        public void put(int i, String str, ArrayList arrayList) {
            getOrAllocate(i).put(str, arrayList);
        }

        public void putNewState(int i, String str, int i2) {
            getOrAllocateNewState(i).put(str, new Integer(i2));
        }

        public void remove(int i) {
            this.mUidMap.remove(i);
            this.mUidMapOfNewPkgState.remove(i);
        }

        public LinkedHashMap packagesForUserId(int i) {
            return (LinkedHashMap) this.mUidMap.get(i);
        }

        public LinkedHashMap packagesNewStateForUserId(int i) {
            return (LinkedHashMap) this.mUidMapOfNewPkgState.get(i);
        }

        public int userIdCount() {
            return this.mUidMap.size();
        }

        public int userIdAt(int i) {
            return this.mUidMap.keyAt(i);
        }

        public int size() {
            int i = 0;
            for (int i2 = 0; i2 < this.mUidMap.size(); i2++) {
                i += ((LinkedHashMap) this.mUidMap.valueAt(i2)).size();
            }
            return i;
        }

        public void clear() {
            this.mUidMap.clear();
            this.mUidMapOfNewPkgState.clear();
        }

        public final LinkedHashMap getOrAllocate(int i) {
            LinkedHashMap linkedHashMap = (LinkedHashMap) this.mUidMap.get(i);
            if (linkedHashMap != null) {
                return linkedHashMap;
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            this.mUidMap.put(i, linkedHashMap2);
            return linkedHashMap2;
        }

        public final LinkedHashMap getOrAllocateNewState(int i) {
            LinkedHashMap linkedHashMap = (LinkedHashMap) this.mUidMapOfNewPkgState.get(i);
            if (linkedHashMap != null) {
                return linkedHashMap;
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            this.mUidMapOfNewPkgState.put(i, linkedHashMap2);
            return linkedHashMap2;
        }
    }

    public PendingPackageBroadcastsWithList getPendingBroadcastsForBurst() {
        return this.mPendingBroadcastsForBurst;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void sendPackageChangedBroadcastWithReceiver(java.lang.String r16, boolean r17, java.util.ArrayList r18, int r19, android.content.IIntentReceiver r20, int r21) {
        /*
            r15 = this;
            r1 = r18
            int r2 = android.os.UserHandle.getUserId(r19)
            r3 = 0
            android.content.pm.IPackageManager r0 = r15.getIPackageManager()     // Catch: android.os.RemoteException -> L14
            r6 = r16
            boolean r0 = r0.isInstantApp(r6, r2)     // Catch: android.os.RemoteException -> L12
            goto L1b
        L12:
            r0 = move-exception
            goto L17
        L14:
            r0 = move-exception
            r6 = r16
        L17:
            r0.printStackTrace()
            r0 = r3
        L1b:
            if (r0 == 0) goto L22
            int[] r0 = new int[]{r2}
            goto L24
        L22:
            int[] r0 = com.android.server.pm.EmergencyModePackageHandler.EMPTY_INT_ARRAY
        L24:
            r12 = r0
            android.os.Bundle r7 = new android.os.Bundle
            r0 = 4
            r7.<init>(r0)
            java.lang.Object r0 = r1.get(r3)
            java.lang.String r0 = (java.lang.String) r0
            java.lang.String r2 = "android.intent.extra.changed_component_name"
            r7.putString(r2, r0)
            int r0 = r18.size()
            java.lang.String[] r0 = new java.lang.String[r0]
            r1.toArray(r0)
            java.lang.String r1 = "android.intent.extra.changed_component_name_list"
            r7.putStringArray(r1, r0)
            java.lang.String r0 = "android.intent.extra.DONT_KILL_APP"
            r1 = r17
            r7.putBoolean(r0, r1)
            java.lang.String r0 = "android.intent.extra.UID"
            r1 = r19
            r7.putInt(r0, r1)
            java.lang.String r0 = "EM_PKG_HADNLER_ID"
            r2 = r21
            r7.putInt(r0, r2)
            r2 = r15
            com.android.server.pm.PackageManagerService r4 = r2.mPkgMgrSvc
            java.lang.String r5 = "android.intent.action.PACKAGE_CHANGED"
            r8 = 268435456(0x10000000, float:2.5243549E-29)
            r9 = 0
            int r0 = android.os.UserHandle.getUserId(r19)
            int[] r11 = new int[]{r0}
            r13 = 0
            r14 = 0
            r6 = r16
            r10 = r20
            r4.sendPackageBroadcast(r5, r6, r7, r8, r9, r10, r11, r12, r13, r14)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.EmergencyModePackageHandler.sendPackageChangedBroadcastWithReceiver(java.lang.String, boolean, java.util.ArrayList, int, android.content.IIntentReceiver, int):void");
    }

    public final IPackageManager getIPackageManager() {
        return ActivityThread.getPackageManager();
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0192 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setApplicationEnabledSettingWithList(java.util.List r21, int r22, int r23, boolean r24, boolean r25, int r26, java.lang.String r27) {
        /*
            Method dump skipped, instructions count: 409
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.EmergencyModePackageHandler.setApplicationEnabledSettingWithList(java.util.List, int, int, boolean, boolean, int, java.lang.String):void");
    }

    public final int handlePendingBroadcastsForBurst(String[] strArr, ArrayList[] arrayListArr, int[] iArr, boolean[] zArr, int[] iArr2, int i) {
        Elog.d("EMPkgHandler", "handlePendingBroadcastsForBurst size[" + i + "]");
        if (i <= 0) {
            return 0;
        }
        Computer snapshotComputer = this.mPkgMgrSvc.snapshotComputer();
        int i2 = 0;
        for (int i3 = 0; i3 < this.mPendingBroadcastsForBurst.userIdCount(); i3++) {
            int userIdAt = this.mPendingBroadcastsForBurst.userIdAt(i3);
            Iterator it = this.mPendingBroadcastsForBurst.packagesForUserId(userIdAt).entrySet().iterator();
            LinkedHashMap packagesNewStateForUserId = this.mPendingBroadcastsForBurst.packagesNewStateForUserId(userIdAt);
            if (packagesNewStateForUserId != null) {
                while (it.hasNext() && i2 < i) {
                    Map.Entry entry = (Map.Entry) it.next();
                    PackageStateInternal packageStateInternal = snapshotComputer.getPackageStateInternal((String) entry.getKey());
                    if (packageStateInternal != null) {
                        strArr[i2] = (String) entry.getKey();
                        arrayListArr[i2] = (ArrayList) entry.getValue();
                        iArr[i2] = UserHandle.getUid(userIdAt, packageStateInternal.getAppId());
                        int intValue = ((Integer) packagesNewStateForUserId.get(strArr[i2])).intValue();
                        iArr2[i2] = intValue;
                        if (intValue == 1) {
                            zArr[i2] = true;
                        } else if (intValue == 0) {
                            zArr[i2] = true;
                        } else {
                            zArr[i2] = false;
                        }
                        i2++;
                    }
                }
            }
        }
        this.mPendingBroadcastsForBurst.clear();
        return i2;
    }

    public int getProgressionOfPackageChanged() {
        EMPackageHandler eMPackageHandler = this.mEMPackageHander;
        if (eMPackageHandler != null) {
            return eMPackageHandler.getProgressionOfPackageChanged();
        }
        return -1;
    }

    public void cancelEMPHandlerSendPendingBroadcast() {
        EMPackageHandler eMPackageHandler = this.mEMPackageHander;
        if (eMPackageHandler != null) {
            if (eMPackageHandler.isCanceled()) {
                Elog.d("EMPkgHandler", "cancelEMHandlerSendPendingBroadcast : Already done");
                this.mEMPackageHander.sendEmptyMessage(4);
            } else {
                this.mEMPackageHander.sendEmptyMessage(5);
            }
        }
    }

    public boolean isKnox(int i) {
        return SemPersonaManager.isKnoxId(i);
    }

    public void setEnabledSettingEMPkgHndlr(ArrayList arrayList, int i, int i2, int i3, String str) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new PackageManager.ComponentEnabledSetting((String) it.next(), i, i2));
        }
        getIPackageManager().setComponentEnabledSettings(arrayList2, i3, str);
    }

    public void sendPackageChangedBroadcastEMPkgHndlr(String str, boolean z, ArrayList arrayList, int i) {
        this.mPkgMgrSvc.sendPackageChangedBroadcast(this.mPkgMgrSvc.snapshotComputer(), str, z, arrayList, i, "EmergencyMode");
    }
}
