package com.android.server.location.contexthub;

import android.app.AppOpsManager;
import android.app.PendingIntent;
import android.compat.Compatibility;
import android.content.Context;
import android.content.Intent;
import android.hardware.contexthub.HostEndpointInfo;
import android.hardware.location.ContextHubInfo;
import android.hardware.location.IContextHubClient;
import android.hardware.location.IContextHubClientCallback;
import android.hardware.location.IContextHubTransactionCallback;
import android.hardware.location.NanoAppMessage;
import android.hardware.location.NanoAppState;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.WorkSource;
import android.util.Log;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.FunctionalUtils;
import java.util.Base64;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public class ContextHubClientBroker extends IContextHubClient.Stub implements IBinder.DeathRecipient, AppOpsManager.OnOpChangedListener, PendingIntent.OnFinished {
    public final AppOpsManager mAppOpsManager;
    public final ContextHubInfo mAttachedContextHubInfo;
    public String mAttributionTag;
    public final ContextHubClientManager mClientManager;
    public final Context mContext;
    public IContextHubClientCallback mContextHubClientCallback;
    public final IContextHubWrapper mContextHubProxy;
    public final Set mForceDeniedNapps;
    public final short mHostEndPointId;
    public final AtomicBoolean mIsPendingIntentCancelled;
    public final AtomicBoolean mIsPermQueryIssued;
    public boolean mIsWakelockUsable;
    public final Map mMessageChannelNanoappIdMap;
    public final Map mNappToAuthTimerMap;
    public final String mPackage;
    public final PendingIntentRequest mPendingIntentRequest;
    public final int mPid;
    public final IContextHubTransactionCallback mQueryPermsCallback;
    public boolean mRegistered;
    public final ContextHubTransactionManager mTransactionManager;
    public final int mUid;
    public final PowerManager.WakeLock mWakeLock;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface CallbackConsumer {
        void accept(IContextHubClientCallback iContextHubClientCallback);
    }

    public final String authStateToString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "UNKNOWN" : "GRANTED" : "DENIED_GRACE_PERIOD" : "DENIED";
    }

    /* loaded from: classes2.dex */
    public class PendingIntentRequest {
        public long mNanoAppId;
        public PendingIntent mPendingIntent;
        public boolean mValid = false;

        public PendingIntentRequest() {
        }

        public PendingIntentRequest(PendingIntent pendingIntent, long j) {
            this.mPendingIntent = pendingIntent;
            this.mNanoAppId = j;
        }

        public long getNanoAppId() {
            return this.mNanoAppId;
        }

        public PendingIntent getPendingIntent() {
            return this.mPendingIntent;
        }

        public boolean hasPendingIntent() {
            return this.mPendingIntent != null;
        }

        public void clear() {
            this.mPendingIntent = null;
        }

        public boolean isValid() {
            return this.mValid;
        }
    }

    public ContextHubClientBroker(Context context, IContextHubWrapper iContextHubWrapper, ContextHubClientManager contextHubClientManager, ContextHubInfo contextHubInfo, short s, IContextHubClientCallback iContextHubClientCallback, String str, ContextHubTransactionManager contextHubTransactionManager, PendingIntent pendingIntent, long j, String str2) {
        this.mRegistered = true;
        this.mIsWakelockUsable = true;
        this.mIsPendingIntentCancelled = new AtomicBoolean(false);
        this.mIsPermQueryIssued = new AtomicBoolean(false);
        this.mMessageChannelNanoappIdMap = new ConcurrentHashMap();
        this.mForceDeniedNapps = new HashSet();
        this.mNappToAuthTimerMap = new ConcurrentHashMap();
        this.mQueryPermsCallback = new IContextHubTransactionCallback.Stub() { // from class: com.android.server.location.contexthub.ContextHubClientBroker.1
            public void onTransactionComplete(int i) {
            }

            public void onQueryResponse(int i, List list) {
                ContextHubClientBroker.this.mIsPermQueryIssued.set(false);
                if (i != 0 && list != null) {
                    Log.e("ContextHubClientBroker", "Permissions query failed, but still received nanoapp state");
                    return;
                }
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        NanoAppState nanoAppState = (NanoAppState) it.next();
                        if (ContextHubClientBroker.this.mMessageChannelNanoappIdMap.containsKey(Long.valueOf(nanoAppState.getNanoAppId()))) {
                            ContextHubClientBroker.this.updateNanoAppAuthState(nanoAppState.getNanoAppId(), nanoAppState.getNanoAppPermissions(), false);
                        }
                    }
                }
            }
        };
        this.mContext = context;
        this.mContextHubProxy = iContextHubWrapper;
        this.mClientManager = contextHubClientManager;
        this.mAttachedContextHubInfo = contextHubInfo;
        this.mHostEndPointId = s;
        this.mContextHubClientCallback = iContextHubClientCallback;
        if (pendingIntent == null) {
            this.mPendingIntentRequest = new PendingIntentRequest();
        } else {
            this.mPendingIntentRequest = new PendingIntentRequest(pendingIntent, j);
        }
        if (str2 == null) {
            String[] packagesForUid = context.getPackageManager().getPackagesForUid(Binder.getCallingUid());
            if (packagesForUid != null && packagesForUid.length > 0) {
                str2 = packagesForUid[0];
            }
            Log.e("ContextHubClientBroker", "createClient: Provided package name null. Using first package name " + str2);
        }
        this.mPackage = str2;
        this.mAttributionTag = str;
        this.mTransactionManager = contextHubTransactionManager;
        this.mPid = Binder.getCallingPid();
        int callingUid = Binder.getCallingUid();
        this.mUid = callingUid;
        this.mAppOpsManager = (AppOpsManager) context.getSystemService(AppOpsManager.class);
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService(PowerManager.class)).newWakeLock(1, "ContextHubClientBroker");
        this.mWakeLock = newWakeLock;
        newWakeLock.setWorkSource(new WorkSource(callingUid, str2));
        newWakeLock.setReferenceCounted(true);
        startMonitoringOpChanges();
        sendHostEndpointConnectedEvent();
    }

    public ContextHubClientBroker(Context context, IContextHubWrapper iContextHubWrapper, ContextHubClientManager contextHubClientManager, ContextHubInfo contextHubInfo, short s, IContextHubClientCallback iContextHubClientCallback, String str, ContextHubTransactionManager contextHubTransactionManager, String str2) {
        this(context, iContextHubWrapper, contextHubClientManager, contextHubInfo, s, iContextHubClientCallback, str, contextHubTransactionManager, null, 0L, str2);
    }

    public ContextHubClientBroker(Context context, IContextHubWrapper iContextHubWrapper, ContextHubClientManager contextHubClientManager, ContextHubInfo contextHubInfo, short s, PendingIntent pendingIntent, long j, String str, ContextHubTransactionManager contextHubTransactionManager) {
        this(context, iContextHubWrapper, contextHubClientManager, contextHubInfo, s, null, str, contextHubTransactionManager, pendingIntent, j, pendingIntent.getCreatorPackage());
    }

    public final void startMonitoringOpChanges() {
        this.mAppOpsManager.startWatchingMode(-1, this.mPackage, this);
    }

    public int sendMessageToNanoApp(NanoAppMessage nanoAppMessage) {
        int i;
        ContextHubServiceUtil.checkPermissions(this.mContext);
        if (isRegistered()) {
            int intValue = ((Integer) this.mMessageChannelNanoappIdMap.getOrDefault(Long.valueOf(nanoAppMessage.getNanoAppId()), -1)).intValue();
            if (intValue == 0) {
                if (!Compatibility.isChangeEnabled(181350407L)) {
                    return 1;
                }
                throw new SecurityException("Client doesn't have valid permissions to send message to " + nanoAppMessage.getNanoAppId());
            }
            if (intValue == -1) {
                checkNanoappPermsAsync();
            }
            try {
                i = this.mContextHubProxy.sendMessageToContextHub(this.mHostEndPointId, this.mAttachedContextHubInfo.getId(), nanoAppMessage);
            } catch (RemoteException e) {
                Log.e("ContextHubClientBroker", "RemoteException in sendMessageToNanoApp (target hub ID = " + this.mAttachedContextHubInfo.getId() + ")", e);
                i = 1;
            }
            ContextHubEventLogger.getInstance().logMessageToNanoapp(this.mAttachedContextHubInfo.getId(), nanoAppMessage, i == 0);
            return i;
        }
        Log.e("ContextHubClientBroker", String.format("Failed to send message (connection closed): hostEndpointId= %1$d payload %2$s", Short.valueOf(this.mHostEndPointId), Base64.getEncoder().encodeToString(nanoAppMessage.getMessageBody())));
        return 1;
    }

    public void close() {
        synchronized (this) {
            this.mPendingIntentRequest.clear();
        }
        onClientExit();
    }

    public int getId() {
        return this.mHostEndPointId;
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        onClientExit();
    }

    @Override // android.app.AppOpsManager.OnOpChangedListener
    public void onOpChanged(String str, String str2) {
        if (!str2.equals(this.mPackage) || this.mMessageChannelNanoappIdMap.isEmpty()) {
            return;
        }
        checkNanoappPermsAsync();
    }

    public String getPackageName() {
        return this.mPackage;
    }

    public boolean isWakelockUsable() {
        boolean z;
        synchronized (this.mWakeLock) {
            z = this.mIsWakelockUsable;
        }
        return z;
    }

    public PowerManager.WakeLock getWakeLock() {
        PowerManager.WakeLock wakeLock;
        synchronized (this.mWakeLock) {
            wakeLock = this.mWakeLock;
        }
        return wakeLock;
    }

    public void setAttributionTag(String str) {
        this.mAttributionTag = str;
    }

    public String getAttributionTag() {
        return this.mAttributionTag;
    }

    public int getAttachedContextHubId() {
        return this.mAttachedContextHubInfo.getId();
    }

    public short getHostEndPointId() {
        return this.mHostEndPointId;
    }

    public void sendMessageToClient(final NanoAppMessage nanoAppMessage, List list, List list2) {
        final long nanoAppId = nanoAppMessage.getNanoAppId();
        int updateNanoAppAuthState = updateNanoAppAuthState(nanoAppId, list, false);
        if (updateNanoAppAuthState == 1 && !list2.isEmpty()) {
            Log.e("ContextHubClientBroker", "Dropping message from " + Long.toHexString(nanoAppId) + ". " + this.mPackage + " in grace period and napp msg has permissions");
            return;
        }
        if (updateNanoAppAuthState != 0) {
            if (notePermissions(list2, "NanoappMessageDelivery " + nanoAppId)) {
                invokeCallback(new CallbackConsumer() { // from class: com.android.server.location.contexthub.ContextHubClientBroker$$ExternalSyntheticLambda5
                    @Override // com.android.server.location.contexthub.ContextHubClientBroker.CallbackConsumer
                    public final void accept(IContextHubClientCallback iContextHubClientCallback) {
                        iContextHubClientCallback.onMessageFromNanoApp(nanoAppMessage);
                    }
                });
                sendPendingIntent(new Supplier() { // from class: com.android.server.location.contexthub.ContextHubClientBroker$$ExternalSyntheticLambda6
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        Intent lambda$sendMessageToClient$1;
                        lambda$sendMessageToClient$1 = ContextHubClientBroker.this.lambda$sendMessageToClient$1(nanoAppId, nanoAppMessage);
                        return lambda$sendMessageToClient$1;
                    }
                }, nanoAppId);
                return;
            }
        }
        Log.e("ContextHubClientBroker", "Dropping message from " + Long.toHexString(nanoAppId) + ". " + this.mPackage + " doesn't have permission");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Intent lambda$sendMessageToClient$1(long j, NanoAppMessage nanoAppMessage) {
        return createIntent(5, j).putExtra("android.hardware.location.extra.MESSAGE", (Parcelable) nanoAppMessage);
    }

    public void onNanoAppLoaded(final long j) {
        checkNanoappPermsAsync();
        invokeCallback(new CallbackConsumer() { // from class: com.android.server.location.contexthub.ContextHubClientBroker$$ExternalSyntheticLambda13
            @Override // com.android.server.location.contexthub.ContextHubClientBroker.CallbackConsumer
            public final void accept(IContextHubClientCallback iContextHubClientCallback) {
                iContextHubClientCallback.onNanoAppLoaded(j);
            }
        });
        sendPendingIntent(new Supplier() { // from class: com.android.server.location.contexthub.ContextHubClientBroker$$ExternalSyntheticLambda14
            @Override // java.util.function.Supplier
            public final Object get() {
                Intent lambda$onNanoAppLoaded$3;
                lambda$onNanoAppLoaded$3 = ContextHubClientBroker.this.lambda$onNanoAppLoaded$3(j);
                return lambda$onNanoAppLoaded$3;
            }
        }, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Intent lambda$onNanoAppLoaded$3(long j) {
        return createIntent(0, j);
    }

    public void onNanoAppUnloaded(final long j) {
        invokeCallback(new CallbackConsumer() { // from class: com.android.server.location.contexthub.ContextHubClientBroker$$ExternalSyntheticLambda11
            @Override // com.android.server.location.contexthub.ContextHubClientBroker.CallbackConsumer
            public final void accept(IContextHubClientCallback iContextHubClientCallback) {
                iContextHubClientCallback.onNanoAppUnloaded(j);
            }
        });
        sendPendingIntent(new Supplier() { // from class: com.android.server.location.contexthub.ContextHubClientBroker$$ExternalSyntheticLambda12
            @Override // java.util.function.Supplier
            public final Object get() {
                Intent lambda$onNanoAppUnloaded$5;
                lambda$onNanoAppUnloaded$5 = ContextHubClientBroker.this.lambda$onNanoAppUnloaded$5(j);
                return lambda$onNanoAppUnloaded$5;
            }
        }, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Intent lambda$onNanoAppUnloaded$5(long j) {
        return createIntent(1, j);
    }

    public void onHubReset() {
        invokeCallback(new CallbackConsumer() { // from class: com.android.server.location.contexthub.ContextHubClientBroker$$ExternalSyntheticLambda7
            @Override // com.android.server.location.contexthub.ContextHubClientBroker.CallbackConsumer
            public final void accept(IContextHubClientCallback iContextHubClientCallback) {
                iContextHubClientCallback.onHubReset();
            }
        });
        sendPendingIntent(new Supplier() { // from class: com.android.server.location.contexthub.ContextHubClientBroker$$ExternalSyntheticLambda8
            @Override // java.util.function.Supplier
            public final Object get() {
                Intent lambda$onHubReset$6;
                lambda$onHubReset$6 = ContextHubClientBroker.this.lambda$onHubReset$6();
                return lambda$onHubReset$6;
            }
        });
        sendHostEndpointConnectedEvent();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Intent lambda$onHubReset$6() {
        return createIntent(6);
    }

    public void onNanoAppAborted(final long j, final int i) {
        invokeCallback(new CallbackConsumer() { // from class: com.android.server.location.contexthub.ContextHubClientBroker$$ExternalSyntheticLambda9
            @Override // com.android.server.location.contexthub.ContextHubClientBroker.CallbackConsumer
            public final void accept(IContextHubClientCallback iContextHubClientCallback) {
                iContextHubClientCallback.onNanoAppAborted(j, i);
            }
        });
        sendPendingIntent(new Supplier() { // from class: com.android.server.location.contexthub.ContextHubClientBroker$$ExternalSyntheticLambda10
            @Override // java.util.function.Supplier
            public final Object get() {
                Intent lambda$onNanoAppAborted$8;
                lambda$onNanoAppAborted$8 = ContextHubClientBroker.this.lambda$onNanoAppAborted$8(j, i);
                return lambda$onNanoAppAborted$8;
            }
        }, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Intent lambda$onNanoAppAborted$8(long j, int i) {
        return createIntent(4, j).putExtra("android.hardware.location.extra.NANOAPP_ABORT_CODE", i);
    }

    public boolean hasPendingIntent(PendingIntent pendingIntent, long j) {
        PendingIntent pendingIntent2;
        long nanoAppId;
        synchronized (this) {
            pendingIntent2 = this.mPendingIntentRequest.getPendingIntent();
            nanoAppId = this.mPendingIntentRequest.getNanoAppId();
        }
        return pendingIntent2 != null && pendingIntent2.equals(pendingIntent) && nanoAppId == j;
    }

    public void attachDeathRecipient() {
        IContextHubClientCallback iContextHubClientCallback = this.mContextHubClientCallback;
        if (iContextHubClientCallback != null) {
            iContextHubClientCallback.asBinder().linkToDeath(this, 0);
        }
    }

    public boolean hasPermissions(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (this.mContext.checkPermission((String) it.next(), this.mPid, this.mUid) != 0) {
                return false;
            }
        }
        return true;
    }

    public boolean notePermissions(List list, String str) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            int permissionToOpCode = AppOpsManager.permissionToOpCode((String) it.next());
            if (permissionToOpCode != -1) {
                try {
                    if (this.mAppOpsManager.noteOp(permissionToOpCode, this.mUid, this.mPackage, this.mAttributionTag, str) != 0) {
                        return false;
                    }
                } catch (SecurityException e) {
                    Log.e("ContextHubClientBroker", "SecurityException: noteOp for pkg " + this.mPackage + " opcode " + permissionToOpCode + ": " + e.getMessage());
                    return false;
                }
            }
        }
        return true;
    }

    public boolean isPendingIntentCancelled() {
        return this.mIsPendingIntentCancelled.get();
    }

    public void handleAuthStateTimerExpiry(long j) {
        AuthStateDenialTimer authStateDenialTimer;
        synchronized (this.mMessageChannelNanoappIdMap) {
            authStateDenialTimer = (AuthStateDenialTimer) this.mNappToAuthTimerMap.remove(Long.valueOf(j));
        }
        if (authStateDenialTimer != null) {
            updateNanoAppAuthState(j, Collections.emptyList(), true);
        }
    }

    public final void checkNanoappPermsAsync() {
        if (this.mIsPermQueryIssued.getAndSet(true)) {
            return;
        }
        this.mTransactionManager.addTransaction(this.mTransactionManager.createQueryTransaction(this.mAttachedContextHubInfo.getId(), this.mQueryPermsCallback, this.mPackage));
    }

    public final int updateNanoAppAuthState(long j, List list, boolean z) {
        return updateNanoAppAuthState(j, list, z, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005c A[Catch: all -> 0x009b, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x001f, B:9:0x0031, B:16:0x005c, B:18:0x006a, B:20:0x0087, B:21:0x0094, B:28:0x0070, B:36:0x0051), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0087 A[Catch: all -> 0x009b, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x001f, B:9:0x0031, B:16:0x005c, B:18:0x006a, B:20:0x0087, B:21:0x0094, B:28:0x0070, B:36:0x0051), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int updateNanoAppAuthState(long r7, java.util.List r9, boolean r10, boolean r11) {
        /*
            r6 = this;
            java.util.Map r0 = r6.mMessageChannelNanoappIdMap
            monitor-enter(r0)
            boolean r9 = r6.hasPermissions(r9)     // Catch: java.lang.Throwable -> L9b
            java.util.Map r1 = r6.mMessageChannelNanoappIdMap     // Catch: java.lang.Throwable -> L9b
            java.lang.Long r2 = java.lang.Long.valueOf(r7)     // Catch: java.lang.Throwable -> L9b
            r3 = -1
            java.lang.Integer r4 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> L9b
            java.lang.Object r1 = r1.getOrDefault(r2, r4)     // Catch: java.lang.Throwable -> L9b
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L9b
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L9b
            r2 = 2
            if (r1 != r3) goto L2d
            java.util.Map r1 = r6.mMessageChannelNanoappIdMap     // Catch: java.lang.Throwable -> L9b
            java.lang.Long r3 = java.lang.Long.valueOf(r7)     // Catch: java.lang.Throwable -> L9b
            java.lang.Integer r4 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> L9b
            r1.put(r3, r4)     // Catch: java.lang.Throwable -> L9b
            r1 = r2
        L2d:
            r3 = 0
            r4 = 1
            if (r11 != 0) goto L51
            java.util.Set r11 = r6.mForceDeniedNapps     // Catch: java.lang.Throwable -> L9b
            java.lang.Long r5 = java.lang.Long.valueOf(r7)     // Catch: java.lang.Throwable -> L9b
            boolean r11 = r11.contains(r5)     // Catch: java.lang.Throwable -> L9b
            if (r11 == 0) goto L3e
            goto L51
        L3e:
            if (r10 == 0) goto L43
            if (r1 != r4) goto L4f
            goto L5a
        L43:
            if (r1 != r2) goto L49
            if (r9 != 0) goto L49
            r3 = r4
            goto L5a
        L49:
            if (r1 == r2) goto L4f
            if (r9 == 0) goto L4f
            r3 = r2
            goto L5a
        L4f:
            r3 = r1
            goto L5a
        L51:
            java.util.Set r9 = r6.mForceDeniedNapps     // Catch: java.lang.Throwable -> L9b
            java.lang.Long r10 = java.lang.Long.valueOf(r7)     // Catch: java.lang.Throwable -> L9b
            r9.add(r10)     // Catch: java.lang.Throwable -> L9b
        L5a:
            if (r3 == r4) goto L6e
            java.util.Map r9 = r6.mNappToAuthTimerMap     // Catch: java.lang.Throwable -> L9b
            java.lang.Long r10 = java.lang.Long.valueOf(r7)     // Catch: java.lang.Throwable -> L9b
            java.lang.Object r9 = r9.remove(r10)     // Catch: java.lang.Throwable -> L9b
            com.android.server.location.contexthub.AuthStateDenialTimer r9 = (com.android.server.location.contexthub.AuthStateDenialTimer) r9     // Catch: java.lang.Throwable -> L9b
            if (r9 == 0) goto L85
            r9.cancel()     // Catch: java.lang.Throwable -> L9b
            goto L85
        L6e:
            if (r1 != r2) goto L85
            com.android.server.location.contexthub.AuthStateDenialTimer r9 = new com.android.server.location.contexthub.AuthStateDenialTimer     // Catch: java.lang.Throwable -> L9b
            android.os.Looper r10 = android.os.Looper.getMainLooper()     // Catch: java.lang.Throwable -> L9b
            r9.<init>(r6, r7, r10)     // Catch: java.lang.Throwable -> L9b
            java.util.Map r10 = r6.mNappToAuthTimerMap     // Catch: java.lang.Throwable -> L9b
            java.lang.Long r11 = java.lang.Long.valueOf(r7)     // Catch: java.lang.Throwable -> L9b
            r10.put(r11, r9)     // Catch: java.lang.Throwable -> L9b
            r9.start()     // Catch: java.lang.Throwable -> L9b
        L85:
            if (r1 == r3) goto L94
            java.util.Map r9 = r6.mMessageChannelNanoappIdMap     // Catch: java.lang.Throwable -> L9b
            java.lang.Long r10 = java.lang.Long.valueOf(r7)     // Catch: java.lang.Throwable -> L9b
            java.lang.Integer r11 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> L9b
            r9.put(r10, r11)     // Catch: java.lang.Throwable -> L9b
        L94:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9b
            if (r1 == r3) goto L9a
            r6.sendAuthStateCallback(r7, r3)
        L9a:
            return r3
        L9b:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9b
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.location.contexthub.ContextHubClientBroker.updateNanoAppAuthState(long, java.util.List, boolean, boolean):int");
    }

    public final void sendAuthStateCallback(final long j, final int i) {
        invokeCallback(new CallbackConsumer() { // from class: com.android.server.location.contexthub.ContextHubClientBroker$$ExternalSyntheticLambda3
            @Override // com.android.server.location.contexthub.ContextHubClientBroker.CallbackConsumer
            public final void accept(IContextHubClientCallback iContextHubClientCallback) {
                iContextHubClientCallback.onClientAuthorizationChanged(j, i);
            }
        });
        sendPendingIntent(new Supplier() { // from class: com.android.server.location.contexthub.ContextHubClientBroker$$ExternalSyntheticLambda4
            @Override // java.util.function.Supplier
            public final Object get() {
                Intent lambda$sendAuthStateCallback$10;
                lambda$sendAuthStateCallback$10 = ContextHubClientBroker.this.lambda$sendAuthStateCallback$10(j, i);
                return lambda$sendAuthStateCallback$10;
            }
        }, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Intent lambda$sendAuthStateCallback$10(long j, int i) {
        return createIntent(7, j).putExtra("android.hardware.location.extra.CLIENT_AUTHORIZATION_STATE", i);
    }

    public final synchronized void invokeCallback(CallbackConsumer callbackConsumer) {
        if (this.mContextHubClientCallback != null) {
            try {
                acquireWakeLock();
                callbackConsumer.accept(this.mContextHubClientCallback);
            } catch (RemoteException e) {
                Log.e("ContextHubClientBroker", "RemoteException while invoking client callback (host endpoint ID = " + ((int) this.mHostEndPointId) + ")", e);
            }
        }
    }

    public final Intent createIntent(int i) {
        Intent intent = new Intent();
        intent.putExtra("android.hardware.location.extra.EVENT_TYPE", i);
        intent.putExtra("android.hardware.location.extra.CONTEXT_HUB_INFO", (Parcelable) this.mAttachedContextHubInfo);
        return intent;
    }

    public final Intent createIntent(int i, long j) {
        Intent createIntent = createIntent(i);
        createIntent.putExtra("android.hardware.location.extra.NANOAPP_ID", j);
        return createIntent;
    }

    public final synchronized void sendPendingIntent(Supplier supplier) {
        if (this.mPendingIntentRequest.hasPendingIntent()) {
            doSendPendingIntent(this.mPendingIntentRequest.getPendingIntent(), (Intent) supplier.get(), this);
        }
    }

    public final synchronized void sendPendingIntent(Supplier supplier, long j) {
        if (this.mPendingIntentRequest.hasPendingIntent() && this.mPendingIntentRequest.getNanoAppId() == j) {
            doSendPendingIntent(this.mPendingIntentRequest.getPendingIntent(), (Intent) supplier.get(), this);
        }
    }

    public void doSendPendingIntent(PendingIntent pendingIntent, Intent intent, PendingIntent.OnFinished onFinished) {
        try {
            acquireWakeLock();
            pendingIntent.send(this.mContext, 0, intent, onFinished, null, "android.permission.ACCESS_CONTEXT_HUB", null);
        } catch (PendingIntent.CanceledException unused) {
            this.mIsPendingIntentCancelled.set(true);
            Log.w("ContextHubClientBroker", "PendingIntent has been canceled, unregistering from client (host endpoint ID " + ((int) this.mHostEndPointId) + ")");
            close();
        }
    }

    public final synchronized boolean isRegistered() {
        return this.mRegistered;
    }

    public final synchronized void onClientExit() {
        IContextHubClientCallback iContextHubClientCallback = this.mContextHubClientCallback;
        if (iContextHubClientCallback != null) {
            iContextHubClientCallback.asBinder().unlinkToDeath(this, 0);
            this.mContextHubClientCallback = null;
        }
        if (!this.mPendingIntentRequest.hasPendingIntent() && this.mRegistered) {
            this.mClientManager.unregisterClient(this.mHostEndPointId);
            this.mRegistered = false;
            this.mAppOpsManager.stopWatchingMode(this);
            this.mContextHubProxy.onHostEndpointDisconnected(this.mHostEndPointId);
            releaseWakeLockOnExit();
        }
    }

    public final void sendHostEndpointConnectedEvent() {
        HostEndpointInfo hostEndpointInfo = new HostEndpointInfo();
        hostEndpointInfo.hostEndpointId = (char) this.mHostEndPointId;
        hostEndpointInfo.packageName = this.mPackage;
        hostEndpointInfo.attributionTag = this.mAttributionTag;
        hostEndpointInfo.type = this.mUid == 1000 ? 1 : 2;
        this.mContextHubProxy.onHostEndpointConnected(hostEndpointInfo);
    }

    public void dump(ProtoOutputStream protoOutputStream) {
        protoOutputStream.write(1120986464257L, (int) getHostEndPointId());
        protoOutputStream.write(1120986464258L, getAttachedContextHubId());
        protoOutputStream.write(1138166333443L, this.mPackage);
        if (this.mPendingIntentRequest.isValid()) {
            protoOutputStream.write(1133871366149L, true);
            protoOutputStream.write(1112396529668L, this.mPendingIntentRequest.getNanoAppId());
        }
        protoOutputStream.write(1133871366150L, this.mPendingIntentRequest.hasPendingIntent());
        protoOutputStream.write(1133871366151L, isPendingIntentCancelled());
        protoOutputStream.write(1133871366152L, this.mRegistered);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[ContextHubClient ");
        sb.append("endpointID: ");
        sb.append((int) getHostEndPointId());
        sb.append(", ");
        sb.append("contextHub: ");
        sb.append(getAttachedContextHubId());
        sb.append(", ");
        if (this.mAttributionTag != null) {
            sb.append("attributionTag: ");
            sb.append(getAttributionTag());
            sb.append(", ");
        }
        if (this.mPendingIntentRequest.isValid()) {
            sb.append("intentCreatorPackage: ");
            sb.append(this.mPackage);
            sb.append(", ");
            sb.append("nanoAppId: 0x");
            sb.append(Long.toHexString(this.mPendingIntentRequest.getNanoAppId()));
        } else {
            sb.append("package: ");
            sb.append(this.mPackage);
        }
        if (this.mMessageChannelNanoappIdMap.size() > 0) {
            sb.append(" messageChannelNanoappSet: (");
            Iterator it = this.mMessageChannelNanoappIdMap.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                sb.append("0x");
                sb.append(Long.toHexString(((Long) entry.getKey()).longValue()));
                sb.append(" auth state: ");
                sb.append(authStateToString(((Integer) entry.getValue()).intValue()));
                if (it.hasNext()) {
                    sb.append(",");
                }
            }
            sb.append(")");
        }
        synchronized (this.mWakeLock) {
            sb.append("wakelock: ");
            sb.append(this.mWakeLock);
        }
        sb.append("]");
        return sb.toString();
    }

    public void callbackFinished() {
        releaseWakeLock();
    }

    @Override // android.app.PendingIntent.OnFinished
    public void onSendFinished(PendingIntent pendingIntent, Intent intent, int i, String str, Bundle bundle) {
        releaseWakeLock();
    }

    public final void acquireWakeLock() {
        Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.location.contexthub.ContextHubClientBroker$$ExternalSyntheticLambda1
            public final void runOrThrow() {
                ContextHubClientBroker.this.lambda$acquireWakeLock$11();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$acquireWakeLock$11() {
        synchronized (this.mWakeLock) {
            if (this.mIsWakelockUsable) {
                this.mWakeLock.acquire(5000L);
            }
        }
    }

    public final void releaseWakeLock() {
        Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.location.contexthub.ContextHubClientBroker$$ExternalSyntheticLambda2
            public final void runOrThrow() {
                ContextHubClientBroker.this.lambda$releaseWakeLock$12();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$releaseWakeLock$12() {
        synchronized (this.mWakeLock) {
            if (this.mWakeLock.isHeld()) {
                try {
                    this.mWakeLock.release();
                } catch (RuntimeException e) {
                    Log.e("ContextHubClientBroker", "Releasing the wakelock fails - ", e);
                }
            }
        }
    }

    public final void releaseWakeLockOnExit() {
        Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.location.contexthub.ContextHubClientBroker$$ExternalSyntheticLambda0
            public final void runOrThrow() {
                ContextHubClientBroker.this.lambda$releaseWakeLockOnExit$13();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$releaseWakeLockOnExit$13() {
        synchronized (this.mWakeLock) {
            this.mIsWakelockUsable = false;
            while (this.mWakeLock.isHeld()) {
                try {
                    this.mWakeLock.release();
                } catch (RuntimeException e) {
                    Log.e("ContextHubClientBroker", "Releasing the wakelock for all acquisitions fails - ", e);
                }
            }
        }
    }
}
