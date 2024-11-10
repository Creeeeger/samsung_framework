package com.android.server.incident;

import android.app.AppOpsManager;
import android.app.BroadcastOptions;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Handler;
import android.os.IIncidentAuthListener;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.UserManager;
import android.permission.PermissionManager;
import android.util.Log;
import com.samsung.android.knox.analytics.util.KnoxAnalyticsDataConverter;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class PendingReports {
    public final AppOpsManager mAppOpsManager;
    public final Context mContext;
    public final Handler mHandler;
    public final Object mLock;
    public int mNextPendingId;
    public final PackageManager mPackageManager;
    public final ArrayList mPending;
    public final PermissionManager mPermissionManager;
    public final RequestQueue mRequestQueue;

    /* loaded from: classes2.dex */
    public final class PendingReportRec {
        public long addedRealtime;
        public long addedWalltime;
        public String callingPackage;
        public int flags;
        public int id;
        public IIncidentAuthListener listener;
        public String receiverClass;
        public String reportId;

        public PendingReportRec(String str, String str2, String str3, int i, IIncidentAuthListener iIncidentAuthListener) {
            int i2 = PendingReports.this.mNextPendingId;
            PendingReports.this.mNextPendingId = i2 + 1;
            this.id = i2;
            this.callingPackage = str;
            this.flags = i;
            this.listener = iIncidentAuthListener;
            this.addedRealtime = SystemClock.elapsedRealtime();
            this.addedWalltime = System.currentTimeMillis();
            this.receiverClass = str2;
            this.reportId = str3;
        }

        public Uri getUri() {
            Uri.Builder appendQueryParameter = new Uri.Builder().scheme("content").authority("android.os.IncidentManager").path("/pending").appendQueryParameter("id", Integer.toString(this.id)).appendQueryParameter("pkg", this.callingPackage).appendQueryParameter("flags", Integer.toString(this.flags)).appendQueryParameter(KnoxAnalyticsDataConverter.TIMESTAMP, Long.toString(this.addedWalltime));
            String str = this.receiverClass;
            if (str != null && str.length() > 0) {
                appendQueryParameter.appendQueryParameter("receiver", this.receiverClass);
            }
            String str2 = this.reportId;
            if (str2 != null && str2.length() > 0) {
                appendQueryParameter.appendQueryParameter("r", this.reportId);
            }
            return appendQueryParameter.build();
        }
    }

    public PendingReports(Context context) {
        Handler handler = new Handler();
        this.mHandler = handler;
        this.mRequestQueue = new RequestQueue(handler);
        this.mLock = new Object();
        this.mPending = new ArrayList();
        this.mNextPendingId = 1;
        this.mContext = context;
        this.mPackageManager = context.getPackageManager();
        this.mAppOpsManager = (AppOpsManager) context.getSystemService(AppOpsManager.class);
        this.mPermissionManager = (PermissionManager) context.getSystemService(PermissionManager.class);
    }

    public void authorizeReport(final int i, final String str, final String str2, final String str3, final int i2, final IIncidentAuthListener iIncidentAuthListener) {
        this.mRequestQueue.enqueue(iIncidentAuthListener.asBinder(), true, new Runnable() { // from class: com.android.server.incident.PendingReports$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                PendingReports.this.lambda$authorizeReport$0(i, str, str2, str3, i2, iIncidentAuthListener);
            }
        });
    }

    public void cancelAuthorization(final IIncidentAuthListener iIncidentAuthListener) {
        this.mRequestQueue.enqueue(iIncidentAuthListener.asBinder(), false, new Runnable() { // from class: com.android.server.incident.PendingReports$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                PendingReports.this.lambda$cancelAuthorization$1(iIncidentAuthListener);
            }
        });
    }

    public List getPendingReports() {
        ArrayList arrayList;
        synchronized (this.mLock) {
            int size = this.mPending.size();
            arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                arrayList.add(((PendingReportRec) this.mPending.get(i)).getUri().toString());
            }
        }
        return arrayList;
    }

    public void approveReport(String str) {
        synchronized (this.mLock) {
            PendingReportRec findAndRemovePendingReportRecLocked = findAndRemovePendingReportRecLocked(str);
            if (findAndRemovePendingReportRecLocked == null) {
                Log.e("IncidentCompanionService", "confirmApproved: Couldn't find record for uri: " + str);
                return;
            }
            sendBroadcast();
            Log.i("IncidentCompanionService", "Approved report: " + str);
            try {
                findAndRemovePendingReportRecLocked.listener.onReportApproved();
            } catch (RemoteException e) {
                Log.w("IncidentCompanionService", "Failed calling back for approval for: " + str, e);
            }
        }
    }

    public void denyReport(String str) {
        synchronized (this.mLock) {
            PendingReportRec findAndRemovePendingReportRecLocked = findAndRemovePendingReportRecLocked(str);
            if (findAndRemovePendingReportRecLocked == null) {
                Log.e("IncidentCompanionService", "confirmDenied: Couldn't find record for uri: " + str);
                return;
            }
            sendBroadcast();
            Log.i("IncidentCompanionService", "Denied report: " + str);
            try {
                findAndRemovePendingReportRecLocked.listener.onReportDenied();
            } catch (RemoteException e) {
                Log.w("IncidentCompanionService", "Failed calling back for denial for: " + str, e);
            }
        }
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (strArr.length == 0) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
            synchronized (this.mLock) {
                int size = this.mPending.size();
                printWriter.println("mPending: (" + size + ")");
                for (int i = 0; i < size; i++) {
                    PendingReportRec pendingReportRec = (PendingReportRec) this.mPending.get(i);
                    printWriter.println(String.format("  %11d %s: %s", Long.valueOf(pendingReportRec.addedRealtime), simpleDateFormat.format(new Date(pendingReportRec.addedWalltime)), pendingReportRec.getUri().toString()));
                }
            }
        }
    }

    public void onBootCompleted() {
        this.mRequestQueue.start();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00b3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0079 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: authorizeReportImpl, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void lambda$authorizeReport$0(int r16, java.lang.String r17, java.lang.String r18, java.lang.String r19, int r20, final android.os.IIncidentAuthListener r21) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.incident.PendingReports.lambda$authorizeReport$0(int, java.lang.String, java.lang.String, java.lang.String, int, android.os.IIncidentAuthListener):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$authorizeReportImpl$2(IIncidentAuthListener iIncidentAuthListener, ComponentName componentName, int i) {
        Log.i("IncidentCompanionService", "Got death notification listener=" + iIncidentAuthListener);
        cancelReportImpl(iIncidentAuthListener, componentName, i);
    }

    /* renamed from: cancelReportImpl, reason: merged with bridge method [inline-methods] */
    public final void lambda$cancelAuthorization$1(IIncidentAuthListener iIncidentAuthListener) {
        int currentUserIfAdmin = getCurrentUserIfAdmin();
        ComponentName approverComponent = getApproverComponent(currentUserIfAdmin);
        if (currentUserIfAdmin == -10000 || approverComponent == null) {
            return;
        }
        cancelReportImpl(iIncidentAuthListener, approverComponent, currentUserIfAdmin);
    }

    public final void cancelReportImpl(IIncidentAuthListener iIncidentAuthListener, ComponentName componentName, int i) {
        synchronized (this.mLock) {
            removePendingReportRecLocked(iIncidentAuthListener);
        }
        sendBroadcast(componentName, i);
    }

    public final void sendBroadcast() {
        ComponentName approverComponent;
        int currentUserIfAdmin = getCurrentUserIfAdmin();
        if (currentUserIfAdmin == -10000 || (approverComponent = getApproverComponent(currentUserIfAdmin)) == null) {
            return;
        }
        sendBroadcast(approverComponent, currentUserIfAdmin);
    }

    public final void sendBroadcast(ComponentName componentName, int i) {
        Intent intent = new Intent("android.intent.action.PENDING_INCIDENT_REPORTS_CHANGED");
        intent.setComponent(componentName);
        intent.addFlags(268435456);
        intent.addFlags(16777216);
        BroadcastOptions makeBasic = BroadcastOptions.makeBasic();
        makeBasic.setBackgroundActivityStartsAllowed(true);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.of(i), "android.permission.APPROVE_INCIDENT_REPORTS", makeBasic.toBundle());
    }

    public final PendingReportRec findAndRemovePendingReportRecLocked(String str) {
        try {
            int parseInt = Integer.parseInt(Uri.parse(str).getQueryParameter("id"));
            Iterator it = this.mPending.iterator();
            while (it.hasNext()) {
                PendingReportRec pendingReportRec = (PendingReportRec) it.next();
                if (pendingReportRec.id == parseInt) {
                    it.remove();
                    return pendingReportRec;
                }
            }
            return null;
        } catch (NumberFormatException unused) {
            Log.w("IncidentCompanionService", "Can't parse id from: " + str);
            return null;
        }
    }

    public final void removePendingReportRecLocked(IIncidentAuthListener iIncidentAuthListener) {
        Iterator it = this.mPending.iterator();
        while (it.hasNext()) {
            PendingReportRec pendingReportRec = (PendingReportRec) it.next();
            if (pendingReportRec.listener.asBinder() == iIncidentAuthListener.asBinder()) {
                Log.i("IncidentCompanionService", "  ...Removed PendingReportRec index=" + it + ": " + pendingReportRec.getUri());
                it.remove();
            }
        }
    }

    public final void denyReportBeforeAddingRec(IIncidentAuthListener iIncidentAuthListener, String str) {
        try {
            iIncidentAuthListener.onReportDenied();
        } catch (RemoteException e) {
            Log.w("IncidentCompanionService", "Failed calling back for denial for " + str, e);
        }
    }

    public final int getCurrentUserIfAdmin() {
        return IncidentCompanionService.getCurrentUserIfAdmin();
    }

    public final ComponentName getApproverComponent(int i) {
        List queryBroadcastReceiversAsUser = this.mPackageManager.queryBroadcastReceiversAsUser(new Intent("android.intent.action.PENDING_INCIDENT_REPORTS_CHANGED"), 1835008, i);
        if (queryBroadcastReceiversAsUser.size() == 1) {
            return ((ResolveInfo) queryBroadcastReceiversAsUser.get(0)).getComponentInfo().getComponentName();
        }
        Log.w("IncidentCompanionService", "Didn't find exactly one BroadcastReceiver to handle android.intent.action.PENDING_INCIDENT_REPORTS_CHANGED. The report will be denied. size=" + queryBroadcastReceiversAsUser.size() + ": matches=" + queryBroadcastReceiversAsUser);
        return null;
    }

    public final boolean isPackageInUid(int i, String str) {
        try {
            this.mAppOpsManager.checkPackage(i, str);
            return true;
        } catch (SecurityException unused) {
            return false;
        }
    }

    public final boolean isSameProfileGroupUser(int i, int i2) {
        return UserManager.get(this.mContext).isSameProfileGroup(i, i2);
    }
}
