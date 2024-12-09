package com.sec.internal.ims.servicemodules.options;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.sec.ims.extensions.ContextExt;
import com.sec.ims.extensions.TelephonyManagerExt;
import com.sec.ims.options.Capabilities;
import com.sec.ims.options.CapabilityRefreshType;
import com.sec.ims.options.ICapabilityService;
import com.sec.ims.options.ICapabilityServiceEventListener;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.ImsFrameworkState;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.csh.IshIntents;
import com.sec.internal.ims.servicemodules.csh.event.VshIntents;
import com.sec.internal.ims.settings.ImsProfileLoaderInternal;
import com.sec.internal.ims.util.CscParser;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.ims.util.UriGeneratorFactory;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class CapabilityProvider extends ContentProvider {
    static final String ADDITIONAL_INFO_LOCAL_OFFLINE = "local_offline;";
    static final String ADDITIONAL_INFO_NONE = "";
    static final String ADDITIONAL_INFO_REMOTE_OFFLINE = "remote_offline;";
    static final String ADDITIONAL_INFO_REMOTE_ONLINE = "fresh;";
    private static final String AUTHORITY = "com.samsung.rcs.serviceprovider";
    private static final String LOG_TAG = "CapabilityProvider";
    static final int N_INCALL_SERVICE = 4;
    static final int N_LOOKUP_URI = 1;
    static final int N_LOOKUP_URI_ID = 2;
    static final int N_OPERATOR_RCS_VERSION = 7;
    static final int N_OWN_CAPS = 5;
    static final int N_RCS_BIG_DATA = 8;
    static final int N_RCS_ENABLED_STATIC = 6;
    static final int N_SIP_URI = 3;
    private static final Pattern OPTIONS_PATTERN = Pattern.compile("\\?");
    private static boolean ready_ish = true;
    private static boolean ready_vsh = true;
    static UriMatcher sMatcher;
    Map<ImsUri, Capabilities> mAsyncResults;
    private ShareServiceBroadcastReceiver mReceiver;
    protected TelephonyCallbackForCapabilityProvider mTelephonyCallback;
    Context mContext = null;
    ICapabilityService mService = null;
    private ImsUri mLastInCallUri = null;
    Object mLock = new Object();
    private int mDataNetworkType = 0;

    static {
        UriMatcher uriMatcher = new UriMatcher(0);
        sMatcher = uriMatcher;
        uriMatcher.addURI(AUTHORITY, "lookup/*/#", 2);
        sMatcher.addURI(AUTHORITY, "lookup/*", 1);
        sMatcher.addURI(AUTHORITY, "sip/*", 3);
        sMatcher.addURI(AUTHORITY, "incall/*", 4);
        sMatcher.addURI(AUTHORITY, "own", 5);
        sMatcher.addURI(AUTHORITY, "rcs_enabled_static", 6);
        sMatcher.addURI(AUTHORITY, "operator_rcs_version", 7);
        sMatcher.addURI(AUTHORITY, "rcs_big_data/*", 8);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Log.i(LOG_TAG, "onCreate");
        if (this.mContext == null) {
            this.mContext = getContext();
        }
        this.mAsyncResults = new HashMap();
        this.mReceiver = new ShareServiceBroadcastReceiver();
        this.mTelephonyCallback = new TelephonyCallbackForCapabilityProvider();
        ((TelephonyManager) this.mContext.getSystemService(PhoneConstants.PHONE_KEY)).registerTelephonyCallback(this.mContext.getMainExecutor(), this.mTelephonyCallback);
        ImsFrameworkState.getInstance(this.mContext).registerForFrameworkState(new ImsFrameworkState.FrameworkStateListener() { // from class: com.sec.internal.ims.servicemodules.options.CapabilityProvider$$ExternalSyntheticLambda0
            @Override // com.sec.internal.helper.os.ImsFrameworkState.FrameworkStateListener
            public final void onFwReady() {
                CapabilityProvider.this.lambda$onCreate$0();
            }
        });
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: initCapabilityService, reason: merged with bridge method [inline-methods] */
    public void lambda$onCreate$0() {
        Log.i(LOG_TAG, "Connecting to CapabilityDiscoveryService.");
        Intent intent = new Intent();
        intent.setClassName("com.sec.imsservice", "com.sec.internal.ims.imsservice.CapabilityService");
        ContextExt.bindServiceAsUser(this.mContext, intent, new ServiceConnection() { // from class: com.sec.internal.ims.servicemodules.options.CapabilityProvider.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                Log.i(CapabilityProvider.LOG_TAG, "Connected to CapabilityDiscoveryService.");
                CapabilityProvider.this.mService = ICapabilityService.Stub.asInterface(iBinder);
                if (CapabilityProvider.this.mService == null) {
                    Log.i(CapabilityProvider.LOG_TAG, "Failed to get ICapabilityService with " + iBinder);
                    return;
                }
                try {
                    int phoneCount = SimUtil.getPhoneCount();
                    for (int i = 0; i < phoneCount; i++) {
                        CapabilityProvider.this.mService.registerListener(new ICapabilityServiceEventListener.Stub() { // from class: com.sec.internal.ims.servicemodules.options.CapabilityProvider.1.1
                            public void onCapabilityAndAvailabilityPublished(int i2) throws RemoteException {
                            }

                            public void onMultipleCapabilitiesChanged(List<ImsUri> list, List<Capabilities> list2) throws RemoteException {
                            }

                            public void onCapabilitiesChanged(List<ImsUri> list, Capabilities capabilities) throws RemoteException {
                                ImsUri imsUri;
                                if (list == null) {
                                    return;
                                }
                                for (ImsUri imsUri2 : list) {
                                    if (UriUtil.equals(imsUri2, CapabilityProvider.this.mLastInCallUri)) {
                                        CapabilityProvider.ready_ish = true;
                                        CapabilityProvider.ready_vsh = true;
                                        CapabilityProvider.this.notifyInCallServicesChange();
                                    }
                                    Iterator<ImsUri> it = CapabilityProvider.this.mAsyncResults.keySet().iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            imsUri = it.next();
                                            if (UriUtil.equals(imsUri, imsUri2)) {
                                                break;
                                            }
                                        } else {
                                            imsUri = null;
                                            break;
                                        }
                                    }
                                    if (imsUri != null) {
                                        CapabilityProvider.this.mAsyncResults.put(imsUri, capabilities);
                                        CapabilityProvider.this.wakeup();
                                    }
                                    CapabilityProvider.this.notifyCapabilityChange(imsUri2);
                                }
                            }

                            public void onOwnCapabilitiesChanged() throws RemoteException {
                                CapabilityProvider.ready_ish = true;
                                CapabilityProvider.ready_vsh = true;
                                CapabilityProvider.this.notifyOwnServicesChange();
                                CapabilityProvider.this.notifyInCallServicesChange();
                            }
                        }, i);
                    }
                } catch (RemoteException | NullPointerException e) {
                    e.printStackTrace();
                }
                CapabilityProvider capabilityProvider = CapabilityProvider.this;
                capabilityProvider.mContext.registerReceiver(capabilityProvider.mReceiver, CapabilityProvider.createIntentFilter());
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                Log.i(CapabilityProvider.LOG_TAG, "Disconnected.");
                CapabilityProvider.this.mService = null;
            }
        }, 1, ContextExt.CURRENT_OR_SELF);
    }

    void waitForUpdate(ImsUri imsUri) {
        IMSLog.s(LOG_TAG, "waitForUpdate: remote uri " + imsUri);
        try {
            this.mAsyncResults.put(imsUri, null);
            synchronized (this.mLock) {
                this.mLock.wait(1500L);
            }
        } catch (InterruptedException e) {
            this.mAsyncResults.remove(imsUri);
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wakeup() {
        synchronized (this.mLock) {
            this.mLock.notify();
        }
    }

    Capabilities getAsyncCapexResult(ImsUri imsUri) {
        Capabilities capabilities = this.mAsyncResults.get(imsUri);
        if (capabilities != null) {
            this.mAsyncResults.remove(imsUri);
        }
        return capabilities;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        IMSLog.s(LOG_TAG, "query(Uri, String[], String, String[], String) - uri: " + uri + ", selection: " + str + ", args: " + Arrays.toString(strArr2));
        if (this.mService == null) {
            Log.e(LOG_TAG, "query before provider was started! Returning empty response");
            return new MatrixCursor(Projections.SERVICE_PROJECTION);
        }
        String[] split = OPTIONS_PATTERN.split(uri.toString());
        Uri parse = Uri.parse(split[0]);
        List<String> pathSegments = parse.getPathSegments();
        CapabilityRefreshType requeryStrategyId = getRequeryStrategyId(split.length == 2 ? split[1] : null);
        int simSlotFromUri = UriUtil.getSimSlotFromUri(parse);
        switch (sMatcher.match(parse)) {
            case 2:
                IMSLog.s(LOG_TAG, simSlotFromUri, "N_LOOKUP_URI_ID | Operation for uri: ".concat(parse.toString()));
                return queryLookupUriId(pathSegments, requeryStrategyId, simSlotFromUri);
            case 3:
                IMSLog.s(LOG_TAG, simSlotFromUri, "N_SIP_URI | Operation for uri: ".concat(parse.toString()));
                return querySipUri(strArr, pathSegments, requeryStrategyId, simSlotFromUri);
            case 4:
                IMSLog.s(LOG_TAG, simSlotFromUri, "N_INCALL_SERVICE | Operation for uri: ".concat(parse.toString()));
                return queryIncallService(pathSegments, requeryStrategyId, simSlotFromUri);
            case 5:
                IMSLog.s(LOG_TAG, simSlotFromUri, "N_OWN_CAPS | Operation for uri: ".concat(parse.toString()));
                return queryOwnCaps(simSlotFromUri);
            case 6:
                IMSLog.i(LOG_TAG, simSlotFromUri, "N_RCS_ENABLED_STATIC");
                return queryRcsEnabledStatic(simSlotFromUri);
            case 7:
                IMSLog.i(LOG_TAG, simSlotFromUri, "N_OPERATOR_RCS_VERSION");
                return queryOperatorRcsVersion(simSlotFromUri);
            case 8:
                IMSLog.s(LOG_TAG, simSlotFromUri, "N_RCS_BIG_DATA | Operation for uri: ".concat(parse.toString()));
                return queryRcsBigData(pathSegments, simSlotFromUri);
            default:
                IMSLog.s(LOG_TAG, simSlotFromUri, "UNDEFINED CATEGORY! | Operation for uri: ".concat(parse.toString()));
                throw new UnsupportedOperationException("Operation not supported for uri: ".concat(parse.toString()));
        }
    }

    Cursor queryLookupUriId(List<String> list, CapabilityRefreshType capabilityRefreshType, int i) {
        Capabilities[] capabilitiesByContactId;
        boolean z;
        boolean z2;
        IMSLog.i(LOG_TAG, i, "queryLookupUriId");
        boolean z3 = true;
        String str = list.get(list.size() - 1);
        String str2 = list.get(list.size() - 2) + "/" + str;
        MatrixCursor matrixCursor = new MatrixCursor(Projections.SERVICE_PROJECTION);
        try {
            capabilitiesByContactId = this.mService.getCapabilitiesByContactId(str, capabilityRefreshType.ordinal(), i);
        } catch (RemoteException unused) {
            IMSLog.e(LOG_TAG, i, "queryLookupUriId: no uris exist for lookup, returning empty response: " + str2);
        }
        if (capabilitiesByContactId == null) {
            IMSLog.e(LOG_TAG, i, "queryLookupUriId: Capabilities not found for contactId " + str);
            return matrixCursor;
        }
        String str3 = ADDITIONAL_INFO_REMOTE_OFFLINE;
        int length = capabilitiesByContactId.length;
        int i2 = 0;
        int i3 = 0;
        while (i3 < length) {
            Capabilities capabilities = capabilitiesByContactId[i3];
            boolean expired = capabilities.getExpired();
            if (capabilities.isAvailable()) {
                str3 = expired ? "" : ADDITIONAL_INFO_REMOTE_ONLINE;
            }
            String str4 = str3;
            int i4 = i2 + 1;
            if (!capabilities.hasFeature(Capabilities.FEATURE_CHAT_CPM) && !capabilities.hasFeature(Capabilities.FEATURE_CHAT_SIMPLE_IM)) {
                z = false;
                int i5 = i3;
                matrixCursor.addRow(createImRow(i2, z, capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
                int i6 = i4 + 1;
                if (!capabilities.hasFeature(Capabilities.FEATURE_FT) && !capabilities.hasFeature(Capabilities.FEATURE_FT_STORE)) {
                    z2 = false;
                    matrixCursor.addRow(createFtRow(i4, z2, capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
                    int i7 = i6 + 1;
                    matrixCursor.addRow(createFtHttpRow(i6, capabilities.hasFeature(Capabilities.FEATURE_FT_HTTP), capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
                    int i8 = i7 + 1;
                    matrixCursor.addRow(createSlmRow(i7, capabilities.hasFeature(Capabilities.FEATURE_STANDALONE_MSG), capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
                    int i9 = i8 + 1;
                    matrixCursor.addRow(createGeolocationPushRow(i8, capabilities.hasFeature(Capabilities.FEATURE_GEOLOCATION_PUSH), capabilities.getUri().toString()));
                    int i10 = i9 + 1;
                    matrixCursor.addRow(createGeoPushViaSMSRow(i9, capabilities.hasFeature(Capabilities.FEATURE_GEO_VIA_SMS), capabilities.getUri().toString()));
                    int i11 = i10 + 1;
                    matrixCursor.addRow(createFtSfGroupChatRow(i10, capabilities.hasFeature(Capabilities.FEATURE_SF_GROUP_CHAT), capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
                    int i12 = i11 + 1;
                    matrixCursor.addRow(createIntegratedMessageRow(i11, capabilities.hasFeature(Capabilities.FEATURE_INTEGRATED_MSG), capabilities.getUri().toString()));
                    int i13 = i12 + 1;
                    matrixCursor.addRow(createPublicMsgRow(i12, capabilities.hasFeature(Capabilities.FEATURE_PUBLIC_MSG), capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
                    i2 = i13 + 1;
                    matrixCursor.addRow(createCancelMessageRow(i13, capabilities.hasFeature(Capabilities.FEATURE_CANCEL_MESSAGE), capabilities.getUri().toString()));
                    i3 = i5 + 1;
                    str3 = str4;
                    z3 = true;
                }
                z2 = true;
                matrixCursor.addRow(createFtRow(i4, z2, capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
                int i72 = i6 + 1;
                matrixCursor.addRow(createFtHttpRow(i6, capabilities.hasFeature(Capabilities.FEATURE_FT_HTTP), capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
                int i82 = i72 + 1;
                matrixCursor.addRow(createSlmRow(i72, capabilities.hasFeature(Capabilities.FEATURE_STANDALONE_MSG), capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
                int i92 = i82 + 1;
                matrixCursor.addRow(createGeolocationPushRow(i82, capabilities.hasFeature(Capabilities.FEATURE_GEOLOCATION_PUSH), capabilities.getUri().toString()));
                int i102 = i92 + 1;
                matrixCursor.addRow(createGeoPushViaSMSRow(i92, capabilities.hasFeature(Capabilities.FEATURE_GEO_VIA_SMS), capabilities.getUri().toString()));
                int i112 = i102 + 1;
                matrixCursor.addRow(createFtSfGroupChatRow(i102, capabilities.hasFeature(Capabilities.FEATURE_SF_GROUP_CHAT), capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
                int i122 = i112 + 1;
                matrixCursor.addRow(createIntegratedMessageRow(i112, capabilities.hasFeature(Capabilities.FEATURE_INTEGRATED_MSG), capabilities.getUri().toString()));
                int i132 = i122 + 1;
                matrixCursor.addRow(createPublicMsgRow(i122, capabilities.hasFeature(Capabilities.FEATURE_PUBLIC_MSG), capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
                i2 = i132 + 1;
                matrixCursor.addRow(createCancelMessageRow(i132, capabilities.hasFeature(Capabilities.FEATURE_CANCEL_MESSAGE), capabilities.getUri().toString()));
                i3 = i5 + 1;
                str3 = str4;
                z3 = true;
            }
            z = z3;
            int i52 = i3;
            matrixCursor.addRow(createImRow(i2, z, capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
            int i62 = i4 + 1;
            if (!capabilities.hasFeature(Capabilities.FEATURE_FT)) {
                z2 = false;
                matrixCursor.addRow(createFtRow(i4, z2, capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
                int i722 = i62 + 1;
                matrixCursor.addRow(createFtHttpRow(i62, capabilities.hasFeature(Capabilities.FEATURE_FT_HTTP), capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
                int i822 = i722 + 1;
                matrixCursor.addRow(createSlmRow(i722, capabilities.hasFeature(Capabilities.FEATURE_STANDALONE_MSG), capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
                int i922 = i822 + 1;
                matrixCursor.addRow(createGeolocationPushRow(i822, capabilities.hasFeature(Capabilities.FEATURE_GEOLOCATION_PUSH), capabilities.getUri().toString()));
                int i1022 = i922 + 1;
                matrixCursor.addRow(createGeoPushViaSMSRow(i922, capabilities.hasFeature(Capabilities.FEATURE_GEO_VIA_SMS), capabilities.getUri().toString()));
                int i1122 = i1022 + 1;
                matrixCursor.addRow(createFtSfGroupChatRow(i1022, capabilities.hasFeature(Capabilities.FEATURE_SF_GROUP_CHAT), capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
                int i1222 = i1122 + 1;
                matrixCursor.addRow(createIntegratedMessageRow(i1122, capabilities.hasFeature(Capabilities.FEATURE_INTEGRATED_MSG), capabilities.getUri().toString()));
                int i1322 = i1222 + 1;
                matrixCursor.addRow(createPublicMsgRow(i1222, capabilities.hasFeature(Capabilities.FEATURE_PUBLIC_MSG), capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
                i2 = i1322 + 1;
                matrixCursor.addRow(createCancelMessageRow(i1322, capabilities.hasFeature(Capabilities.FEATURE_CANCEL_MESSAGE), capabilities.getUri().toString()));
                i3 = i52 + 1;
                str3 = str4;
                z3 = true;
            }
            z2 = true;
            matrixCursor.addRow(createFtRow(i4, z2, capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
            int i7222 = i62 + 1;
            matrixCursor.addRow(createFtHttpRow(i62, capabilities.hasFeature(Capabilities.FEATURE_FT_HTTP), capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
            int i8222 = i7222 + 1;
            matrixCursor.addRow(createSlmRow(i7222, capabilities.hasFeature(Capabilities.FEATURE_STANDALONE_MSG), capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
            int i9222 = i8222 + 1;
            matrixCursor.addRow(createGeolocationPushRow(i8222, capabilities.hasFeature(Capabilities.FEATURE_GEOLOCATION_PUSH), capabilities.getUri().toString()));
            int i10222 = i9222 + 1;
            matrixCursor.addRow(createGeoPushViaSMSRow(i9222, capabilities.hasFeature(Capabilities.FEATURE_GEO_VIA_SMS), capabilities.getUri().toString()));
            int i11222 = i10222 + 1;
            matrixCursor.addRow(createFtSfGroupChatRow(i10222, capabilities.hasFeature(Capabilities.FEATURE_SF_GROUP_CHAT), capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
            int i12222 = i11222 + 1;
            matrixCursor.addRow(createIntegratedMessageRow(i11222, capabilities.hasFeature(Capabilities.FEATURE_INTEGRATED_MSG), capabilities.getUri().toString()));
            int i13222 = i12222 + 1;
            matrixCursor.addRow(createPublicMsgRow(i12222, capabilities.hasFeature(Capabilities.FEATURE_PUBLIC_MSG), capabilities.getUri().toString(), capabilities.getDisplayName(), str4, capabilities.getNumber()));
            i2 = i13222 + 1;
            matrixCursor.addRow(createCancelMessageRow(i13222, capabilities.hasFeature(Capabilities.FEATURE_CANCEL_MESSAGE), capabilities.getUri().toString()));
            i3 = i52 + 1;
            str3 = str4;
            z3 = true;
        }
        return matrixCursor;
    }

    Cursor querySipUri(String[] strArr, List<String> list, CapabilityRefreshType capabilityRefreshType, int i) {
        String str;
        boolean z;
        int i2;
        boolean z2;
        IMSLog.i(LOG_TAG, i, "querySipUri");
        MatrixCursor matrixCursor = new MatrixCursor(Projections.SERVICE_PROJECTION);
        boolean z3 = true;
        ArrayList<ImsUri> imsUriListFromQuery = getImsUriListFromQuery(list.get(list.size() - 1));
        if (imsUriListFromQuery == null || imsUriListFromQuery.isEmpty()) {
            IMSLog.e(LOG_TAG, i, "querySipUri: no valid uri to request");
            return matrixCursor;
        }
        try {
            Capabilities[] capabilitiesWithFeatureByUriList = this.mService.getCapabilitiesWithFeatureByUriList(imsUriListFromQuery, capabilityRefreshType.ordinal(), Capabilities.FEATURE_OFFLINE_RCS_USER, i);
            if (capabilitiesWithFeatureByUriList == null) {
                IMSLog.s(LOG_TAG, i, "querySipUri: Capabilities not found for " + imsUriListFromQuery);
                return matrixCursor;
            }
            int length = capabilitiesWithFeatureByUriList.length;
            int i3 = 0;
            while (i3 < length) {
                Capabilities capabilities = capabilitiesWithFeatureByUriList[i3];
                if (capabilities == null) {
                    i2 = i3;
                } else {
                    IMSLog.i(LOG_TAG, i, "querySipUri: return service info.");
                    if (capabilities.hasNoRcsFeatures()) {
                        str = null;
                    } else {
                        str = capabilities.isAvailable() ? capabilities.getExpired() ? "" : ADDITIONAL_INFO_REMOTE_ONLINE : ADDITIONAL_INFO_REMOTE_OFFLINE;
                    }
                    IMSLog.i(LOG_TAG, i, "querySipUri: RCS additionalInfo = " + str);
                    if (!capabilities.hasFeature(Capabilities.FEATURE_CHAT_CPM) && !capabilities.hasFeature(Capabilities.FEATURE_CHAT_SIMPLE_IM)) {
                        z = false;
                        String str2 = str;
                        i2 = i3;
                        matrixCursor.addRow(createImRow(0, z, capabilities.getUri().toString(), capabilities.getDisplayName(), str2, capabilities.getNumber()));
                        if (!capabilities.hasFeature(Capabilities.FEATURE_FT) && !capabilities.hasFeature(Capabilities.FEATURE_FT_STORE)) {
                            z2 = false;
                            matrixCursor.addRow(createFtRow(1, z2, capabilities.getUri().toString(), capabilities.getDisplayName(), null, capabilities.getNumber()));
                            matrixCursor.addRow(createFtHttpRow(2, capabilities.hasFeature(Capabilities.FEATURE_FT_HTTP), capabilities.getUri().toString(), capabilities.getDisplayName(), null, capabilities.getNumber()));
                            matrixCursor.addRow(createSlmRow(3, capabilities.hasFeature(Capabilities.FEATURE_STANDALONE_MSG), capabilities.getUri().toString(), capabilities.getDisplayName(), str2, capabilities.getNumber()));
                            matrixCursor.addRow(createGeolocationPushRow(4, capabilities.hasFeature(Capabilities.FEATURE_GEOLOCATION_PUSH), capabilities.getUri().toString()));
                            matrixCursor.addRow(createGeoPushViaSMSRow(5, capabilities.hasFeature(Capabilities.FEATURE_GEO_VIA_SMS), capabilities.getUri().toString()));
                            matrixCursor.addRow(createFtSfGroupChatRow(6, capabilities.hasFeature(Capabilities.FEATURE_SF_GROUP_CHAT), capabilities.getUri().toString(), capabilities.getDisplayName(), null, capabilities.getNumber()));
                            matrixCursor.addRow(createIntegratedMessageRow(7, capabilities.hasFeature(Capabilities.FEATURE_INTEGRATED_MSG), capabilities.getUri().toString()));
                            matrixCursor.addRow(createStickerRow(8, capabilities.hasFeature(Capabilities.FEATURE_STICKER), capabilities.getUri().toString(), capabilities.getDisplayName(), null, capabilities.getNumber()));
                            matrixCursor.addRow(createCallComposerRow(9, capabilities.hasFeature(Capabilities.FEATURE_ENRICHED_CALL_COMPOSER), capabilities.getUri().toString(), capabilities.getDisplayName(), str2, capabilities.getNumber()));
                            matrixCursor.addRow(createSharedMapRow(10, capabilities.hasFeature(Capabilities.FEATURE_ENRICHED_SHARED_MAP), capabilities.getUri().toString(), capabilities.getDisplayName(), str2, capabilities.getNumber()));
                            matrixCursor.addRow(createSharedSketchRow(11, capabilities.hasFeature(Capabilities.FEATURE_ENRICHED_SHARED_SKETCH), capabilities.getUri().toString(), capabilities.getDisplayName(), str2, capabilities.getNumber()));
                            matrixCursor.addRow(createPostCallRow(12, capabilities.hasFeature(Capabilities.FEATURE_ENRICHED_POST_CALL), capabilities.getUri().toString(), capabilities.getDisplayName(), str2, capabilities.getNumber()));
                            matrixCursor.addRow(createPublicMsgRow(13, capabilities.hasFeature(Capabilities.FEATURE_PUBLIC_MSG), capabilities.getUri().toString(), capabilities.getDisplayName(), null, capabilities.getNumber()));
                            matrixCursor.addRow(createCancelMessageRow(14, capabilities.hasFeature(Capabilities.FEATURE_CANCEL_MESSAGE), capabilities.getUri().toString()));
                        }
                        z2 = true;
                        matrixCursor.addRow(createFtRow(1, z2, capabilities.getUri().toString(), capabilities.getDisplayName(), null, capabilities.getNumber()));
                        matrixCursor.addRow(createFtHttpRow(2, capabilities.hasFeature(Capabilities.FEATURE_FT_HTTP), capabilities.getUri().toString(), capabilities.getDisplayName(), null, capabilities.getNumber()));
                        matrixCursor.addRow(createSlmRow(3, capabilities.hasFeature(Capabilities.FEATURE_STANDALONE_MSG), capabilities.getUri().toString(), capabilities.getDisplayName(), str2, capabilities.getNumber()));
                        matrixCursor.addRow(createGeolocationPushRow(4, capabilities.hasFeature(Capabilities.FEATURE_GEOLOCATION_PUSH), capabilities.getUri().toString()));
                        matrixCursor.addRow(createGeoPushViaSMSRow(5, capabilities.hasFeature(Capabilities.FEATURE_GEO_VIA_SMS), capabilities.getUri().toString()));
                        matrixCursor.addRow(createFtSfGroupChatRow(6, capabilities.hasFeature(Capabilities.FEATURE_SF_GROUP_CHAT), capabilities.getUri().toString(), capabilities.getDisplayName(), null, capabilities.getNumber()));
                        matrixCursor.addRow(createIntegratedMessageRow(7, capabilities.hasFeature(Capabilities.FEATURE_INTEGRATED_MSG), capabilities.getUri().toString()));
                        matrixCursor.addRow(createStickerRow(8, capabilities.hasFeature(Capabilities.FEATURE_STICKER), capabilities.getUri().toString(), capabilities.getDisplayName(), null, capabilities.getNumber()));
                        matrixCursor.addRow(createCallComposerRow(9, capabilities.hasFeature(Capabilities.FEATURE_ENRICHED_CALL_COMPOSER), capabilities.getUri().toString(), capabilities.getDisplayName(), str2, capabilities.getNumber()));
                        matrixCursor.addRow(createSharedMapRow(10, capabilities.hasFeature(Capabilities.FEATURE_ENRICHED_SHARED_MAP), capabilities.getUri().toString(), capabilities.getDisplayName(), str2, capabilities.getNumber()));
                        matrixCursor.addRow(createSharedSketchRow(11, capabilities.hasFeature(Capabilities.FEATURE_ENRICHED_SHARED_SKETCH), capabilities.getUri().toString(), capabilities.getDisplayName(), str2, capabilities.getNumber()));
                        matrixCursor.addRow(createPostCallRow(12, capabilities.hasFeature(Capabilities.FEATURE_ENRICHED_POST_CALL), capabilities.getUri().toString(), capabilities.getDisplayName(), str2, capabilities.getNumber()));
                        matrixCursor.addRow(createPublicMsgRow(13, capabilities.hasFeature(Capabilities.FEATURE_PUBLIC_MSG), capabilities.getUri().toString(), capabilities.getDisplayName(), null, capabilities.getNumber()));
                        matrixCursor.addRow(createCancelMessageRow(14, capabilities.hasFeature(Capabilities.FEATURE_CANCEL_MESSAGE), capabilities.getUri().toString()));
                    }
                    z = z3;
                    String str22 = str;
                    i2 = i3;
                    matrixCursor.addRow(createImRow(0, z, capabilities.getUri().toString(), capabilities.getDisplayName(), str22, capabilities.getNumber()));
                    if (!capabilities.hasFeature(Capabilities.FEATURE_FT)) {
                        z2 = false;
                        matrixCursor.addRow(createFtRow(1, z2, capabilities.getUri().toString(), capabilities.getDisplayName(), null, capabilities.getNumber()));
                        matrixCursor.addRow(createFtHttpRow(2, capabilities.hasFeature(Capabilities.FEATURE_FT_HTTP), capabilities.getUri().toString(), capabilities.getDisplayName(), null, capabilities.getNumber()));
                        matrixCursor.addRow(createSlmRow(3, capabilities.hasFeature(Capabilities.FEATURE_STANDALONE_MSG), capabilities.getUri().toString(), capabilities.getDisplayName(), str22, capabilities.getNumber()));
                        matrixCursor.addRow(createGeolocationPushRow(4, capabilities.hasFeature(Capabilities.FEATURE_GEOLOCATION_PUSH), capabilities.getUri().toString()));
                        matrixCursor.addRow(createGeoPushViaSMSRow(5, capabilities.hasFeature(Capabilities.FEATURE_GEO_VIA_SMS), capabilities.getUri().toString()));
                        matrixCursor.addRow(createFtSfGroupChatRow(6, capabilities.hasFeature(Capabilities.FEATURE_SF_GROUP_CHAT), capabilities.getUri().toString(), capabilities.getDisplayName(), null, capabilities.getNumber()));
                        matrixCursor.addRow(createIntegratedMessageRow(7, capabilities.hasFeature(Capabilities.FEATURE_INTEGRATED_MSG), capabilities.getUri().toString()));
                        matrixCursor.addRow(createStickerRow(8, capabilities.hasFeature(Capabilities.FEATURE_STICKER), capabilities.getUri().toString(), capabilities.getDisplayName(), null, capabilities.getNumber()));
                        matrixCursor.addRow(createCallComposerRow(9, capabilities.hasFeature(Capabilities.FEATURE_ENRICHED_CALL_COMPOSER), capabilities.getUri().toString(), capabilities.getDisplayName(), str22, capabilities.getNumber()));
                        matrixCursor.addRow(createSharedMapRow(10, capabilities.hasFeature(Capabilities.FEATURE_ENRICHED_SHARED_MAP), capabilities.getUri().toString(), capabilities.getDisplayName(), str22, capabilities.getNumber()));
                        matrixCursor.addRow(createSharedSketchRow(11, capabilities.hasFeature(Capabilities.FEATURE_ENRICHED_SHARED_SKETCH), capabilities.getUri().toString(), capabilities.getDisplayName(), str22, capabilities.getNumber()));
                        matrixCursor.addRow(createPostCallRow(12, capabilities.hasFeature(Capabilities.FEATURE_ENRICHED_POST_CALL), capabilities.getUri().toString(), capabilities.getDisplayName(), str22, capabilities.getNumber()));
                        matrixCursor.addRow(createPublicMsgRow(13, capabilities.hasFeature(Capabilities.FEATURE_PUBLIC_MSG), capabilities.getUri().toString(), capabilities.getDisplayName(), null, capabilities.getNumber()));
                        matrixCursor.addRow(createCancelMessageRow(14, capabilities.hasFeature(Capabilities.FEATURE_CANCEL_MESSAGE), capabilities.getUri().toString()));
                    }
                    z2 = true;
                    matrixCursor.addRow(createFtRow(1, z2, capabilities.getUri().toString(), capabilities.getDisplayName(), null, capabilities.getNumber()));
                    matrixCursor.addRow(createFtHttpRow(2, capabilities.hasFeature(Capabilities.FEATURE_FT_HTTP), capabilities.getUri().toString(), capabilities.getDisplayName(), null, capabilities.getNumber()));
                    matrixCursor.addRow(createSlmRow(3, capabilities.hasFeature(Capabilities.FEATURE_STANDALONE_MSG), capabilities.getUri().toString(), capabilities.getDisplayName(), str22, capabilities.getNumber()));
                    matrixCursor.addRow(createGeolocationPushRow(4, capabilities.hasFeature(Capabilities.FEATURE_GEOLOCATION_PUSH), capabilities.getUri().toString()));
                    matrixCursor.addRow(createGeoPushViaSMSRow(5, capabilities.hasFeature(Capabilities.FEATURE_GEO_VIA_SMS), capabilities.getUri().toString()));
                    matrixCursor.addRow(createFtSfGroupChatRow(6, capabilities.hasFeature(Capabilities.FEATURE_SF_GROUP_CHAT), capabilities.getUri().toString(), capabilities.getDisplayName(), null, capabilities.getNumber()));
                    matrixCursor.addRow(createIntegratedMessageRow(7, capabilities.hasFeature(Capabilities.FEATURE_INTEGRATED_MSG), capabilities.getUri().toString()));
                    matrixCursor.addRow(createStickerRow(8, capabilities.hasFeature(Capabilities.FEATURE_STICKER), capabilities.getUri().toString(), capabilities.getDisplayName(), null, capabilities.getNumber()));
                    matrixCursor.addRow(createCallComposerRow(9, capabilities.hasFeature(Capabilities.FEATURE_ENRICHED_CALL_COMPOSER), capabilities.getUri().toString(), capabilities.getDisplayName(), str22, capabilities.getNumber()));
                    matrixCursor.addRow(createSharedMapRow(10, capabilities.hasFeature(Capabilities.FEATURE_ENRICHED_SHARED_MAP), capabilities.getUri().toString(), capabilities.getDisplayName(), str22, capabilities.getNumber()));
                    matrixCursor.addRow(createSharedSketchRow(11, capabilities.hasFeature(Capabilities.FEATURE_ENRICHED_SHARED_SKETCH), capabilities.getUri().toString(), capabilities.getDisplayName(), str22, capabilities.getNumber()));
                    matrixCursor.addRow(createPostCallRow(12, capabilities.hasFeature(Capabilities.FEATURE_ENRICHED_POST_CALL), capabilities.getUri().toString(), capabilities.getDisplayName(), str22, capabilities.getNumber()));
                    matrixCursor.addRow(createPublicMsgRow(13, capabilities.hasFeature(Capabilities.FEATURE_PUBLIC_MSG), capabilities.getUri().toString(), capabilities.getDisplayName(), null, capabilities.getNumber()));
                    matrixCursor.addRow(createCancelMessageRow(14, capabilities.hasFeature(Capabilities.FEATURE_CANCEL_MESSAGE), capabilities.getUri().toString()));
                }
                i3 = i2 + 1;
                z3 = true;
            }
            return matrixCursor;
        } catch (RemoteException e) {
            e.printStackTrace();
            matrixCursor.close();
            return null;
        }
    }

    Cursor queryIncallService(List<String> list, CapabilityRefreshType capabilityRefreshType, int i) {
        ImsUri normalizedUri;
        Capabilities capabilities;
        IMSLog.i(LOG_TAG, i, "queryIncallService");
        String decode = Uri.decode(list.get(list.size() - 1));
        MatrixCursor matrixCursor = new MatrixCursor(Projections.INCALL_PROJECTION);
        try {
            normalizedUri = UriGeneratorFactory.getInstance().get(UriGenerator.URIServiceType.RCS_URI).getNormalizedUri(decode, true);
            capabilities = this.mService.getCapabilities(normalizedUri, capabilityRefreshType.ordinal(), i);
            if (capabilityRefreshType.equals(CapabilityRefreshType.ALWAYS_FORCE_REFRESH)) {
                waitForUpdate(normalizedUri);
                capabilities = getAsyncCapexResult(normalizedUri);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        if (capabilities == null) {
            IMSLog.s(LOG_TAG, i, "queryIncallService: Capabilities not found for " + decode);
            this.mLastInCallUri = normalizedUri;
            return matrixCursor;
        }
        this.mLastInCallUri = capabilities.getUri();
        if (!capabilities.hasFeature(Capabilities.FEATURE_ISH) && !capabilities.hasFeature(Capabilities.FEATURE_VSH)) {
            IMSLog.s(LOG_TAG, i, "queryIncallService: No hasFeature for ish, vsh " + decode);
            return matrixCursor;
        }
        Capabilities ownCapabilities = this.mService.getOwnCapabilities(i);
        if (ownCapabilities == null) {
            IMSLog.i(LOG_TAG, i, "queryIncallService: own capex is null");
            return matrixCursor;
        }
        if (!ownCapabilities.isAvailable()) {
            IMSLog.i(LOG_TAG, i, "queryIncallService: own capex is not available");
            return matrixCursor;
        }
        if (!ownCapabilities.hasFeature(Capabilities.FEATURE_ISH) && !ownCapabilities.hasFeature(Capabilities.FEATURE_VSH)) {
            IMSLog.i(LOG_TAG, i, "queryIncallService: No hasFeature for ish, vsh in own capex");
            return matrixCursor;
        }
        IMSLog.i(LOG_TAG, i, "queryIncallService: ready_ish = " + ready_ish + ", ready_vsh = " + ready_vsh);
        if (this.mDataNetworkType == 3 && !ImsUtil.isWifiConnected(this.mContext)) {
            ready_vsh = false;
        }
        boolean z = ready_ish && capabilities.hasFeature(Capabilities.FEATURE_ISH) && ownCapabilities.hasFeature(Capabilities.FEATURE_ISH);
        boolean z2 = ready_vsh && capabilities.hasFeature(Capabilities.FEATURE_VSH) && ownCapabilities.hasFeature(Capabilities.FEATURE_VSH);
        IMSLog.i(LOG_TAG, i, "queryIncallService: hasfeature_ish = " + z);
        IMSLog.i(LOG_TAG, i, "queryIncallService: hasfeature_vsh = " + z2);
        String imsUri = capabilities.getUri().toString();
        matrixCursor.addRow(createShareVideoRow(0, z2, imsUri));
        matrixCursor.addRow(createImageFileShareRow(1, z, imsUri));
        matrixCursor.addRow(createImageCameraShareRow(2, z, imsUri));
        return matrixCursor;
    }

    Cursor queryOwnCaps(int i) {
        Capabilities ownCapabilities;
        boolean z;
        boolean z2;
        IMSLog.i(LOG_TAG, i, "queryOwnCaps");
        MatrixCursor matrixCursor = new MatrixCursor(Projections.SERVICE_PROJECTION);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                ownCapabilities = this.mService.getOwnCapabilities(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            if (ownCapabilities == null) {
                return matrixCursor;
            }
            String imsUri = ownCapabilities.getUri() != null ? ownCapabilities.getUri().toString() : "";
            String str = ownCapabilities.isAvailable() ? "" : ADDITIONAL_INFO_LOCAL_OFFLINE;
            IMSLog.i(LOG_TAG, i, "queryOwnCaps: RCS additionalInfo = " + str);
            if (!ownCapabilities.hasFeature(Capabilities.FEATURE_CHAT_CPM) && !ownCapabilities.hasFeature(Capabilities.FEATURE_CHAT_SIMPLE_IM)) {
                z = false;
                matrixCursor.addRow(createImRow(0, z, imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                if (!ownCapabilities.hasFeature(Capabilities.FEATURE_FT) && !ownCapabilities.hasFeature(Capabilities.FEATURE_FT_STORE)) {
                    z2 = false;
                    matrixCursor.addRow(createFtRow(1, z2, imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                    matrixCursor.addRow(createFtHttpRow(2, ownCapabilities.hasFeature(Capabilities.FEATURE_FT_HTTP), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                    matrixCursor.addRow(createFtInGroupChatRow(3, ownCapabilities.hasFeature(Capabilities.FEATURE_FT_HTTP), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                    matrixCursor.addRow(createSlmRow(4, ownCapabilities.hasFeature(Capabilities.FEATURE_STANDALONE_MSG), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                    matrixCursor.addRow(createGeolocationPushRow(5, ownCapabilities.hasFeature(Capabilities.FEATURE_GEOLOCATION_PUSH), imsUri));
                    matrixCursor.addRow(createGeoPushViaSMSRow(6, ownCapabilities.hasFeature(Capabilities.FEATURE_GEO_VIA_SMS), imsUri));
                    matrixCursor.addRow(createChatbotChatSessionRow(7, ownCapabilities.hasFeature(Capabilities.FEATURE_CHATBOT_CHAT_SESSION), imsUri));
                    matrixCursor.addRow(createChatbotSlmRow(8, ownCapabilities.hasFeature(Capabilities.FEATURE_CHATBOT_STANDALONE_MSG), imsUri));
                    matrixCursor.addRow(createExtendedbotRow(9, ownCapabilities.hasFeature(Capabilities.FEATURE_CHATBOT_EXTENDED_MSG), imsUri));
                    matrixCursor.addRow(createFtSfGroupChatRow(10, ownCapabilities.hasFeature(Capabilities.FEATURE_SF_GROUP_CHAT), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                    matrixCursor.addRow(createIntegratedMessageRow(11, ownCapabilities.hasFeature(Capabilities.FEATURE_INTEGRATED_MSG), imsUri));
                    matrixCursor.addRow(createCallComposerRow(12, ownCapabilities.hasFeature(Capabilities.FEATURE_ENRICHED_CALL_COMPOSER), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                    matrixCursor.addRow(createSharedMapRow(13, ownCapabilities.hasFeature(Capabilities.FEATURE_ENRICHED_SHARED_MAP), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                    matrixCursor.addRow(createSharedSketchRow(14, ownCapabilities.hasFeature(Capabilities.FEATURE_ENRICHED_SHARED_SKETCH), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                    matrixCursor.addRow(createPostCallRow(15, ownCapabilities.hasFeature(Capabilities.FEATURE_ENRICHED_POST_CALL), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                    matrixCursor.addRow(createStickerRow(16, ownCapabilities.hasFeature(Capabilities.FEATURE_STICKER), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                    matrixCursor.addRow(createPublicMsgRow(17, ownCapabilities.hasFeature(Capabilities.FEATURE_PUBLIC_MSG), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                    matrixCursor.addRow(createCancelMessageRow(18, ownCapabilities.hasFeature(Capabilities.FEATURE_CANCEL_MESSAGE), imsUri));
                    matrixCursor.addRow(createPlugInRow(19, ownCapabilities.hasFeature(Capabilities.FEATURE_PLUG_IN), imsUri));
                    return matrixCursor;
                }
                z2 = true;
                matrixCursor.addRow(createFtRow(1, z2, imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createFtHttpRow(2, ownCapabilities.hasFeature(Capabilities.FEATURE_FT_HTTP), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createFtInGroupChatRow(3, ownCapabilities.hasFeature(Capabilities.FEATURE_FT_HTTP), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createSlmRow(4, ownCapabilities.hasFeature(Capabilities.FEATURE_STANDALONE_MSG), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createGeolocationPushRow(5, ownCapabilities.hasFeature(Capabilities.FEATURE_GEOLOCATION_PUSH), imsUri));
                matrixCursor.addRow(createGeoPushViaSMSRow(6, ownCapabilities.hasFeature(Capabilities.FEATURE_GEO_VIA_SMS), imsUri));
                matrixCursor.addRow(createChatbotChatSessionRow(7, ownCapabilities.hasFeature(Capabilities.FEATURE_CHATBOT_CHAT_SESSION), imsUri));
                matrixCursor.addRow(createChatbotSlmRow(8, ownCapabilities.hasFeature(Capabilities.FEATURE_CHATBOT_STANDALONE_MSG), imsUri));
                matrixCursor.addRow(createExtendedbotRow(9, ownCapabilities.hasFeature(Capabilities.FEATURE_CHATBOT_EXTENDED_MSG), imsUri));
                matrixCursor.addRow(createFtSfGroupChatRow(10, ownCapabilities.hasFeature(Capabilities.FEATURE_SF_GROUP_CHAT), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createIntegratedMessageRow(11, ownCapabilities.hasFeature(Capabilities.FEATURE_INTEGRATED_MSG), imsUri));
                matrixCursor.addRow(createCallComposerRow(12, ownCapabilities.hasFeature(Capabilities.FEATURE_ENRICHED_CALL_COMPOSER), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createSharedMapRow(13, ownCapabilities.hasFeature(Capabilities.FEATURE_ENRICHED_SHARED_MAP), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createSharedSketchRow(14, ownCapabilities.hasFeature(Capabilities.FEATURE_ENRICHED_SHARED_SKETCH), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createPostCallRow(15, ownCapabilities.hasFeature(Capabilities.FEATURE_ENRICHED_POST_CALL), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createStickerRow(16, ownCapabilities.hasFeature(Capabilities.FEATURE_STICKER), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createPublicMsgRow(17, ownCapabilities.hasFeature(Capabilities.FEATURE_PUBLIC_MSG), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createCancelMessageRow(18, ownCapabilities.hasFeature(Capabilities.FEATURE_CANCEL_MESSAGE), imsUri));
                matrixCursor.addRow(createPlugInRow(19, ownCapabilities.hasFeature(Capabilities.FEATURE_PLUG_IN), imsUri));
                return matrixCursor;
            }
            z = true;
            matrixCursor.addRow(createImRow(0, z, imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
            if (!ownCapabilities.hasFeature(Capabilities.FEATURE_FT)) {
                z2 = false;
                matrixCursor.addRow(createFtRow(1, z2, imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createFtHttpRow(2, ownCapabilities.hasFeature(Capabilities.FEATURE_FT_HTTP), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createFtInGroupChatRow(3, ownCapabilities.hasFeature(Capabilities.FEATURE_FT_HTTP), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createSlmRow(4, ownCapabilities.hasFeature(Capabilities.FEATURE_STANDALONE_MSG), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createGeolocationPushRow(5, ownCapabilities.hasFeature(Capabilities.FEATURE_GEOLOCATION_PUSH), imsUri));
                matrixCursor.addRow(createGeoPushViaSMSRow(6, ownCapabilities.hasFeature(Capabilities.FEATURE_GEO_VIA_SMS), imsUri));
                matrixCursor.addRow(createChatbotChatSessionRow(7, ownCapabilities.hasFeature(Capabilities.FEATURE_CHATBOT_CHAT_SESSION), imsUri));
                matrixCursor.addRow(createChatbotSlmRow(8, ownCapabilities.hasFeature(Capabilities.FEATURE_CHATBOT_STANDALONE_MSG), imsUri));
                matrixCursor.addRow(createExtendedbotRow(9, ownCapabilities.hasFeature(Capabilities.FEATURE_CHATBOT_EXTENDED_MSG), imsUri));
                matrixCursor.addRow(createFtSfGroupChatRow(10, ownCapabilities.hasFeature(Capabilities.FEATURE_SF_GROUP_CHAT), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createIntegratedMessageRow(11, ownCapabilities.hasFeature(Capabilities.FEATURE_INTEGRATED_MSG), imsUri));
                matrixCursor.addRow(createCallComposerRow(12, ownCapabilities.hasFeature(Capabilities.FEATURE_ENRICHED_CALL_COMPOSER), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createSharedMapRow(13, ownCapabilities.hasFeature(Capabilities.FEATURE_ENRICHED_SHARED_MAP), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createSharedSketchRow(14, ownCapabilities.hasFeature(Capabilities.FEATURE_ENRICHED_SHARED_SKETCH), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createPostCallRow(15, ownCapabilities.hasFeature(Capabilities.FEATURE_ENRICHED_POST_CALL), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createStickerRow(16, ownCapabilities.hasFeature(Capabilities.FEATURE_STICKER), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createPublicMsgRow(17, ownCapabilities.hasFeature(Capabilities.FEATURE_PUBLIC_MSG), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
                matrixCursor.addRow(createCancelMessageRow(18, ownCapabilities.hasFeature(Capabilities.FEATURE_CANCEL_MESSAGE), imsUri));
                matrixCursor.addRow(createPlugInRow(19, ownCapabilities.hasFeature(Capabilities.FEATURE_PLUG_IN), imsUri));
                return matrixCursor;
            }
            z2 = true;
            matrixCursor.addRow(createFtRow(1, z2, imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
            matrixCursor.addRow(createFtHttpRow(2, ownCapabilities.hasFeature(Capabilities.FEATURE_FT_HTTP), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
            matrixCursor.addRow(createFtInGroupChatRow(3, ownCapabilities.hasFeature(Capabilities.FEATURE_FT_HTTP), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
            matrixCursor.addRow(createSlmRow(4, ownCapabilities.hasFeature(Capabilities.FEATURE_STANDALONE_MSG), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
            matrixCursor.addRow(createGeolocationPushRow(5, ownCapabilities.hasFeature(Capabilities.FEATURE_GEOLOCATION_PUSH), imsUri));
            matrixCursor.addRow(createGeoPushViaSMSRow(6, ownCapabilities.hasFeature(Capabilities.FEATURE_GEO_VIA_SMS), imsUri));
            matrixCursor.addRow(createChatbotChatSessionRow(7, ownCapabilities.hasFeature(Capabilities.FEATURE_CHATBOT_CHAT_SESSION), imsUri));
            matrixCursor.addRow(createChatbotSlmRow(8, ownCapabilities.hasFeature(Capabilities.FEATURE_CHATBOT_STANDALONE_MSG), imsUri));
            matrixCursor.addRow(createExtendedbotRow(9, ownCapabilities.hasFeature(Capabilities.FEATURE_CHATBOT_EXTENDED_MSG), imsUri));
            matrixCursor.addRow(createFtSfGroupChatRow(10, ownCapabilities.hasFeature(Capabilities.FEATURE_SF_GROUP_CHAT), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
            matrixCursor.addRow(createIntegratedMessageRow(11, ownCapabilities.hasFeature(Capabilities.FEATURE_INTEGRATED_MSG), imsUri));
            matrixCursor.addRow(createCallComposerRow(12, ownCapabilities.hasFeature(Capabilities.FEATURE_ENRICHED_CALL_COMPOSER), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
            matrixCursor.addRow(createSharedMapRow(13, ownCapabilities.hasFeature(Capabilities.FEATURE_ENRICHED_SHARED_MAP), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
            matrixCursor.addRow(createSharedSketchRow(14, ownCapabilities.hasFeature(Capabilities.FEATURE_ENRICHED_SHARED_SKETCH), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
            matrixCursor.addRow(createPostCallRow(15, ownCapabilities.hasFeature(Capabilities.FEATURE_ENRICHED_POST_CALL), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
            matrixCursor.addRow(createStickerRow(16, ownCapabilities.hasFeature(Capabilities.FEATURE_STICKER), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
            matrixCursor.addRow(createPublicMsgRow(17, ownCapabilities.hasFeature(Capabilities.FEATURE_PUBLIC_MSG), imsUri, ownCapabilities.getDisplayName(), str, ownCapabilities.getNumber()));
            matrixCursor.addRow(createCancelMessageRow(18, ownCapabilities.hasFeature(Capabilities.FEATURE_CANCEL_MESSAGE), imsUri));
            matrixCursor.addRow(createPlugInRow(19, ownCapabilities.hasFeature(Capabilities.FEATURE_PLUG_IN), imsUri));
            return matrixCursor;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    Cursor queryRcsEnabledStatic(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        List<ImsProfile> profileList;
        boolean enableRcs;
        IMSLog.i(LOG_TAG, i, "queryRcsEnabledStatic");
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{ImsConstants.CscParserConstants.ENABLE_RCS, ImsConstants.CscParserConstants.ENABLE_RCS_CHAT_SERVICE});
        boolean isSimMobilityFeatureEnabled = SimUtil.isSimMobilityFeatureEnabled();
        String str = CloudMessageProviderContract.JsonData.TRUE;
        if (isSimMobilityFeatureEnabled) {
            if (ImsUtil.isSimMobilityActivatedForAmRcs(this.mContext, i)) {
                z3 = true;
            } else {
                if (ImsUtil.isSimMobilityActivatedForRcs(i) && (profileList = ImsProfileLoaderInternal.getProfileList(this.mContext, i)) != null && profileList.size() > 0) {
                    for (ImsProfile imsProfile : profileList) {
                        if (imsProfile != null && imsProfile.getEnableRcs()) {
                            z3 = imsProfile.getEnableRcsChat();
                            enableRcs = imsProfile.getEnableRcs();
                            break;
                        }
                    }
                }
                z3 = false;
            }
            enableRcs = z3;
            IMSLog.i(LOG_TAG, i, "queryRcsEnabledStatic: SimMobility, isEnableRcs = " + enableRcs + ", isEnableRcsChat = " + z3);
            String[] strArr = new String[2];
            strArr[0] = enableRcs ? CloudMessageProviderContract.JsonData.TRUE : ConfigConstants.VALUE.INFO_COMPLETED;
            if (!z3) {
                str = ConfigConstants.VALUE.INFO_COMPLETED;
            }
            strArr[1] = str;
            matrixCursor.addRow(strArr);
            return matrixCursor;
        }
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        ContentValues cscImsSetting = CscParser.getCscImsSetting(simManagerFromSimSlot != null ? simManagerFromSimSlot.getNetworkNames() : null, i);
        if (cscImsSetting != null && cscImsSetting.size() > 0) {
            z2 = CollectionUtils.getBooleanValue(cscImsSetting, ImsConstants.CscParserConstants.ENABLE_RCS, false);
            z = CollectionUtils.getBooleanValue(cscImsSetting, ImsConstants.CscParserConstants.ENABLE_RCS_CHAT_SERVICE, false);
            IMSLog.i(LOG_TAG, i, "queryRcsEnabledStatic: Customer, isEnableRcs = " + z2 + ", isEnableRcsChat = " + z);
        } else {
            IMSLog.i(LOG_TAG, i, "queryRcsEnabledStatic: cscSettings is null, isEnableRcs = false, isEnableRcsChat = false");
            z = false;
            z2 = false;
        }
        String[] strArr2 = new String[2];
        strArr2[0] = z2 ? CloudMessageProviderContract.JsonData.TRUE : ConfigConstants.VALUE.INFO_COMPLETED;
        if (!z) {
            str = ConfigConstants.VALUE.INFO_COMPLETED;
        }
        strArr2[1] = str;
        matrixCursor.addRow(strArr2);
        return matrixCursor;
    }

    Cursor queryOperatorRcsVersion(int i) {
        IMSLog.i(LOG_TAG, i, "queryOperatorRcsVersion");
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"OperatorRcsVersion"});
        matrixCursor.addRow(new String[]{ImsRegistry.getString(i, GlobalSettingsConstants.RCS.RCS_PHASE_VERSION, "")});
        return matrixCursor;
    }

    Cursor queryRcsBigData(List<String> list, int i) {
        Capabilities capabilities;
        String str;
        IMSLog.i(LOG_TAG, i, "queryRcsBigData");
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"RemoteRcsStatus", "RemoteLegacyLatching", "PhoneNumber"});
        String decode = Uri.decode(list.get(list.size() - 1));
        try {
            capabilities = this.mService.getCapabilities(UriGeneratorFactory.getInstance().get(UriGenerator.URIServiceType.RCS_URI).getNormalizedUri(decode, true), CapabilityRefreshType.DISABLED.ordinal(), i);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        if (capabilities == null) {
            IMSLog.s(LOG_TAG, "queryRcsBigData: Capabilities not found for " + decode);
            return matrixCursor;
        }
        if (capabilities.hasNoRcsFeatures()) {
            str = null;
        } else {
            long availableFeatures = capabilities.getAvailableFeatures();
            str = (availableFeatures > ((long) Capabilities.FEATURE_OFFLINE_RCS_USER) ? 1 : (availableFeatures == ((long) Capabilities.FEATURE_OFFLINE_RCS_USER) ? 0 : -1)) != 0 && (availableFeatures > ((long) Capabilities.FEATURE_NON_RCS_USER) ? 1 : (availableFeatures == ((long) Capabilities.FEATURE_NON_RCS_USER) ? 0 : -1)) != 0 && (availableFeatures > ((long) Capabilities.FEATURE_NOT_UPDATED) ? 1 : (availableFeatures == ((long) Capabilities.FEATURE_NOT_UPDATED) ? 0 : -1)) != 0 ? ADDITIONAL_INFO_REMOTE_ONLINE : ADDITIONAL_INFO_REMOTE_OFFLINE;
        }
        boolean legacyLatching = capabilities.getLegacyLatching();
        IMSLog.s(LOG_TAG, i, "queryRcsBigData: remoteRcsStatus = " + str + ", remoteLegacyLatching = " + legacyLatching + ", phoneNumber = " + decode);
        String[] strArr = new String[3];
        strArr[0] = str;
        strArr[1] = legacyLatching ? CloudMessageProviderContract.JsonData.TRUE : ConfigConstants.VALUE.INFO_COMPLETED;
        strArr[2] = decode;
        matrixCursor.addRow(strArr);
        return matrixCursor;
    }

    ArrayList<ImsUri> getImsUriListFromQuery(String str) {
        if (str == null) {
            Log.e(LOG_TAG, "getImsUriListFromQuery: null uris");
            return null;
        }
        ArrayList<ImsUri> arrayList = new ArrayList<>();
        String[] split = str.split("\\s*,\\s*");
        if (split != null) {
            for (String str2 : split) {
                ImsUri parse = ImsUri.parse(str2);
                if (parse != null && parse.toString().length() != 0) {
                    arrayList.add(parse);
                }
            }
        }
        return arrayList;
    }

    CapabilityRefreshType getRequeryStrategyId(String str) {
        if ("disable_requery".equals(str)) {
            return CapabilityRefreshType.DISABLED;
        }
        if ("force_requery".equals(str)) {
            return CapabilityRefreshType.ALWAYS_FORCE_REFRESH;
        }
        if ("force_requery_uce".equals(str)) {
            return CapabilityRefreshType.FORCE_REFRESH_UCE;
        }
        if ("force_requery_sync".equals(str)) {
            return CapabilityRefreshType.FORCE_REFRESH_SYNC;
        }
        if ("msg_conditional_requery".equals(str)) {
            return CapabilityRefreshType.ONLY_IF_NOT_FRESH_IN_MSG_CTX;
        }
        return CapabilityRefreshType.ONLY_IF_NOT_FRESH;
    }

    private Object[] createImRow(int i, boolean z, String str, String str2, String str3, String str4) {
        return new Object[]{Integer.valueOf(i), Capabilities.FEATURE_TAG_CHAT, Integer.valueOf(z ? 1 : 0), Intents.VIEW_CHAT_INTENT_NAME, Intents.INTENT_CATEGORY, str, str2, str3, str4};
    }

    private Object[] createFtRow(int i, boolean z, String str, String str2, String str3, String str4) {
        return new Object[]{Integer.valueOf(i), Capabilities.FEATURE_TAG_FT, Integer.valueOf(z ? 1 : 0), Intents.FILE_TRANSFER_INTENT_NAME, Intents.INTENT_CATEGORY, str, str2, str3, str4};
    }

    private Object[] createFtHttpRow(int i, boolean z, String str, String str2, String str3, String str4) {
        return new Object[]{Integer.valueOf(i), Capabilities.FEATURE_TAG_FT_HTTP, Integer.valueOf(z ? 1 : 0), Intents.FILE_TRANSFER_INTENT_NAME, Intents.INTENT_CATEGORY, str, str2, str3, str4};
    }

    private Object[] createFtInGroupChatRow(int i, boolean z, String str, String str2, String str3, String str4) {
        return new Object[]{Integer.valueOf(i), "ft-in-group-chat", Integer.valueOf(z ? 1 : 0), Intents.FILE_TRANSFER_INTENT_NAME, Intents.INTENT_CATEGORY, str, str2, str3, str4};
    }

    private Object[] createFtSfGroupChatRow(int i, boolean z, String str, String str2, String str3, String str4) {
        return new Object[]{Integer.valueOf(i), Capabilities.FEATURE_TAG_SF_GROUP_CHAT, Integer.valueOf(z ? 1 : 0), Intents.FILE_TRANSFER_INTENT_NAME, Intents.INTENT_CATEGORY, str, str2, str3, str4};
    }

    private Object[] createSlmRow(int i, boolean z, String str, String str2, String str3, String str4) {
        return new Object[]{Integer.valueOf(i), Capabilities.FEATURE_TAG_STANDALONE_MSG, Integer.valueOf(z ? 1 : 0), Intents.VIEW_CHAT_INTENT_NAME, Intents.INTENT_CATEGORY, str, str2, str3, str4};
    }

    private Object[] createGeolocationPushRow(int i, boolean z, String str) {
        return new Object[]{Integer.valueOf(i), Capabilities.FEATURE_TAG_GEOLOCATION_PUSH, Integer.valueOf(z ? 1 : 0), null, null, str, null, null, null};
    }

    private Object[] createGeoPushViaSMSRow(int i, boolean z, String str) {
        return new Object[]{Integer.valueOf(i), Integer.valueOf(Capabilities.FEATURE_GEO_VIA_SMS), Integer.valueOf(z ? 1 : 0), null, null, str, null, null, null};
    }

    private Object[] createCancelMessageRow(int i, boolean z, String str) {
        return new Object[]{Integer.valueOf(i), Capabilities.FEATURE_TAG_CANCEL_MESSAGE, Integer.valueOf(z ? 1 : 0), null, null, str, null, null, null};
    }

    private Object[] createIntegratedMessageRow(int i, boolean z, String str) {
        return new Object[]{Integer.valueOf(i), Capabilities.FEATURE_TAG_INTEGRATED_MSG, Integer.valueOf(z ? 1 : 0), null, null, str, null, null, null};
    }

    private Object[] createStickerRow(int i, boolean z, String str, String str2, String str3, String str4) {
        return new Object[]{Integer.valueOf(i), Capabilities.FEATURE_TAG_STICKER, Integer.valueOf(z ? 1 : 0), Intents.VIEW_CHAT_INTENT_NAME, Intents.INTENT_CATEGORY, str, str2, str3, str4};
    }

    private Object[] createPublicMsgRow(int i, boolean z, String str, String str2, String str3, String str4) {
        return new Object[]{Integer.valueOf(i), Capabilities.FEATURE_TAG_PUBLIC_MSG, Integer.valueOf(z ? 1 : 0), Intents.VIEW_CHAT_INTENT_NAME, Intents.INTENT_CATEGORY, str, str2, str3, str4};
    }

    private Object[] createShareVideoRow(int i, boolean z, String str) {
        return new Object[]{Integer.valueOf(i), Capabilities.FEATURE_TAG_VSH, Integer.valueOf(z ? 1 : 0), Intents.LIVE_VIDEO_SHARE_INTENT_NAME, Intents.INTENT_CATEGORY, str, "Live video"};
    }

    private Object[] createImageFileShareRow(int i, boolean z, String str) {
        return new Object[]{Integer.valueOf(i), Capabilities.FEATURE_TAG_ISH, Integer.valueOf(z ? 1 : 0), Intents.IMAGE_FILE_SHARE_INTENT_NAME, Intents.INTENT_CATEGORY, str, "Picture"};
    }

    private Object[] createImageCameraShareRow(int i, boolean z, String str) {
        return new Object[]{Integer.valueOf(i), Capabilities.FEATURE_TAG_ISH, Integer.valueOf(z ? 1 : 0), Intents.IMAGE_CAMERA_SHARE_INTENT_NAME, Intents.INTENT_CATEGORY, str, "Take a picture"};
    }

    private Object[] createCallComposerRow(int i, boolean z, String str, String str2, String str3, String str4) {
        Log.i(LOG_TAG, "has call composer feature: " + z);
        return new Object[]{Integer.valueOf(i), SipMsg.FEATURE_TAG_ENRICHED_CALL_COMPOSER, Integer.valueOf(z ? 1 : 0), null, null, str, str2, str3, str4};
    }

    private Object[] createSharedMapRow(int i, boolean z, String str, String str2, String str3, String str4) {
        Log.i(LOG_TAG, "has shared map feature: " + z);
        return new Object[]{Integer.valueOf(i), SipMsg.FEATURE_TAG_ENRICHED_SHARED_MAP, Integer.valueOf(z ? 1 : 0), null, null, str, str2, str3, str4};
    }

    private Object[] createSharedSketchRow(int i, boolean z, String str, String str2, String str3, String str4) {
        Log.i(LOG_TAG, "has shared sketch feature: " + z);
        return new Object[]{Integer.valueOf(i), SipMsg.FEATURE_TAG_ENRICHED_SHARED_SKETCH, Integer.valueOf(z ? 1 : 0), null, null, str, str2, str3, str4};
    }

    private Object[] createPostCallRow(int i, boolean z, String str, String str2, String str3, String str4) {
        Log.i(LOG_TAG, "has post call feature: " + z);
        return new Object[]{Integer.valueOf(i), SipMsg.FEATURE_TAG_ENRICHED_POST_CALL, Integer.valueOf(z ? 1 : 0), null, null, str, str2, str3, str4};
    }

    private Object[] createChatbotChatSessionRow(int i, boolean z, String str) {
        return new Object[]{Integer.valueOf(i), SipMsg.FEATURE_TAG_CHATBOT_COMMUNICATION_SESSION, Integer.valueOf(z ? 1 : 0), null, null, str, null, null, null};
    }

    private Object[] createChatbotSlmRow(int i, boolean z, String str) {
        return new Object[]{Integer.valueOf(i), SipMsg.FEATURE_TAG_CHATBOT_COMMUNICATION_STAND_ALONE, Integer.valueOf(z ? 1 : 0), null, null, str, null, null, null};
    }

    private Object[] createExtendedbotRow(int i, boolean z, String str) {
        return new Object[]{Integer.valueOf(i), "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.xbotmessage\"", Integer.valueOf(z ? 1 : 0), null, null, str, null, null, null};
    }

    private Object[] createPlugInRow(int i, boolean z, String str) {
        return new Object[]{Integer.valueOf(i), "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.plugin\"", Integer.valueOf(z ? 1 : 0), null, null, str, null, null, null};
    }

    static class Projections {
        static final String[] SERVICE_PROJECTION = {"_id", Columns.SERVICE_INDICATOR, Columns.IS_ENABLED, Columns.INTENT_NAME, Columns.INTENT_CATEGORY, "sip_uri", Columns.DISPLAYNAME, Columns.ADDITIONAL_INFO, "number"};
        static final String[] INCALL_PROJECTION = {"_id", Columns.SERVICE_INDICATOR, Columns.IS_ENABLED, Columns.INTENT_NAME, Columns.INTENT_CATEGORY, "sip_uri", "service_name"};
        static final String[] FEATURE_TAG_PROJECTION = {Columns.SERVICE_INDICATOR};

        Projections() {
        }
    }

    private class TelephonyCallbackForCapabilityProvider extends TelephonyCallback implements TelephonyCallback.DataConnectionStateListener {
        private TelephonyCallbackForCapabilityProvider() {
        }

        @Override // android.telephony.TelephonyCallback.DataConnectionStateListener
        public void onDataConnectionStateChanged(int i, int i2) {
            Log.i(CapabilityProvider.LOG_TAG, "onDataConnectionStateChanged(): state [" + i + "] networkType [" + TelephonyManagerExt.getNetworkTypeName(i2) + "]");
            CapabilityProvider.this.mDataNetworkType = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyCapabilityChange(ImsUri imsUri) {
        Log.i(LOG_TAG, "notifyCapabilityChange");
        IMSLog.s(LOG_TAG, "notifyCapabilityChange: uri " + imsUri);
        getContext().getContentResolver().notifyChange(Uri.parse("content://com.samsung.rcs.serviceprovider/sip/" + imsUri.toString()), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyOwnServicesChange() {
        Log.i(LOG_TAG, "notifyOwnServicesChange");
        getContext().getContentResolver().notifyChange(Uri.parse("content://com.samsung.rcs.serviceprovider/own"), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyInCallServicesChange() {
        Log.i(LOG_TAG, "notifyInCallServicesChange");
        getContext().getContentResolver().notifyChange(Uri.parse("content://com.samsung.rcs.serviceprovider/incall"), null);
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        throw new UnsupportedOperationException("Operation not supported for uri:".concat(uri.toString()));
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("Operation not supported for uri:".concat(uri.toString()));
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("Operation not supported for uri:".concat(uri.toString()));
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("Operation not supported for uri:".concat(uri.toString()));
    }

    protected class ShareServiceBroadcastReceiver extends BroadcastReceiver {
        protected ShareServiceBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            IMSLog.s(CapabilityProvider.LOG_TAG, "ShareServiceBroadcastReceiver: action = " + action);
            if (action.equals(IshIntents.IshNotificationIntent.NOTIFICATION_CSH_SERVICE_NOT_READY) || action.equals(VshIntents.VshNotificationIntent.NOTIFICATION_CSH_SERVICE_NOT_READY)) {
                CapabilityProvider.ready_ish = false;
                CapabilityProvider.ready_vsh = false;
                CapabilityProvider.this.notifyInCallServicesChange();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static IntentFilter createIntentFilter() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addCategory(IshIntents.IshNotificationIntent.CATEGORY_NOTIFICATION);
        intentFilter.addAction(IshIntents.IshNotificationIntent.NOTIFICATION_CSH_SERVICE_NOT_READY);
        intentFilter.addCategory(VshIntents.VshNotificationIntent.CATEGORY_NOTIFICATION);
        intentFilter.addAction(VshIntents.VshNotificationIntent.NOTIFICATION_CSH_SERVICE_NOT_READY);
        return intentFilter;
    }
}
