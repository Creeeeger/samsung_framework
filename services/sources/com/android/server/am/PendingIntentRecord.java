package com.android.server.am;

import android.app.ActivityOptions;
import android.app.BackgroundStartPrivileges;
import android.app.IApplicationThread;
import android.app.compat.CompatChanges;
import android.content.IIntentReceiver;
import android.content.IIntentSender;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.PowerWhitelistManager;
import android.os.RemoteCallbackList;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.TimeUtils;
import com.android.internal.os.IResultReceiver;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.internal.util.jobs.XmlUtils;
import com.android.server.wm.SafeActivityOptions;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final class PendingIntentRecord extends IIntentSender.Stub {
    public final PendingIntentController controller;
    public final Key key;
    public String lastTag;
    public String lastTagPrefix;
    public ArrayMap mAllowlistDuration;
    public RemoteCallbackList mCancelCallbacks;
    public String stringName;
    public final int uid;
    public boolean sent = false;
    public boolean canceled = false;
    public int canceledFromUID = -1;
    public int canceledFromPID = -1;
    public ArraySet mAllowBgActivityStartsForActivitySender = new ArraySet();
    public ArraySet mAllowBgActivityStartsForBroadcastSender = new ArraySet();
    public ArraySet mAllowBgActivityStartsForServiceSender = new ArraySet();
    public final WeakReference ref = new WeakReference(this);

    /* loaded from: classes.dex */
    public final class Key {
        public final IBinder activity;
        public Intent[] allIntents;
        public String[] allResolvedTypes;
        public final String featureId;
        public final int flags;
        public final int hashCode;
        public final SafeActivityOptions options;
        public final String packageName;
        public final int requestCode;
        public final Intent requestIntent;
        public final String requestResolvedType;
        public final int type;
        public final int userId;
        public final String who;

        public Key(int i, String str, String str2, IBinder iBinder, String str3, int i2, Intent[] intentArr, String[] strArr, int i3, SafeActivityOptions safeActivityOptions, int i4) {
            this.type = i;
            this.packageName = str;
            this.featureId = str2;
            this.activity = iBinder;
            this.who = str3;
            this.requestCode = i2;
            Intent intent = intentArr != null ? intentArr[intentArr.length - 1] : null;
            this.requestIntent = intent;
            String str4 = strArr != null ? strArr[strArr.length - 1] : null;
            this.requestResolvedType = str4;
            this.allIntents = intentArr;
            this.allResolvedTypes = strArr;
            this.flags = i3;
            this.options = safeActivityOptions;
            this.userId = i4;
            int i5 = ((((851 + i3) * 37) + i2) * 37) + i4;
            i5 = str3 != null ? (i5 * 37) + str3.hashCode() : i5;
            i5 = iBinder != null ? (i5 * 37) + iBinder.hashCode() : i5;
            i5 = intent != null ? (i5 * 37) + intent.filterHashCode() : i5;
            this.hashCode = ((((str4 != null ? (i5 * 37) + str4.hashCode() : i5) * 37) + (str != null ? str.hashCode() : 0)) * 37) + i;
        }

        public boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                Key key = (Key) obj;
                if (this.type != key.type || this.userId != key.userId || !Objects.equals(this.packageName, key.packageName) || !Objects.equals(this.featureId, key.featureId) || this.activity != key.activity || !Objects.equals(this.who, key.who) || this.requestCode != key.requestCode) {
                    return false;
                }
                Intent intent = this.requestIntent;
                Intent intent2 = key.requestIntent;
                if (intent != intent2) {
                    if (intent != null) {
                        if (!intent.filterEquals(intent2)) {
                            return false;
                        }
                    } else if (intent2 != null) {
                        return false;
                    }
                }
                if (Objects.equals(this.requestResolvedType, key.requestResolvedType)) {
                    return this.flags == key.flags;
                }
                return false;
            } catch (ClassCastException unused) {
                return false;
            }
        }

        public int hashCode() {
            return this.hashCode;
        }

        public String toString() {
            return toSecureString(false);
        }

        public String toSecureString(boolean z) {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append("Key{");
            sb.append(typeName());
            sb.append(" pkg=");
            sb.append(this.packageName);
            if (this.featureId != null) {
                str = "/" + this.featureId;
            } else {
                str = "";
            }
            sb.append(str);
            sb.append(" intent=");
            Intent intent = this.requestIntent;
            sb.append(intent != null ? intent.toShortString(z, true, false, false) : "<null>");
            sb.append(" flags=0x");
            sb.append(Integer.toHexString(this.flags));
            sb.append(" u=");
            sb.append(this.userId);
            sb.append("} requestCode=");
            sb.append(this.requestCode);
            return sb.toString();
        }

        public String typeName() {
            int i = this.type;
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? Integer.toString(i) : "startForegroundService" : "startService" : "activityResult" : "startActivity" : "broadcastIntent";
        }
    }

    /* loaded from: classes.dex */
    public final class TempAllowListDuration {
        public long duration;
        public String reason;
        public int reasonCode;
        public int type;

        public TempAllowListDuration(long j, int i, int i2, String str) {
            this.duration = j;
            this.type = i;
            this.reasonCode = i2;
            this.reason = str;
        }
    }

    public PendingIntentRecord(PendingIntentController pendingIntentController, Key key, int i) {
        this.controller = pendingIntentController;
        this.key = key;
        this.uid = i;
    }

    public void setAllowlistDurationLocked(IBinder iBinder, long j, int i, int i2, String str) {
        if (j > 0) {
            if (this.mAllowlistDuration == null) {
                this.mAllowlistDuration = new ArrayMap();
            }
            this.mAllowlistDuration.put(iBinder, new TempAllowListDuration(j, i, i2, str));
        } else {
            ArrayMap arrayMap = this.mAllowlistDuration;
            if (arrayMap != null) {
                arrayMap.remove(iBinder);
                if (this.mAllowlistDuration.size() <= 0) {
                    this.mAllowlistDuration = null;
                }
            }
        }
        this.stringName = null;
    }

    public void setAllowBgActivityStarts(IBinder iBinder, int i) {
        if (iBinder == null) {
            return;
        }
        if ((i & 1) != 0) {
            this.mAllowBgActivityStartsForActivitySender.add(iBinder);
        }
        if ((i & 2) != 0) {
            this.mAllowBgActivityStartsForBroadcastSender.add(iBinder);
        }
        if ((i & 4) != 0) {
            this.mAllowBgActivityStartsForServiceSender.add(iBinder);
        }
    }

    public void clearAllowBgActivityStarts(IBinder iBinder) {
        if (iBinder == null) {
            return;
        }
        this.mAllowBgActivityStartsForActivitySender.remove(iBinder);
        this.mAllowBgActivityStartsForBroadcastSender.remove(iBinder);
        this.mAllowBgActivityStartsForServiceSender.remove(iBinder);
    }

    public void registerCancelListenerLocked(IResultReceiver iResultReceiver) {
        if (this.mCancelCallbacks == null) {
            this.mCancelCallbacks = new RemoteCallbackList();
        }
        this.mCancelCallbacks.register(iResultReceiver);
    }

    public void unregisterCancelListenerLocked(IResultReceiver iResultReceiver) {
        RemoteCallbackList remoteCallbackList = this.mCancelCallbacks;
        if (remoteCallbackList == null) {
            return;
        }
        remoteCallbackList.unregister(iResultReceiver);
        if (this.mCancelCallbacks.getRegisteredCallbackCount() <= 0) {
            this.mCancelCallbacks = null;
        }
    }

    public RemoteCallbackList detachCancelListenersLocked() {
        RemoteCallbackList remoteCallbackList = this.mCancelCallbacks;
        this.mCancelCallbacks = null;
        return remoteCallbackList;
    }

    public void send(int i, Intent intent, String str, IBinder iBinder, IIntentReceiver iIntentReceiver, String str2, Bundle bundle) {
        sendInner(null, i, intent, str, iBinder, iIntentReceiver, str2, null, null, 0, 0, 0, bundle);
    }

    public static boolean isPendingIntentBalAllowedByPermission(ActivityOptions activityOptions) {
        if (activityOptions == null) {
            return false;
        }
        return activityOptions.isPendingIntentBackgroundActivityLaunchAllowedByPermission();
    }

    public static BackgroundStartPrivileges getBackgroundStartPrivilegesAllowedByCaller(ActivityOptions activityOptions, int i, String str) {
        if (activityOptions == null) {
            return getDefaultBackgroundStartPrivileges(i, str);
        }
        return getBackgroundStartPrivilegesAllowedByCaller(activityOptions.toBundle(), i, str);
    }

    public static BackgroundStartPrivileges getBackgroundStartPrivilegesAllowedByCaller(Bundle bundle, int i, String str) {
        if (bundle == null || !bundle.containsKey("android.pendingIntent.backgroundActivityAllowed")) {
            return getDefaultBackgroundStartPrivileges(i, str);
        }
        if (bundle.getBoolean("android.pendingIntent.backgroundActivityAllowed")) {
            return BackgroundStartPrivileges.ALLOW_BAL;
        }
        return BackgroundStartPrivileges.NONE;
    }

    public static BackgroundStartPrivileges getDefaultBackgroundStartPrivileges(int i, String str) {
        boolean isChangeEnabled;
        if (UserHandle.getAppId(i) == 1000) {
            return BackgroundStartPrivileges.ALLOW_BAL;
        }
        if (str != null) {
            isChangeEnabled = CompatChanges.isChangeEnabled(244637991L, str, UserHandle.getUserHandleForUid(i));
        } else {
            isChangeEnabled = CompatChanges.isChangeEnabled(244637991L, i);
        }
        if (isChangeEnabled) {
            return BackgroundStartPrivileges.ALLOW_FGS;
        }
        return BackgroundStartPrivileges.ALLOW_BAL;
    }

    public int sendInner(IApplicationThread iApplicationThread, int i, Intent intent, String str, IBinder iBinder, IIntentReceiver iIntentReceiver, String str2, IBinder iBinder2, String str3, int i2, int i3, int i4, Bundle bundle) {
        return sendInner(iApplicationThread, i, intent, str, iBinder, iIntentReceiver, str2, iBinder2, str3, i2, i3, i4, bundle, -1, -1);
    }

    /* JADX WARN: Removed duplicated region for block: B:137:0x0509  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int sendInner(android.app.IApplicationThread r39, int r40, android.content.Intent r41, java.lang.String r42, android.os.IBinder r43, android.content.IIntentReceiver r44, java.lang.String r45, android.os.IBinder r46, java.lang.String r47, int r48, int r49, int r50, android.os.Bundle r51, int r52, int r53) {
        /*
            Method dump skipped, instructions count: 1340
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.PendingIntentRecord.sendInner(android.app.IApplicationThread, int, android.content.Intent, java.lang.String, android.os.IBinder, android.content.IIntentReceiver, java.lang.String, android.os.IBinder, java.lang.String, int, int, int, android.os.Bundle, int, int):int");
    }

    public final BackgroundStartPrivileges getBackgroundStartPrivilegesForActivitySender(IBinder iBinder) {
        if (this.mAllowBgActivityStartsForActivitySender.contains(iBinder)) {
            return BackgroundStartPrivileges.allowBackgroundActivityStarts(iBinder);
        }
        return BackgroundStartPrivileges.NONE;
    }

    public final BackgroundStartPrivileges getBackgroundStartPrivilegesForActivitySender(ArraySet arraySet, IBinder iBinder, Bundle bundle, int i) {
        if (arraySet.contains(iBinder)) {
            return BackgroundStartPrivileges.allowBackgroundActivityStarts(iBinder);
        }
        if (this.uid != i && this.controller.mAtmInternal.isUidForeground(i)) {
            return getBackgroundStartPrivilegesAllowedByCaller(bundle, i, (String) null);
        }
        return BackgroundStartPrivileges.NONE;
    }

    public void finalize() {
        try {
            if (!this.canceled) {
                this.controller.mH.sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.am.PendingIntentRecord$$ExternalSyntheticLambda0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((PendingIntentRecord) obj).completeFinalize();
                    }
                }, this));
            }
        } finally {
            super/*java.lang.Object*/.finalize();
        }
    }

    public final void completeFinalize() {
        synchronized (this.controller.mLock) {
            if (((WeakReference) this.controller.mIntentSenderRecords.get(this.key)) == this.ref) {
                this.controller.mIntentSenderRecords.remove(this.key);
                this.controller.decrementUidStatLocked(this);
            }
        }
    }

    public void dump(PrintWriter printWriter, String str) {
        printWriter.print(str);
        printWriter.print("uid=");
        printWriter.print(this.uid);
        printWriter.print(" packageName=");
        printWriter.print(this.key.packageName);
        printWriter.print(" featureId=");
        printWriter.print(this.key.featureId);
        printWriter.print(" type=");
        printWriter.print(this.key.typeName());
        printWriter.print(" flags=0x");
        printWriter.println(Integer.toHexString(this.key.flags));
        Key key = this.key;
        if (key.activity != null || key.who != null) {
            printWriter.print(str);
            printWriter.print("activity=");
            printWriter.print(this.key.activity);
            printWriter.print(" who=");
            printWriter.println(this.key.who);
        }
        Key key2 = this.key;
        if (key2.requestCode != 0 || key2.requestResolvedType != null) {
            printWriter.print(str);
            printWriter.print("requestCode=");
            printWriter.print(this.key.requestCode);
            printWriter.print(" requestResolvedType=");
            printWriter.println(this.key.requestResolvedType);
        }
        if (this.key.requestIntent != null) {
            printWriter.print(str);
            printWriter.print("requestIntent=");
            printWriter.println(this.key.requestIntent.toShortString(false, true, true, false));
        }
        if (this.sent || this.canceled) {
            printWriter.print(str);
            printWriter.print("sent=");
            printWriter.print(this.sent);
            printWriter.print(" canceled=");
            printWriter.println(this.canceled);
            if (this.canceledFromUID != -1 || this.canceledFromPID != -1) {
                printWriter.print(str);
                printWriter.print(" cancel uid=");
                printWriter.println(this.canceledFromUID);
                printWriter.print(str);
                printWriter.print(" cancel pid=");
                printWriter.println(this.canceledFromPID);
            }
        }
        if (this.mAllowlistDuration != null) {
            printWriter.print(str);
            printWriter.print("allowlistDuration=");
            for (int i = 0; i < this.mAllowlistDuration.size(); i++) {
                if (i != 0) {
                    printWriter.print(", ");
                }
                TempAllowListDuration tempAllowListDuration = (TempAllowListDuration) this.mAllowlistDuration.valueAt(i);
                printWriter.print(Integer.toHexString(System.identityHashCode(this.mAllowlistDuration.keyAt(i))));
                printWriter.print(XmlUtils.STRING_ARRAY_SEPARATOR);
                TimeUtils.formatDuration(tempAllowListDuration.duration, printWriter);
                printWriter.print("/");
                printWriter.print(tempAllowListDuration.type);
                printWriter.print("/");
                printWriter.print(PowerWhitelistManager.reasonCodeToString(tempAllowListDuration.reasonCode));
                printWriter.print("/");
                printWriter.print(tempAllowListDuration.reason);
            }
            printWriter.println();
        }
        if (this.mCancelCallbacks != null) {
            printWriter.print(str);
            printWriter.println("mCancelCallbacks:");
            for (int i2 = 0; i2 < this.mCancelCallbacks.getRegisteredCallbackCount(); i2++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(this.mCancelCallbacks.getRegisteredCallbackItem(i2));
            }
        }
    }

    public String toString() {
        String str = this.stringName;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("PendingIntentRecord{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(' ');
        sb.append(this.key.packageName);
        if (this.key.featureId != null) {
            sb.append('/');
            sb.append(this.key.featureId);
        }
        sb.append(' ');
        sb.append(this.key.typeName());
        if (this.mAllowlistDuration != null) {
            sb.append(" (allowlist: ");
            for (int i = 0; i < this.mAllowlistDuration.size(); i++) {
                if (i != 0) {
                    sb.append(",");
                }
                TempAllowListDuration tempAllowListDuration = (TempAllowListDuration) this.mAllowlistDuration.valueAt(i);
                sb.append(Integer.toHexString(System.identityHashCode(this.mAllowlistDuration.keyAt(i))));
                sb.append(XmlUtils.STRING_ARRAY_SEPARATOR);
                TimeUtils.formatDuration(tempAllowListDuration.duration, sb);
                sb.append("/");
                sb.append(tempAllowListDuration.type);
                sb.append("/");
                sb.append(PowerWhitelistManager.reasonCodeToString(tempAllowListDuration.reasonCode));
                sb.append("/");
                sb.append(tempAllowListDuration.reason);
            }
            sb.append(")");
        }
        sb.append('}');
        String sb2 = sb.toString();
        this.stringName = sb2;
        return sb2;
    }

    public int getUserId() {
        return this.key.userId;
    }
}
