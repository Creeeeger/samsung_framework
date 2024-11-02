package android.service.euicc;

import android.annotation.SystemApi;
import android.app.Service;
import android.content.Intent;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.service.euicc.IEuiccService;
import android.telephony.euicc.DownloadableSubscription;
import android.telephony.euicc.EuiccInfo;
import android.text.TextUtils;
import android.util.Log;
import com.android.server.SecureKeyConst;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

@SystemApi
/* loaded from: classes3.dex */
public abstract class EuiccService extends Service {
    public static final String ACTION_BIND_CARRIER_PROVISIONING_SERVICE = "android.service.euicc.action.BIND_CARRIER_PROVISIONING_SERVICE";
    public static final String ACTION_CONVERT_TO_EMBEDDED_SUBSCRIPTION = "android.service.euicc.action.CONVERT_TO_EMBEDDED_SUBSCRIPTION";
    public static final String ACTION_DELETE_SUBSCRIPTION_PRIVILEGED = "android.service.euicc.action.DELETE_SUBSCRIPTION_PRIVILEGED";
    public static final String ACTION_MANAGE_EMBEDDED_SUBSCRIPTIONS = "android.service.euicc.action.MANAGE_EMBEDDED_SUBSCRIPTIONS";
    public static final String ACTION_PROVISION_EMBEDDED_SUBSCRIPTION = "android.service.euicc.action.PROVISION_EMBEDDED_SUBSCRIPTION";
    public static final String ACTION_RENAME_SUBSCRIPTION_PRIVILEGED = "android.service.euicc.action.RENAME_SUBSCRIPTION_PRIVILEGED";

    @Deprecated
    public static final String ACTION_RESOLVE_CONFIRMATION_CODE = "android.service.euicc.action.RESOLVE_CONFIRMATION_CODE";
    public static final String ACTION_RESOLVE_DEACTIVATE_SIM = "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM";
    public static final String ACTION_RESOLVE_NO_EUICC_TARGET = "android.service.euicc.action.RESOLVE_NO_EUICC_TARGET";
    public static final String ACTION_RESOLVE_NO_PRIVILEGES = "android.service.euicc.action.RESOLVE_NO_PRIVILEGES";
    public static final String ACTION_RESOLVE_RESOLVABLE_ERRORS = "android.service.euicc.action.RESOLVE_RESOLVABLE_ERRORS";
    public static final String ACTION_RESOLVE_UPDATE_VERSION_AVAILABLE = "android.service.euicc.action.RESOLVE_UPDATE_VERSION_AVAILABLE";
    public static final String ACTION_START_CARRIER_ACTIVATION = "android.service.euicc.action.START_CARRIER_ACTIVATION";
    public static final String ACTION_START_EUICC_ACTIVATION = "android.service.euicc.action.START_EUICC_ACTIVATION";
    public static final String ACTION_TOGGLE_SUBSCRIPTION_PRIVILEGED = "android.service.euicc.action.TOGGLE_SUBSCRIPTION_PRIVILEGED";
    public static final String ACTION_TRANSFER_EMBEDDED_SUBSCRIPTIONS = "android.service.euicc.action.TRANSFER_EMBEDDED_SUBSCRIPTIONS";
    public static final String CATEGORY_EUICC_UI = "android.service.euicc.category.EUICC_UI";
    public static final String EUICC_SERVICE_INTERFACE = "android.service.euicc.EuiccService";
    public static final String EXTRA_RESOLUTION_ALLOW_POLICY_RULES = "android.service.euicc.extra.RESOLUTION_ALLOW_POLICY_RULES";
    public static final String EXTRA_RESOLUTION_CALLING_PACKAGE = "android.service.euicc.extra.RESOLUTION_CALLING_PACKAGE";
    public static final String EXTRA_RESOLUTION_CARD_ID = "android.service.euicc.extra.RESOLUTION_CARD_ID";
    public static final String EXTRA_RESOLUTION_CONFIRMATION_CODE = "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE";
    public static final String EXTRA_RESOLUTION_CONFIRMATION_CODE_RETRIED = "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE_RETRIED";
    public static final String EXTRA_RESOLUTION_CONSENT = "android.service.euicc.extra.RESOLUTION_CONSENT";
    public static final String EXTRA_RESOLUTION_PORT_INDEX = "android.service.euicc.extra.RESOLUTION_PORT_INDEX";
    public static final String EXTRA_RESOLUTION_SUBSCRIPTION_ID = "android.service.euicc.extra.RESOLUTION_SUBSCRIPTION_ID";
    public static final String EXTRA_RESOLUTION_USE_PORT_INDEX = "android.service.euicc.extra.RESOLUTION_USE_PORT_INDEX";
    public static final String EXTRA_RESOLVABLE_ERRORS = "android.service.euicc.extra.RESOLVABLE_ERRORS";
    public static final int NETWORK_LOCK_STATE_LOCKED = 512;
    public static final int NETWORK_LOCK_STATE_UNKNOWN = 256;
    public static final int NO_PRIVILEGED = 1024;
    public static final int RESOLVABLE_ERROR_CONFIRMATION_CODE = 1;
    public static final int RESOLVABLE_ERROR_POLICY_RULES = 2;
    public static final int RESULT_FIRST_USER = 1;
    public static final int RESULT_MUST_DEACTIVATE_SIM = -1;

    @Deprecated
    public static final int RESULT_NEED_CONFIRMATION_CODE = -2;
    public static final int RESULT_OK = 0;
    public static final int RESULT_RESOLVABLE_ERRORS = -2;
    private static final String TAG = "EuiccService";
    private ThreadPoolExecutor mExecutor;
    private final IEuiccService.Stub mStubWrapper = new IEuiccServiceWrapper();

    /* loaded from: classes3.dex */
    public static abstract class OtaStatusChangedCallback {
        public abstract void onOtaStatusChanged(int i);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface ResolvableError {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface Result {
    }

    public abstract int onDeleteSubscription(int i, String str);

    @Deprecated
    public abstract int onEraseSubscriptions(int i);

    public abstract GetDefaultDownloadableSubscriptionListResult onGetDefaultDownloadableSubscriptionList(int i, boolean z);

    public abstract GetDownloadableSubscriptionMetadataResult onGetDownloadableSubscriptionMetadata(int i, DownloadableSubscription downloadableSubscription, boolean z);

    public abstract String onGetEid(int i);

    public abstract EuiccInfo onGetEuiccInfo(int i);

    public abstract GetEuiccProfileInfoListResult onGetEuiccProfileInfoList(int i);

    public abstract int onGetOtaStatus(int i);

    public abstract int onRetainSubscriptionsForFactoryReset(int i);

    public abstract void onStartOtaIfNecessary(int i, OtaStatusChangedCallback otaStatusChangedCallback);

    @Deprecated
    public abstract int onSwitchToSubscription(int i, String str, boolean z);

    public abstract int onUpdateSubscriptionNickname(int i, String str, String str2);

    public int encodeSmdxSubjectAndReasonCode(String subjectCode, String reasonCode) {
        if (TextUtils.isEmpty(subjectCode) || TextUtils.isEmpty(reasonCode)) {
            throw new IllegalArgumentException("SubjectCode/ReasonCode is empty");
        }
        String[] subjectCodeToken = subjectCode.split("\\.");
        String[] reasonCodeToken = reasonCode.split("\\.");
        if (subjectCodeToken.length > 3 || reasonCodeToken.length > 3) {
            throw new UnsupportedOperationException("Only three nested layer is supported.");
        }
        int result = 10 << ((3 - subjectCodeToken.length) * 4);
        for (String digitString : subjectCodeToken) {
            int num = Integer.parseInt(digitString);
            if (num > 15) {
                throw new UnsupportedOperationException("SubjectCode exceeds 15");
            }
            result = (result << 4) + num;
        }
        int result2 = result << ((3 - reasonCodeToken.length) * 4);
        for (String digitString2 : reasonCodeToken) {
            int num2 = Integer.parseInt(digitString2);
            if (num2 > 15) {
                throw new UnsupportedOperationException("ReasonCode exceeds 15");
            }
            result2 = (result2 << 4) + num2;
        }
        return result2;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(4, 4, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: android.service.euicc.EuiccService.1
            private final AtomicInteger mCount = new AtomicInteger(1);

            AnonymousClass1() {
            }

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable r) {
                return new Thread(r, "EuiccService #" + this.mCount.getAndIncrement());
            }
        });
        this.mExecutor = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    /* renamed from: android.service.euicc.EuiccService$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements ThreadFactory {
        private final AtomicInteger mCount = new AtomicInteger(1);

        AnonymousClass1() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable r) {
            return new Thread(r, "EuiccService #" + this.mCount.getAndIncrement());
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.mExecutor.shutdownNow();
        super.onDestroy();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mStubWrapper;
    }

    public GetDownloadableSubscriptionMetadataResult onGetDownloadableSubscriptionMetadata(int slotId, int portIndex, DownloadableSubscription subscription, boolean forceDeactivateSim) {
        throw new UnsupportedOperationException("LPA must override onGetDownloadableSubscriptionMetadata");
    }

    @Deprecated
    public DownloadSubscriptionResult onDownloadSubscription(int slotId, DownloadableSubscription subscription, boolean switchAfterDownload, boolean forceDeactivateSim, Bundle resolvedBundle) {
        return null;
    }

    public DownloadSubscriptionResult onDownloadSubscription(int slotIndex, int portIndex, DownloadableSubscription subscription, boolean switchAfterDownload, boolean forceDeactivateSim, Bundle resolvedBundle) {
        throw new UnsupportedOperationException("LPA must override onDownloadSubscription");
    }

    @Deprecated
    public int onDownloadSubscription(int slotId, DownloadableSubscription subscription, boolean switchAfterDownload, boolean forceDeactivateSim) {
        return Integer.MIN_VALUE;
    }

    public int onSwitchToSubscriptionWithPort(int slotId, int portIndex, String iccid, boolean forceDeactivateSim) {
        throw new UnsupportedOperationException("LPA must override onSwitchToSubscriptionWithPort");
    }

    public int onEraseSubscriptions(int slotIndex, int options) {
        throw new UnsupportedOperationException("This method must be overridden to enable the ResetOption parameter");
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("The connected LPA does not implement EuiccService#dump()");
    }

    public static String resultToString(int result) {
        switch (result) {
            case -2:
                return "RESOLVABLE_ERRORS";
            case -1:
                return "MUST_DEACTIVATE_SIM";
            case 0:
                return SecureKeyConst.AT_RESPONSE_OK;
            case 1:
                return "FIRST_USER";
            default:
                return "UNKNOWN(" + result + NavigationBarInflaterView.KEY_CODE_END;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class IEuiccServiceWrapper extends IEuiccService.Stub {
        /* synthetic */ IEuiccServiceWrapper(EuiccService euiccService, IEuiccServiceWrapperIA iEuiccServiceWrapperIA) {
            this();
        }

        private IEuiccServiceWrapper() {
        }

        /* renamed from: android.service.euicc.EuiccService$IEuiccServiceWrapper$1 */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            final /* synthetic */ IDownloadSubscriptionCallback val$callback;
            final /* synthetic */ boolean val$forceDeactivateSim;
            final /* synthetic */ int val$portIndex;
            final /* synthetic */ Bundle val$resolvedBundle;
            final /* synthetic */ int val$slotId;
            final /* synthetic */ DownloadableSubscription val$subscription;
            final /* synthetic */ boolean val$switchAfterDownload;

            AnonymousClass1(int i, int i2, DownloadableSubscription downloadableSubscription, boolean z, boolean z2, Bundle bundle, IDownloadSubscriptionCallback iDownloadSubscriptionCallback) {
                slotId = i;
                portIndex = i2;
                subscription = downloadableSubscription;
                switchAfterDownload = z;
                forceDeactivateSim = z2;
                resolvedBundle = bundle;
                callback = iDownloadSubscriptionCallback;
            }

            @Override // java.lang.Runnable
            public void run() {
                DownloadSubscriptionResult result;
                try {
                    result = EuiccService.this.onDownloadSubscription(slotId, portIndex, subscription, switchAfterDownload, forceDeactivateSim, resolvedBundle);
                } catch (AbstractMethodError | UnsupportedOperationException e) {
                    Log.w(EuiccService.TAG, "The new onDownloadSubscription(int, int, DownloadableSubscription, boolean, boolean, Bundle) is not implemented. Fall back to the old one.", e);
                    result = EuiccService.this.onDownloadSubscription(slotId, subscription, switchAfterDownload, forceDeactivateSim, resolvedBundle);
                }
                try {
                    callback.onComplete(result);
                } catch (RemoteException e2) {
                }
            }
        }

        @Override // android.service.euicc.IEuiccService
        public void downloadSubscription(int slotId, int portIndex, DownloadableSubscription subscription, boolean switchAfterDownload, boolean forceDeactivateSim, Bundle resolvedBundle, IDownloadSubscriptionCallback callback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.1
                final /* synthetic */ IDownloadSubscriptionCallback val$callback;
                final /* synthetic */ boolean val$forceDeactivateSim;
                final /* synthetic */ int val$portIndex;
                final /* synthetic */ Bundle val$resolvedBundle;
                final /* synthetic */ int val$slotId;
                final /* synthetic */ DownloadableSubscription val$subscription;
                final /* synthetic */ boolean val$switchAfterDownload;

                AnonymousClass1(int slotId2, int portIndex2, DownloadableSubscription subscription2, boolean switchAfterDownload2, boolean forceDeactivateSim2, Bundle resolvedBundle2, IDownloadSubscriptionCallback callback2) {
                    slotId = slotId2;
                    portIndex = portIndex2;
                    subscription = subscription2;
                    switchAfterDownload = switchAfterDownload2;
                    forceDeactivateSim = forceDeactivateSim2;
                    resolvedBundle = resolvedBundle2;
                    callback = callback2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    DownloadSubscriptionResult result;
                    try {
                        result = EuiccService.this.onDownloadSubscription(slotId, portIndex, subscription, switchAfterDownload, forceDeactivateSim, resolvedBundle);
                    } catch (AbstractMethodError | UnsupportedOperationException e) {
                        Log.w(EuiccService.TAG, "The new onDownloadSubscription(int, int, DownloadableSubscription, boolean, boolean, Bundle) is not implemented. Fall back to the old one.", e);
                        result = EuiccService.this.onDownloadSubscription(slotId, subscription, switchAfterDownload, forceDeactivateSim, resolvedBundle);
                    }
                    try {
                        callback.onComplete(result);
                    } catch (RemoteException e2) {
                    }
                }
            });
        }

        /* renamed from: android.service.euicc.EuiccService$IEuiccServiceWrapper$2 */
        /* loaded from: classes3.dex */
        class AnonymousClass2 implements Runnable {
            final /* synthetic */ IGetEidCallback val$callback;
            final /* synthetic */ int val$slotId;

            AnonymousClass2(int i, IGetEidCallback iGetEidCallback) {
                slotId = i;
                callback = iGetEidCallback;
            }

            @Override // java.lang.Runnable
            public void run() {
                String eid = EuiccService.this.onGetEid(slotId);
                try {
                    callback.onSuccess(eid);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.service.euicc.IEuiccService
        public void getEid(int slotId, IGetEidCallback callback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.2
                final /* synthetic */ IGetEidCallback val$callback;
                final /* synthetic */ int val$slotId;

                AnonymousClass2(int slotId2, IGetEidCallback callback2) {
                    slotId = slotId2;
                    callback = callback2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    String eid = EuiccService.this.onGetEid(slotId);
                    try {
                        callback.onSuccess(eid);
                    } catch (RemoteException e) {
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.service.euicc.EuiccService$IEuiccServiceWrapper$3 */
        /* loaded from: classes3.dex */
        public class AnonymousClass3 implements Runnable {
            final /* synthetic */ int val$slotId;
            final /* synthetic */ IOtaStatusChangedCallback val$statusChangedCallback;

            AnonymousClass3(int i, IOtaStatusChangedCallback iOtaStatusChangedCallback) {
                slotId = i;
                statusChangedCallback = iOtaStatusChangedCallback;
            }

            /* renamed from: android.service.euicc.EuiccService$IEuiccServiceWrapper$3$1 */
            /* loaded from: classes3.dex */
            class AnonymousClass1 extends OtaStatusChangedCallback {
                AnonymousClass1() {
                }

                @Override // android.service.euicc.EuiccService.OtaStatusChangedCallback
                public void onOtaStatusChanged(int status) {
                    try {
                        statusChangedCallback.onOtaStatusChanged(status);
                    } catch (RemoteException e) {
                    }
                }
            }

            @Override // java.lang.Runnable
            public void run() {
                EuiccService.this.onStartOtaIfNecessary(slotId, new OtaStatusChangedCallback() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.3.1
                    AnonymousClass1() {
                    }

                    @Override // android.service.euicc.EuiccService.OtaStatusChangedCallback
                    public void onOtaStatusChanged(int status) {
                        try {
                            statusChangedCallback.onOtaStatusChanged(status);
                        } catch (RemoteException e) {
                        }
                    }
                });
            }
        }

        @Override // android.service.euicc.IEuiccService
        public void startOtaIfNecessary(int slotId, IOtaStatusChangedCallback statusChangedCallback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.3
                final /* synthetic */ int val$slotId;
                final /* synthetic */ IOtaStatusChangedCallback val$statusChangedCallback;

                AnonymousClass3(int slotId2, IOtaStatusChangedCallback statusChangedCallback2) {
                    slotId = slotId2;
                    statusChangedCallback = statusChangedCallback2;
                }

                /* renamed from: android.service.euicc.EuiccService$IEuiccServiceWrapper$3$1 */
                /* loaded from: classes3.dex */
                class AnonymousClass1 extends OtaStatusChangedCallback {
                    AnonymousClass1() {
                    }

                    @Override // android.service.euicc.EuiccService.OtaStatusChangedCallback
                    public void onOtaStatusChanged(int status) {
                        try {
                            statusChangedCallback.onOtaStatusChanged(status);
                        } catch (RemoteException e) {
                        }
                    }
                }

                @Override // java.lang.Runnable
                public void run() {
                    EuiccService.this.onStartOtaIfNecessary(slotId, new OtaStatusChangedCallback() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.3.1
                        AnonymousClass1() {
                        }

                        @Override // android.service.euicc.EuiccService.OtaStatusChangedCallback
                        public void onOtaStatusChanged(int status) {
                            try {
                                statusChangedCallback.onOtaStatusChanged(status);
                            } catch (RemoteException e) {
                            }
                        }
                    });
                }
            });
        }

        /* renamed from: android.service.euicc.EuiccService$IEuiccServiceWrapper$4 */
        /* loaded from: classes3.dex */
        class AnonymousClass4 implements Runnable {
            final /* synthetic */ IGetOtaStatusCallback val$callback;
            final /* synthetic */ int val$slotId;

            AnonymousClass4(int i, IGetOtaStatusCallback iGetOtaStatusCallback) {
                slotId = i;
                callback = iGetOtaStatusCallback;
            }

            @Override // java.lang.Runnable
            public void run() {
                int status = EuiccService.this.onGetOtaStatus(slotId);
                try {
                    callback.onSuccess(status);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.service.euicc.IEuiccService
        public void getOtaStatus(int slotId, IGetOtaStatusCallback callback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.4
                final /* synthetic */ IGetOtaStatusCallback val$callback;
                final /* synthetic */ int val$slotId;

                AnonymousClass4(int slotId2, IGetOtaStatusCallback callback2) {
                    slotId = slotId2;
                    callback = callback2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    int status = EuiccService.this.onGetOtaStatus(slotId);
                    try {
                        callback.onSuccess(status);
                    } catch (RemoteException e) {
                    }
                }
            });
        }

        /* renamed from: android.service.euicc.EuiccService$IEuiccServiceWrapper$5 */
        /* loaded from: classes3.dex */
        class AnonymousClass5 implements Runnable {
            final /* synthetic */ IGetDownloadableSubscriptionMetadataCallback val$callback;
            final /* synthetic */ boolean val$forceDeactivateSim;
            final /* synthetic */ int val$portIndex;
            final /* synthetic */ int val$slotId;
            final /* synthetic */ DownloadableSubscription val$subscription;
            final /* synthetic */ boolean val$switchAfterDownload;

            AnonymousClass5(boolean z, int i, int i2, DownloadableSubscription downloadableSubscription, boolean z2, IGetDownloadableSubscriptionMetadataCallback iGetDownloadableSubscriptionMetadataCallback) {
                switchAfterDownload = z;
                slotId = i;
                portIndex = i2;
                subscription = downloadableSubscription;
                forceDeactivateSim = z2;
                callback = iGetDownloadableSubscriptionMetadataCallback;
            }

            @Override // java.lang.Runnable
            public void run() {
                GetDownloadableSubscriptionMetadataResult result;
                if (switchAfterDownload) {
                    try {
                        result = EuiccService.this.onGetDownloadableSubscriptionMetadata(slotId, portIndex, subscription, forceDeactivateSim);
                    } catch (AbstractMethodError | UnsupportedOperationException e) {
                        Log.w(EuiccService.TAG, "The new onGetDownloadableSubscriptionMetadata(int, int, DownloadableSubscription, boolean) is not implemented. Fall back to the old one.", e);
                        result = EuiccService.this.onGetDownloadableSubscriptionMetadata(slotId, subscription, forceDeactivateSim);
                    }
                } else {
                    result = EuiccService.this.onGetDownloadableSubscriptionMetadata(slotId, subscription, forceDeactivateSim);
                }
                try {
                    callback.onComplete(result);
                } catch (RemoteException e2) {
                }
            }
        }

        @Override // android.service.euicc.IEuiccService
        public void getDownloadableSubscriptionMetadata(int slotId, int portIndex, DownloadableSubscription subscription, boolean switchAfterDownload, boolean forceDeactivateSim, IGetDownloadableSubscriptionMetadataCallback callback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.5
                final /* synthetic */ IGetDownloadableSubscriptionMetadataCallback val$callback;
                final /* synthetic */ boolean val$forceDeactivateSim;
                final /* synthetic */ int val$portIndex;
                final /* synthetic */ int val$slotId;
                final /* synthetic */ DownloadableSubscription val$subscription;
                final /* synthetic */ boolean val$switchAfterDownload;

                AnonymousClass5(boolean switchAfterDownload2, int slotId2, int portIndex2, DownloadableSubscription subscription2, boolean forceDeactivateSim2, IGetDownloadableSubscriptionMetadataCallback callback2) {
                    switchAfterDownload = switchAfterDownload2;
                    slotId = slotId2;
                    portIndex = portIndex2;
                    subscription = subscription2;
                    forceDeactivateSim = forceDeactivateSim2;
                    callback = callback2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    GetDownloadableSubscriptionMetadataResult result;
                    if (switchAfterDownload) {
                        try {
                            result = EuiccService.this.onGetDownloadableSubscriptionMetadata(slotId, portIndex, subscription, forceDeactivateSim);
                        } catch (AbstractMethodError | UnsupportedOperationException e) {
                            Log.w(EuiccService.TAG, "The new onGetDownloadableSubscriptionMetadata(int, int, DownloadableSubscription, boolean) is not implemented. Fall back to the old one.", e);
                            result = EuiccService.this.onGetDownloadableSubscriptionMetadata(slotId, subscription, forceDeactivateSim);
                        }
                    } else {
                        result = EuiccService.this.onGetDownloadableSubscriptionMetadata(slotId, subscription, forceDeactivateSim);
                    }
                    try {
                        callback.onComplete(result);
                    } catch (RemoteException e2) {
                    }
                }
            });
        }

        /* renamed from: android.service.euicc.EuiccService$IEuiccServiceWrapper$6 */
        /* loaded from: classes3.dex */
        class AnonymousClass6 implements Runnable {
            final /* synthetic */ IGetDefaultDownloadableSubscriptionListCallback val$callback;
            final /* synthetic */ boolean val$forceDeactivateSim;
            final /* synthetic */ int val$slotId;

            AnonymousClass6(int i, boolean z, IGetDefaultDownloadableSubscriptionListCallback iGetDefaultDownloadableSubscriptionListCallback) {
                slotId = i;
                forceDeactivateSim = z;
                callback = iGetDefaultDownloadableSubscriptionListCallback;
            }

            @Override // java.lang.Runnable
            public void run() {
                GetDefaultDownloadableSubscriptionListResult result = EuiccService.this.onGetDefaultDownloadableSubscriptionList(slotId, forceDeactivateSim);
                try {
                    callback.onComplete(result);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.service.euicc.IEuiccService
        public void getDefaultDownloadableSubscriptionList(int slotId, boolean forceDeactivateSim, IGetDefaultDownloadableSubscriptionListCallback callback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.6
                final /* synthetic */ IGetDefaultDownloadableSubscriptionListCallback val$callback;
                final /* synthetic */ boolean val$forceDeactivateSim;
                final /* synthetic */ int val$slotId;

                AnonymousClass6(int slotId2, boolean forceDeactivateSim2, IGetDefaultDownloadableSubscriptionListCallback callback2) {
                    slotId = slotId2;
                    forceDeactivateSim = forceDeactivateSim2;
                    callback = callback2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    GetDefaultDownloadableSubscriptionListResult result = EuiccService.this.onGetDefaultDownloadableSubscriptionList(slotId, forceDeactivateSim);
                    try {
                        callback.onComplete(result);
                    } catch (RemoteException e) {
                    }
                }
            });
        }

        /* renamed from: android.service.euicc.EuiccService$IEuiccServiceWrapper$7 */
        /* loaded from: classes3.dex */
        class AnonymousClass7 implements Runnable {
            final /* synthetic */ IGetEuiccProfileInfoListCallback val$callback;
            final /* synthetic */ int val$slotId;

            AnonymousClass7(int i, IGetEuiccProfileInfoListCallback iGetEuiccProfileInfoListCallback) {
                slotId = i;
                callback = iGetEuiccProfileInfoListCallback;
            }

            @Override // java.lang.Runnable
            public void run() {
                GetEuiccProfileInfoListResult result = EuiccService.this.onGetEuiccProfileInfoList(slotId);
                try {
                    callback.onComplete(result);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.service.euicc.IEuiccService
        public void getEuiccProfileInfoList(int slotId, IGetEuiccProfileInfoListCallback callback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.7
                final /* synthetic */ IGetEuiccProfileInfoListCallback val$callback;
                final /* synthetic */ int val$slotId;

                AnonymousClass7(int slotId2, IGetEuiccProfileInfoListCallback callback2) {
                    slotId = slotId2;
                    callback = callback2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    GetEuiccProfileInfoListResult result = EuiccService.this.onGetEuiccProfileInfoList(slotId);
                    try {
                        callback.onComplete(result);
                    } catch (RemoteException e) {
                    }
                }
            });
        }

        /* renamed from: android.service.euicc.EuiccService$IEuiccServiceWrapper$8 */
        /* loaded from: classes3.dex */
        class AnonymousClass8 implements Runnable {
            final /* synthetic */ IGetEuiccInfoCallback val$callback;
            final /* synthetic */ int val$slotId;

            AnonymousClass8(int i, IGetEuiccInfoCallback iGetEuiccInfoCallback) {
                slotId = i;
                callback = iGetEuiccInfoCallback;
            }

            @Override // java.lang.Runnable
            public void run() {
                EuiccInfo euiccInfo = EuiccService.this.onGetEuiccInfo(slotId);
                try {
                    callback.onSuccess(euiccInfo);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.service.euicc.IEuiccService
        public void getEuiccInfo(int slotId, IGetEuiccInfoCallback callback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.8
                final /* synthetic */ IGetEuiccInfoCallback val$callback;
                final /* synthetic */ int val$slotId;

                AnonymousClass8(int slotId2, IGetEuiccInfoCallback callback2) {
                    slotId = slotId2;
                    callback = callback2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    EuiccInfo euiccInfo = EuiccService.this.onGetEuiccInfo(slotId);
                    try {
                        callback.onSuccess(euiccInfo);
                    } catch (RemoteException e) {
                    }
                }
            });
        }

        /* renamed from: android.service.euicc.EuiccService$IEuiccServiceWrapper$9 */
        /* loaded from: classes3.dex */
        class AnonymousClass9 implements Runnable {
            final /* synthetic */ IDeleteSubscriptionCallback val$callback;
            final /* synthetic */ String val$iccid;
            final /* synthetic */ int val$slotId;

            AnonymousClass9(int i, String str, IDeleteSubscriptionCallback iDeleteSubscriptionCallback) {
                slotId = i;
                iccid = str;
                callback = iDeleteSubscriptionCallback;
            }

            @Override // java.lang.Runnable
            public void run() {
                int result = EuiccService.this.onDeleteSubscription(slotId, iccid);
                try {
                    callback.onComplete(result);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.service.euicc.IEuiccService
        public void deleteSubscription(int slotId, String iccid, IDeleteSubscriptionCallback callback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.9
                final /* synthetic */ IDeleteSubscriptionCallback val$callback;
                final /* synthetic */ String val$iccid;
                final /* synthetic */ int val$slotId;

                AnonymousClass9(int slotId2, String iccid2, IDeleteSubscriptionCallback callback2) {
                    slotId = slotId2;
                    iccid = iccid2;
                    callback = callback2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    int result = EuiccService.this.onDeleteSubscription(slotId, iccid);
                    try {
                        callback.onComplete(result);
                    } catch (RemoteException e) {
                    }
                }
            });
        }

        /* renamed from: android.service.euicc.EuiccService$IEuiccServiceWrapper$10 */
        /* loaded from: classes3.dex */
        class AnonymousClass10 implements Runnable {
            final /* synthetic */ ISwitchToSubscriptionCallback val$callback;
            final /* synthetic */ boolean val$forceDeactivateSim;
            final /* synthetic */ String val$iccid;
            final /* synthetic */ int val$portIndex;
            final /* synthetic */ int val$slotId;
            final /* synthetic */ boolean val$usePortIndex;

            AnonymousClass10(boolean z, int i, int i2, String str, boolean z2, ISwitchToSubscriptionCallback iSwitchToSubscriptionCallback) {
                usePortIndex = z;
                slotId = i;
                portIndex = i2;
                iccid = str;
                forceDeactivateSim = z2;
                callback = iSwitchToSubscriptionCallback;
            }

            @Override // java.lang.Runnable
            public void run() {
                int result;
                if (usePortIndex) {
                    result = EuiccService.this.onSwitchToSubscriptionWithPort(slotId, portIndex, iccid, forceDeactivateSim);
                } else {
                    result = EuiccService.this.onSwitchToSubscription(slotId, iccid, forceDeactivateSim);
                }
                try {
                    callback.onComplete(result);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.service.euicc.IEuiccService
        public void switchToSubscription(int slotId, int portIndex, String iccid, boolean forceDeactivateSim, ISwitchToSubscriptionCallback callback, boolean usePortIndex) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.10
                final /* synthetic */ ISwitchToSubscriptionCallback val$callback;
                final /* synthetic */ boolean val$forceDeactivateSim;
                final /* synthetic */ String val$iccid;
                final /* synthetic */ int val$portIndex;
                final /* synthetic */ int val$slotId;
                final /* synthetic */ boolean val$usePortIndex;

                AnonymousClass10(boolean usePortIndex2, int slotId2, int portIndex2, String iccid2, boolean forceDeactivateSim2, ISwitchToSubscriptionCallback callback2) {
                    usePortIndex = usePortIndex2;
                    slotId = slotId2;
                    portIndex = portIndex2;
                    iccid = iccid2;
                    forceDeactivateSim = forceDeactivateSim2;
                    callback = callback2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    int result;
                    if (usePortIndex) {
                        result = EuiccService.this.onSwitchToSubscriptionWithPort(slotId, portIndex, iccid, forceDeactivateSim);
                    } else {
                        result = EuiccService.this.onSwitchToSubscription(slotId, iccid, forceDeactivateSim);
                    }
                    try {
                        callback.onComplete(result);
                    } catch (RemoteException e) {
                    }
                }
            });
        }

        /* renamed from: android.service.euicc.EuiccService$IEuiccServiceWrapper$11 */
        /* loaded from: classes3.dex */
        class AnonymousClass11 implements Runnable {
            final /* synthetic */ IUpdateSubscriptionNicknameCallback val$callback;
            final /* synthetic */ String val$iccid;
            final /* synthetic */ String val$nickname;
            final /* synthetic */ int val$slotId;

            AnonymousClass11(int i, String str, String str2, IUpdateSubscriptionNicknameCallback iUpdateSubscriptionNicknameCallback) {
                slotId = i;
                iccid = str;
                nickname = str2;
                callback = iUpdateSubscriptionNicknameCallback;
            }

            @Override // java.lang.Runnable
            public void run() {
                int result = EuiccService.this.onUpdateSubscriptionNickname(slotId, iccid, nickname);
                try {
                    callback.onComplete(result);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.service.euicc.IEuiccService
        public void updateSubscriptionNickname(int slotId, String iccid, String nickname, IUpdateSubscriptionNicknameCallback callback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.11
                final /* synthetic */ IUpdateSubscriptionNicknameCallback val$callback;
                final /* synthetic */ String val$iccid;
                final /* synthetic */ String val$nickname;
                final /* synthetic */ int val$slotId;

                AnonymousClass11(int slotId2, String iccid2, String nickname2, IUpdateSubscriptionNicknameCallback callback2) {
                    slotId = slotId2;
                    iccid = iccid2;
                    nickname = nickname2;
                    callback = callback2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    int result = EuiccService.this.onUpdateSubscriptionNickname(slotId, iccid, nickname);
                    try {
                        callback.onComplete(result);
                    } catch (RemoteException e) {
                    }
                }
            });
        }

        /* renamed from: android.service.euicc.EuiccService$IEuiccServiceWrapper$12 */
        /* loaded from: classes3.dex */
        class AnonymousClass12 implements Runnable {
            final /* synthetic */ IEraseSubscriptionsCallback val$callback;
            final /* synthetic */ int val$slotId;

            AnonymousClass12(int i, IEraseSubscriptionsCallback iEraseSubscriptionsCallback) {
                slotId = i;
                callback = iEraseSubscriptionsCallback;
            }

            @Override // java.lang.Runnable
            public void run() {
                int result = EuiccService.this.onEraseSubscriptions(slotId);
                try {
                    callback.onComplete(result);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.service.euicc.IEuiccService
        public void eraseSubscriptions(int slotId, IEraseSubscriptionsCallback callback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.12
                final /* synthetic */ IEraseSubscriptionsCallback val$callback;
                final /* synthetic */ int val$slotId;

                AnonymousClass12(int slotId2, IEraseSubscriptionsCallback callback2) {
                    slotId = slotId2;
                    callback = callback2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    int result = EuiccService.this.onEraseSubscriptions(slotId);
                    try {
                        callback.onComplete(result);
                    } catch (RemoteException e) {
                    }
                }
            });
        }

        /* renamed from: android.service.euicc.EuiccService$IEuiccServiceWrapper$13 */
        /* loaded from: classes3.dex */
        class AnonymousClass13 implements Runnable {
            final /* synthetic */ IEraseSubscriptionsCallback val$callback;
            final /* synthetic */ int val$options;
            final /* synthetic */ int val$slotIndex;

            AnonymousClass13(int i, int i2, IEraseSubscriptionsCallback iEraseSubscriptionsCallback) {
                slotIndex = i;
                options = i2;
                callback = iEraseSubscriptionsCallback;
            }

            @Override // java.lang.Runnable
            public void run() {
                int result = EuiccService.this.onEraseSubscriptions(slotIndex, options);
                try {
                    callback.onComplete(result);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.service.euicc.IEuiccService
        public void eraseSubscriptionsWithOptions(int slotIndex, int options, IEraseSubscriptionsCallback callback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.13
                final /* synthetic */ IEraseSubscriptionsCallback val$callback;
                final /* synthetic */ int val$options;
                final /* synthetic */ int val$slotIndex;

                AnonymousClass13(int slotIndex2, int options2, IEraseSubscriptionsCallback callback2) {
                    slotIndex = slotIndex2;
                    options = options2;
                    callback = callback2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    int result = EuiccService.this.onEraseSubscriptions(slotIndex, options);
                    try {
                        callback.onComplete(result);
                    } catch (RemoteException e) {
                    }
                }
            });
        }

        /* renamed from: android.service.euicc.EuiccService$IEuiccServiceWrapper$14 */
        /* loaded from: classes3.dex */
        class AnonymousClass14 implements Runnable {
            final /* synthetic */ IRetainSubscriptionsForFactoryResetCallback val$callback;
            final /* synthetic */ int val$slotId;

            AnonymousClass14(int i, IRetainSubscriptionsForFactoryResetCallback iRetainSubscriptionsForFactoryResetCallback) {
                slotId = i;
                callback = iRetainSubscriptionsForFactoryResetCallback;
            }

            @Override // java.lang.Runnable
            public void run() {
                int result = EuiccService.this.onRetainSubscriptionsForFactoryReset(slotId);
                try {
                    callback.onComplete(result);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.service.euicc.IEuiccService
        public void retainSubscriptionsForFactoryReset(int slotId, IRetainSubscriptionsForFactoryResetCallback callback) {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.14
                final /* synthetic */ IRetainSubscriptionsForFactoryResetCallback val$callback;
                final /* synthetic */ int val$slotId;

                AnonymousClass14(int slotId2, IRetainSubscriptionsForFactoryResetCallback callback2) {
                    slotId = slotId2;
                    callback = callback2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    int result = EuiccService.this.onRetainSubscriptionsForFactoryReset(slotId);
                    try {
                        callback.onComplete(result);
                    } catch (RemoteException e) {
                    }
                }
            });
        }

        /* renamed from: android.service.euicc.EuiccService$IEuiccServiceWrapper$15 */
        /* loaded from: classes3.dex */
        class AnonymousClass15 implements Runnable {
            final /* synthetic */ IEuiccServiceDumpResultCallback val$callback;

            AnonymousClass15(IEuiccServiceDumpResultCallback iEuiccServiceDumpResultCallback) {
                callback = iEuiccServiceDumpResultCallback;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    StringWriter sw = new StringWriter();
                    PrintWriter pw = new PrintWriter(sw);
                    EuiccService.this.dump(pw);
                    callback.onComplete(sw.toString());
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.service.euicc.IEuiccService
        public void dump(IEuiccServiceDumpResultCallback callback) throws RemoteException {
            EuiccService.this.mExecutor.execute(new Runnable() { // from class: android.service.euicc.EuiccService.IEuiccServiceWrapper.15
                final /* synthetic */ IEuiccServiceDumpResultCallback val$callback;

                AnonymousClass15(IEuiccServiceDumpResultCallback callback2) {
                    callback = callback2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        StringWriter sw = new StringWriter();
                        PrintWriter pw = new PrintWriter(sw);
                        EuiccService.this.dump(pw);
                        callback.onComplete(sw.toString());
                    } catch (RemoteException e) {
                    }
                }
            });
        }
    }
}
