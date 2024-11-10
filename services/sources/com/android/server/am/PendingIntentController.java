package com.android.server.am;

import android.app.ActivityManagerInternal;
import android.app.AppGlobals;
import android.app.PendingIntent;
import android.app.PendingIntentStats;
import android.content.IIntentSender;
import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import com.android.internal.os.IResultReceiver;
import com.android.internal.util.RingBuffer;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.AlarmManagerInternal;
import com.android.server.LocalServices;
import com.android.server.am.PendingIntentRecord;
import com.android.server.wm.ActivityTaskManagerInternal;
import com.android.server.wm.SafeActivityOptions;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.function.BiConsumer;

/* loaded from: classes.dex */
public class PendingIntentController {
    public ActivityManagerInternal mAmInternal;
    public final ActivityManagerConstants mConstants;
    public final Handler mH;
    public final UserController mUserController;
    public final Object mLock = new Object();
    public final HashMap mIntentSenderRecords = new HashMap();
    public final SparseIntArray mIntentsPerUid = new SparseIntArray();
    public final SparseArray mRecentIntentsPerUid = new SparseArray();
    public final ActivityTaskManagerInternal mAtmInternal = (ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class);

    public PendingIntentController(Looper looper, UserController userController, ActivityManagerConstants activityManagerConstants) {
        this.mH = new Handler(looper);
        this.mUserController = userController;
        this.mConstants = activityManagerConstants;
    }

    public void onActivityManagerInternalAdded() {
        synchronized (this.mLock) {
            this.mAmInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        }
    }

    public PendingIntentRecord getIntentSender(int i, String str, String str2, int i2, int i3, IBinder iBinder, String str3, int i4, Intent[] intentArr, String[] strArr, int i5, Bundle bundle) {
        synchronized (this.mLock) {
            if (intentArr != null) {
                for (Intent intent : intentArr) {
                    intent.setDefusable(true);
                }
            }
            Bundle.setDefusable(bundle, true);
            boolean z = (i5 & 536870912) != 0;
            boolean z2 = (i5 & 268435456) != 0;
            boolean z3 = (i5 & 134217728) != 0;
            PendingIntentRecord.Key key = new PendingIntentRecord.Key(i, str, str2, iBinder, str3, i4, intentArr, strArr, i5 & (-939524097), SafeActivityOptions.fromBundle(bundle), i3);
            WeakReference weakReference = (WeakReference) this.mIntentSenderRecords.get(key);
            PendingIntentRecord pendingIntentRecord = weakReference != null ? (PendingIntentRecord) weakReference.get() : null;
            if (pendingIntentRecord != null) {
                if (!z2) {
                    if (z3) {
                        Intent intent2 = pendingIntentRecord.key.requestIntent;
                        if (intent2 != null) {
                            intent2.replaceExtras(intentArr != null ? intentArr[intentArr.length - 1] : null);
                        }
                        if (intentArr != null) {
                            int length = intentArr.length - 1;
                            PendingIntentRecord.Key key2 = pendingIntentRecord.key;
                            intentArr[length] = key2.requestIntent;
                            key2.allIntents = intentArr;
                            key2.allResolvedTypes = strArr;
                        } else {
                            PendingIntentRecord.Key key3 = pendingIntentRecord.key;
                            key3.allIntents = null;
                            key3.allResolvedTypes = null;
                        }
                    }
                    return pendingIntentRecord;
                }
                makeIntentSenderCanceled(pendingIntentRecord);
                this.mIntentSenderRecords.remove(key);
                decrementUidStatLocked(pendingIntentRecord);
            }
            if (z) {
                return pendingIntentRecord;
            }
            PendingIntentRecord pendingIntentRecord2 = new PendingIntentRecord(this, key, i2);
            this.mIntentSenderRecords.put(key, pendingIntentRecord2.ref);
            incrementUidStatLocked(pendingIntentRecord2);
            return pendingIntentRecord2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0062 A[Catch: all -> 0x0088, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000c, B:9:0x000e, B:10:0x0018, B:12:0x001e, B:64:0x0026, B:15:0x002a, B:61:0x0032, B:54:0x0038, B:50:0x0060, B:43:0x0062, B:46:0x0071, B:20:0x003f, B:29:0x004b, B:35:0x0052, B:67:0x0086), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0060 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean removePendingIntentsForPackage(java.lang.String r7, int r8, int r9, boolean r10) {
        /*
            r6 = this;
            java.lang.Object r0 = r6.mLock
            monitor-enter(r0)
            java.util.HashMap r1 = r6.mIntentSenderRecords     // Catch: java.lang.Throwable -> L88
            int r1 = r1.size()     // Catch: java.lang.Throwable -> L88
            r2 = 0
            if (r1 > 0) goto Le
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L88
            return r2
        Le:
            java.util.HashMap r1 = r6.mIntentSenderRecords     // Catch: java.lang.Throwable -> L88
            java.util.Collection r1 = r1.values()     // Catch: java.lang.Throwable -> L88
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L88
        L18:
            boolean r3 = r1.hasNext()     // Catch: java.lang.Throwable -> L88
            if (r3 == 0) goto L86
            java.lang.Object r3 = r1.next()     // Catch: java.lang.Throwable -> L88
            java.lang.ref.WeakReference r3 = (java.lang.ref.WeakReference) r3     // Catch: java.lang.Throwable -> L88
            if (r3 != 0) goto L2a
            r1.remove()     // Catch: java.lang.Throwable -> L88
            goto L18
        L2a:
            java.lang.Object r3 = r3.get()     // Catch: java.lang.Throwable -> L88
            com.android.server.am.PendingIntentRecord r3 = (com.android.server.am.PendingIntentRecord) r3     // Catch: java.lang.Throwable -> L88
            if (r3 != 0) goto L36
            r1.remove()     // Catch: java.lang.Throwable -> L88
            goto L18
        L36:
            if (r7 != 0) goto L3f
            com.android.server.am.PendingIntentRecord$Key r4 = r3.key     // Catch: java.lang.Throwable -> L88
            int r4 = r4.userId     // Catch: java.lang.Throwable -> L88
            if (r4 == r8) goto L5d
            goto L18
        L3f:
            int r4 = r3.uid     // Catch: java.lang.Throwable -> L88
            int r4 = android.os.UserHandle.getAppId(r4)     // Catch: java.lang.Throwable -> L88
            if (r4 == r9) goto L48
            goto L18
        L48:
            r4 = -1
            if (r8 == r4) goto L52
            com.android.server.am.PendingIntentRecord$Key r4 = r3.key     // Catch: java.lang.Throwable -> L88
            int r4 = r4.userId     // Catch: java.lang.Throwable -> L88
            if (r4 == r8) goto L52
            goto L18
        L52:
            com.android.server.am.PendingIntentRecord$Key r4 = r3.key     // Catch: java.lang.Throwable -> L88
            java.lang.String r4 = r4.packageName     // Catch: java.lang.Throwable -> L88
            boolean r4 = r4.equals(r7)     // Catch: java.lang.Throwable -> L88
            if (r4 != 0) goto L5d
            goto L18
        L5d:
            r2 = 1
            if (r10 != 0) goto L62
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L88
            return r2
        L62:
            r1.remove()     // Catch: java.lang.Throwable -> L88
            r6.makeIntentSenderCanceled(r3)     // Catch: java.lang.Throwable -> L88
            r6.decrementUidStatLocked(r3)     // Catch: java.lang.Throwable -> L88
            com.android.server.am.PendingIntentRecord$Key r4 = r3.key     // Catch: java.lang.Throwable -> L88
            android.os.IBinder r4 = r4.activity     // Catch: java.lang.Throwable -> L88
            if (r4 == 0) goto L18
            com.android.server.am.PendingIntentController$$ExternalSyntheticLambda0 r4 = new com.android.server.am.PendingIntentController$$ExternalSyntheticLambda0     // Catch: java.lang.Throwable -> L88
            r4.<init>()     // Catch: java.lang.Throwable -> L88
            com.android.server.am.PendingIntentRecord$Key r5 = r3.key     // Catch: java.lang.Throwable -> L88
            android.os.IBinder r5 = r5.activity     // Catch: java.lang.Throwable -> L88
            java.lang.ref.WeakReference r3 = r3.ref     // Catch: java.lang.Throwable -> L88
            android.os.Message r3 = com.android.internal.util.function.pooled.PooledLambda.obtainMessage(r4, r6, r5, r3)     // Catch: java.lang.Throwable -> L88
            android.os.Handler r4 = r6.mH     // Catch: java.lang.Throwable -> L88
            r4.sendMessage(r3)     // Catch: java.lang.Throwable -> L88
            goto L18
        L86:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L88
            return r2
        L88:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L88
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.PendingIntentController.removePendingIntentsForPackage(java.lang.String, int, int, boolean):boolean");
    }

    public void cancelIntentSender(IIntentSender iIntentSender) {
        if (iIntentSender instanceof PendingIntentRecord) {
            synchronized (this.mLock) {
                PendingIntentRecord pendingIntentRecord = (PendingIntentRecord) iIntentSender;
                try {
                    if (!UserHandle.isSameApp(AppGlobals.getPackageManager().getPackageUid(pendingIntentRecord.key.packageName, 268435456L, UserHandle.getCallingUserId()), Binder.getCallingUid())) {
                        String str = "Permission Denial: cancelIntentSender() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " is not allowed to cancel package " + pendingIntentRecord.key.packageName;
                        Slog.w("ActivityManager", str);
                        throw new SecurityException(str);
                    }
                    cancelIntentSender(pendingIntentRecord, true);
                } catch (RemoteException e) {
                    throw new SecurityException(e);
                }
            }
        }
    }

    public void cancelIntentSender(PendingIntentRecord pendingIntentRecord, boolean z) {
        synchronized (this.mLock) {
            makeIntentSenderCanceled(pendingIntentRecord);
            this.mIntentSenderRecords.remove(pendingIntentRecord.key);
            decrementUidStatLocked(pendingIntentRecord);
            if (z && pendingIntentRecord.key.activity != null) {
                this.mH.sendMessage(PooledLambda.obtainMessage(new PendingIntentController$$ExternalSyntheticLambda0(), this, pendingIntentRecord.key.activity, pendingIntentRecord.ref));
            }
        }
    }

    public boolean registerIntentSenderCancelListener(IIntentSender iIntentSender, IResultReceiver iResultReceiver) {
        if (!(iIntentSender instanceof PendingIntentRecord)) {
            Slog.w("ActivityManager", "registerIntentSenderCancelListener called on non-PendingIntentRecord");
            return true;
        }
        synchronized (this.mLock) {
            PendingIntentRecord pendingIntentRecord = (PendingIntentRecord) iIntentSender;
            if (pendingIntentRecord.canceled) {
                return false;
            }
            pendingIntentRecord.registerCancelListenerLocked(iResultReceiver);
            return true;
        }
    }

    public void unregisterIntentSenderCancelListener(IIntentSender iIntentSender, IResultReceiver iResultReceiver) {
        if (iIntentSender instanceof PendingIntentRecord) {
            synchronized (this.mLock) {
                ((PendingIntentRecord) iIntentSender).unregisterCancelListenerLocked(iResultReceiver);
            }
        }
    }

    public void setPendingIntentAllowlistDuration(IIntentSender iIntentSender, IBinder iBinder, long j, int i, int i2, String str) {
        if (!(iIntentSender instanceof PendingIntentRecord)) {
            Slog.w("ActivityManager", "markAsSentFromNotification(): not a PendingIntentRecord: " + iIntentSender);
            return;
        }
        synchronized (this.mLock) {
            ((PendingIntentRecord) iIntentSender).setAllowlistDurationLocked(iBinder, j, i, i2, str);
        }
    }

    public int getPendingIntentFlags(IIntentSender iIntentSender) {
        int i;
        if (!(iIntentSender instanceof PendingIntentRecord)) {
            Slog.w("ActivityManager", "markAsSentFromNotification(): not a PendingIntentRecord: " + iIntentSender);
            return 0;
        }
        synchronized (this.mLock) {
            i = ((PendingIntentRecord) iIntentSender).key.flags;
        }
        return i;
    }

    public final void makeIntentSenderCanceled(PendingIntentRecord pendingIntentRecord) {
        pendingIntentRecord.canceledFromUID = Binder.getCallingUid();
        pendingIntentRecord.canceledFromPID = Binder.getCallingPid();
        pendingIntentRecord.canceled = true;
        RemoteCallbackList detachCancelListenersLocked = pendingIntentRecord.detachCancelListenersLocked();
        if (detachCancelListenersLocked != null) {
            this.mH.sendMessage(PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.am.PendingIntentController$$ExternalSyntheticLambda1
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ((PendingIntentController) obj).handlePendingIntentCancelled((RemoteCallbackList) obj2);
                }
            }, this, detachCancelListenersLocked));
        }
        ((AlarmManagerInternal) LocalServices.getService(AlarmManagerInternal.class)).remove(new PendingIntent(pendingIntentRecord));
    }

    public final void handlePendingIntentCancelled(RemoteCallbackList remoteCallbackList) {
        int beginBroadcast = remoteCallbackList.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                remoteCallbackList.getBroadcastItem(i).send(0, (Bundle) null);
            } catch (RemoteException unused) {
            }
        }
        remoteCallbackList.finishBroadcast();
        remoteCallbackList.kill();
    }

    public final void clearPendingResultForActivity(IBinder iBinder, WeakReference weakReference) {
        this.mAtmInternal.clearPendingResultForActivity(iBinder, weakReference);
    }

    public void dumpPendingIntents(PrintWriter printWriter, boolean z, String str) {
        boolean z2;
        synchronized (this.mLock) {
            printWriter.println("ACTIVITY MANAGER PENDING INTENTS (dumpsys activity intents)");
            if (this.mIntentSenderRecords.size() > 0) {
                ArrayMap arrayMap = new ArrayMap();
                ArrayList arrayList = new ArrayList();
                for (WeakReference weakReference : this.mIntentSenderRecords.values()) {
                    PendingIntentRecord pendingIntentRecord = weakReference != null ? (PendingIntentRecord) weakReference.get() : null;
                    if (pendingIntentRecord == null) {
                        arrayList.add(weakReference);
                    } else if (str == null || str.equals(pendingIntentRecord.key.packageName)) {
                        ArrayList arrayList2 = (ArrayList) arrayMap.get(pendingIntentRecord.key.packageName);
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                            arrayMap.put(pendingIntentRecord.key.packageName, arrayList2);
                        }
                        arrayList2.add(pendingIntentRecord);
                    }
                }
                int i = 0;
                z2 = false;
                while (i < arrayMap.size()) {
                    ArrayList arrayList3 = (ArrayList) arrayMap.valueAt(i);
                    printWriter.print("  * ");
                    printWriter.print((String) arrayMap.keyAt(i));
                    printWriter.print(": ");
                    printWriter.print(arrayList3.size());
                    printWriter.println(" items");
                    for (int i2 = 0; i2 < arrayList3.size(); i2++) {
                        printWriter.print("    #");
                        printWriter.print(i2);
                        printWriter.print(": ");
                        printWriter.println(arrayList3.get(i2));
                        if (z) {
                            ((PendingIntentRecord) arrayList3.get(i2)).dump(printWriter, "      ");
                        }
                    }
                    i++;
                    z2 = true;
                }
                if (arrayList.size() > 0) {
                    printWriter.println("  * WEAK REFS:");
                    for (int i3 = 0; i3 < arrayList.size(); i3++) {
                        printWriter.print("    #");
                        printWriter.print(i3);
                        printWriter.print(": ");
                        printWriter.println(arrayList.get(i3));
                    }
                    z2 = true;
                }
            } else {
                z2 = false;
            }
            int size = this.mIntentsPerUid.size();
            if (size > 0) {
                for (int i4 = 0; i4 < size; i4++) {
                    printWriter.print("  * UID: ");
                    printWriter.print(this.mIntentsPerUid.keyAt(i4));
                    printWriter.print(" total: ");
                    printWriter.println(this.mIntentsPerUid.valueAt(i4));
                }
            }
            if (!z2) {
                printWriter.println("  (nothing)");
            }
        }
    }

    public List dumpPendingIntentStatsForStatsd() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.mLock) {
            if (this.mIntentSenderRecords.size() > 0) {
                SparseIntArray sparseIntArray = new SparseIntArray();
                SparseIntArray sparseIntArray2 = new SparseIntArray();
                for (WeakReference weakReference : this.mIntentSenderRecords.values()) {
                    if (weakReference != null && weakReference.get() != null) {
                        PendingIntentRecord pendingIntentRecord = (PendingIntentRecord) weakReference.get();
                        int indexOfKey = sparseIntArray.indexOfKey(pendingIntentRecord.uid);
                        if (indexOfKey < 0) {
                            sparseIntArray.put(pendingIntentRecord.uid, 1);
                            sparseIntArray2.put(pendingIntentRecord.uid, pendingIntentRecord.key.requestIntent.getExtrasTotalSize());
                        } else {
                            sparseIntArray.put(pendingIntentRecord.uid, sparseIntArray.valueAt(indexOfKey) + 1);
                            sparseIntArray2.put(pendingIntentRecord.uid, sparseIntArray2.valueAt(indexOfKey) + pendingIntentRecord.key.requestIntent.getExtrasTotalSize());
                        }
                    }
                }
                int size = sparseIntArray.size();
                for (int i = 0; i < size; i++) {
                    arrayList.add(new PendingIntentStats(sparseIntArray.keyAt(i), sparseIntArray.valueAt(i), sparseIntArray2.valueAt(i) / 1024));
                }
            }
        }
        return arrayList;
    }

    public void incrementUidStatLocked(PendingIntentRecord pendingIntentRecord) {
        int i;
        RingBuffer ringBuffer;
        int i2 = pendingIntentRecord.uid;
        int indexOfKey = this.mIntentsPerUid.indexOfKey(i2);
        if (indexOfKey >= 0) {
            i = this.mIntentsPerUid.valueAt(indexOfKey) + 1;
            this.mIntentsPerUid.setValueAt(indexOfKey, i);
        } else {
            this.mIntentsPerUid.put(i2, 1);
            i = 1;
        }
        int i3 = this.mConstants.PENDINGINTENT_WARNING_THRESHOLD;
        int i4 = (i3 - 10) + 1;
        if (i == i4) {
            ringBuffer = new RingBuffer(String.class, 10);
            this.mRecentIntentsPerUid.put(i2, ringBuffer);
        } else {
            ringBuffer = (i <= i4 || i > i3) ? null : (RingBuffer) this.mRecentIntentsPerUid.get(i2);
        }
        if (ringBuffer == null) {
            return;
        }
        ringBuffer.append(pendingIntentRecord.key.toString());
        if (i == this.mConstants.PENDINGINTENT_WARNING_THRESHOLD) {
            Slog.wtf("ActivityManager", "Too many PendingIntent created for uid " + i2 + ", recent 10: " + Arrays.toString(ringBuffer.toArray()));
            this.mRecentIntentsPerUid.remove(i2);
        }
    }

    public void decrementUidStatLocked(PendingIntentRecord pendingIntentRecord) {
        int i = pendingIntentRecord.uid;
        int indexOfKey = this.mIntentsPerUid.indexOfKey(i);
        if (indexOfKey >= 0) {
            int valueAt = this.mIntentsPerUid.valueAt(indexOfKey) - 1;
            if (valueAt == this.mConstants.PENDINGINTENT_WARNING_THRESHOLD - 10) {
                this.mRecentIntentsPerUid.delete(i);
            }
            if (valueAt == 0) {
                this.mIntentsPerUid.removeAt(indexOfKey);
            } else {
                this.mIntentsPerUid.setValueAt(indexOfKey, valueAt);
            }
        }
    }
}
