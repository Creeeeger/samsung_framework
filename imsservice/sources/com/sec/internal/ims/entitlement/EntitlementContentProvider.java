package com.sec.internal.ims.entitlement;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.text.TextUtils;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.entitilement.EntitlementNamespaces;
import com.sec.internal.constants.ims.entitilement.NSDSContractExt;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.entitlement.config.EntitlementConfigService;
import com.sec.internal.ims.entitlement.storagehelper.NSDSSharedPrefHelper;
import com.sec.internal.ims.entitlement.util.NSDSConfigHelper;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.interfaces.ims.aec.IAECModule;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class EntitlementContentProvider extends ContentProvider {
    private static final String AKA_TOKEN = "aka_token";
    private static final String LOG_TAG = EntitlementContentProvider.class.getSimpleName();
    private static final String PROVIDER_NAME = "com.samsung.ims.entitlement.provider";
    private static final int RETRIEVE_AKA_TOKEN = 1;
    private static final int RETRIEVE_VOWIFI_ENTITLEMENT_REQUIRED = 2;
    private static final int RETRIEVE_VOWIFI_ENTITLEMENT_STATUS = 3;
    private static final String SLOT_ID = "slot";
    private static final String VOWIFI_ENTITLEMENT_REQUIRED = "vowifi_entitlement_required";
    private static final String VOWIFI_ENTITLEMENT_STATUS = "vowifi_entitlement_status";
    private static final UriMatcher sUriMatcher;
    private Context mContext = null;

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        sUriMatcher = uriMatcher;
        uriMatcher.addURI(PROVIDER_NAME, "aka_token", 1);
        uriMatcher.addURI(PROVIDER_NAME, VOWIFI_ENTITLEMENT_REQUIRED, 2);
        uriMatcher.addURI(PROVIDER_NAME, VOWIFI_ENTITLEMENT_STATUS, 3);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.mContext = getContext();
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int parseInt = Integer.parseInt(uri.getQueryParameter("slot"));
        IMSLog.s(LOG_TAG, parseInt, "query uri:" + uri);
        int match = sUriMatcher.match(uri);
        if (match == 1) {
            return getAkaToken(parseInt);
        }
        if (match == 2) {
            return isVoWiFiEntitlementRequired(parseInt);
        }
        if (match != 3) {
            return null;
        }
        return getVoWiFiEntitlementStatus(parseInt);
    }

    private void activateSimDevice(int i) {
        String str = LOG_TAG;
        IMSLog.i(str, i, "activateSimDevice()");
        String configServer = NSDSConfigHelper.getConfigServer(i);
        if ("Nsds".equalsIgnoreCase(configServer) || "Nsdsconfig".equalsIgnoreCase(configServer)) {
            if (SimUtil.getSimMno(i) == Mno.TMOUS) {
                IMSLog.i(str, i, "retrieve aka token for config");
                Intent intent = new Intent(this.mContext, (Class<?>) EntitlementConfigService.class);
                intent.setAction(EntitlementNamespaces.EntitlementActions.ACTION_REFRESH_DEVICE_CONFIG);
                intent.putExtra(NSDSNamespaces.NSDSExtras.DEVICE_EVENT_TYPE, 19);
                intent.putExtra(NSDSNamespaces.NSDSExtras.SIM_SLOT_IDX, i);
                this.mContext.startService(intent);
                return;
            }
            IMSLog.i(str, i, "retrieve aka token for nsds");
            this.mContext.getContentResolver().update(Uri.withAppendedPath(NSDSContractExt.AUTHORITY_URI, "retrieve_aka_token"), new ContentValues(), null, null);
        }
    }

    private Cursor getAkaToken(int i) {
        String str;
        IAECModule aECModule;
        String configServer = NSDSConfigHelper.getConfigServer(i);
        boolean supportEntitlementSlot = supportEntitlementSlot(i);
        String str2 = NSDSNamespaces.AkaAuthResultType.AKA_NOT_SUPPORTED;
        if (supportEntitlementSlot) {
            if ("Nsds".equalsIgnoreCase(configServer) || "Nsdsconfig".equalsIgnoreCase(configServer)) {
                ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
                String akaToken = NSDSSharedPrefHelper.getAkaToken(this.mContext, simManagerFromSimSlot == null ? "" : simManagerFromSimSlot.getImsi());
                if (TextUtils.isEmpty(akaToken)) {
                    activateSimDevice(i);
                    str = "InProgress";
                    str2 = str;
                } else {
                    str2 = akaToken;
                }
            } else if (("ts43".equalsIgnoreCase(configServer) || "nsds_eur".equalsIgnoreCase(configServer)) && (aECModule = ImsRegistry.getAECModule()) != null && aECModule.isEntitlementRequired(i)) {
                str = aECModule.getAkaToken(i);
                str2 = str;
            }
        }
        IMSLog.s(LOG_TAG, i, "getAkaToken(): " + str2);
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"aka_token"});
        matrixCursor.addRow(new String[]{str2});
        return matrixCursor;
    }

    private boolean supportEntitlementSlot(int i) {
        String configServer = NSDSConfigHelper.getConfigServer(i);
        if (!TextUtils.isEmpty(configServer)) {
            IMSLog.i(LOG_TAG, i, "supportEntitlementSlot: " + configServer);
            return true;
        }
        IMSLog.i(LOG_TAG, i, "supportEntitlementSlot : Not Support");
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v9 */
    private Cursor isVoWiFiEntitlementRequired(int i) {
        IAECModule aECModule;
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{VOWIFI_ENTITLEMENT_REQUIRED});
        ?? isEntitlementRequired = (!SimUtil.getSimMno(i).isEur() || (aECModule = ImsRegistry.getAECModule()) == null) ? 0 : aECModule.isEntitlementRequired(i);
        IMSLog.i(LOG_TAG, i, "isVoWiFiEntitlementRequired: " + ((boolean) isEntitlementRequired));
        matrixCursor.addRow(new Object[]{Integer.valueOf((int) isEntitlementRequired)});
        return matrixCursor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v9 */
    private Cursor getVoWiFiEntitlementStatus(int i) {
        IAECModule aECModule;
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{VOWIFI_ENTITLEMENT_STATUS});
        ?? voWiFiEntitlementStatus = (SimUtil.getSimMno(i).isEur() && (aECModule = ImsRegistry.getAECModule()) != null && aECModule.isEntitlementRequired(i)) ? aECModule.getVoWiFiEntitlementStatus(i) : 1;
        IMSLog.i(LOG_TAG, i, "getVoWiFiEntitlementStatus: " + ((boolean) voWiFiEntitlementStatus));
        matrixCursor.addRow(new Object[]{Integer.valueOf((int) voWiFiEntitlementStatus)});
        return matrixCursor;
    }
}
