package com.sec.internal.ims.rcscore;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.RemoteException;
import android.util.Log;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.imsservice.ImsServiceStub;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.interfaces.ims.servicemodules.im.IImModule;
import com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule;

/* loaded from: classes.dex */
public class RcsPreferencesProvider extends ContentProvider {
    private static final String AUTHORITY = "com.sec.ims.android.rcs";
    private static final String KEY_ENRICHED_CALLING = "rcs_enriched_calling";
    private static final String KEY_MASTER_SWICH_VISIBILITY = "master_switch";
    private static final String KEY_PERMANENT_DISABLE = "permanent_disable_state";
    private static final String KEY_PERMANENT_DISABLE_AVAILABILITY = "permanent_disable_availibility";
    private static final String KEY_RCSPROFILE = "rcsprofile";
    private static final String KEY_RCS_ENABLED = "rcs_enabled";
    private static final String KEY_RCS_NOTIFICATION_SETTING = "rcs_connection_preference";
    private static final String KEY_REGISTRATION_STATUS = "registration_status";
    private static final String KEY_STATIC_ENABLE_RCS = "EnableRCS";
    private static final String KEY_STATIC_ENABLE_RCSCHAT = "EnableRCSchat";
    private static final String KEY_SUPPORT_DUAL_RCS = "support_dual_rcs";
    private static final String KEY_SUPPORT_DUAL_RCS_SETTINGS = "support_dual_rcs_settings";
    private static final String KEY_SUPPORT_DUAL_RCS_SIM1 = "support_dual_rcs_sim1";
    private static final String KEY_SUPPORT_DUAL_RCS_SIM2 = "support_dual_rcs_sim2";
    private static final String KEY_USER_ALIAS = "user_alias";
    private static final String KEY_VANILLA_APPLIED = "vanilla_applied";
    private static final String LOG_TAG = RcsPreferencesProvider.class.getSimpleName();
    private static final int MATCH_ENRICHED_CALLING = 11;
    private static final int MATCH_HOME_NETWORK = 2;
    private static final int MATCH_PERMANENT_DISABLE = 4;
    private static final int MATCH_PERMANENT_DISABLE_AVAILABILITY = 6;
    private static final int MATCH_RCSPROFILE = 8;
    private static final int MATCH_RCS_ENABLED_STATIC = 10;
    private static final int MATCH_REGISTRATION = 7;
    private static final int MATCH_ROAMING = 3;
    private static final int MATCH_SETTINGS = 1;
    private static final int MATCH_SUPPORT_DUAL_RCS = 9;
    private static final int MATCH_SUPPORT_DUAL_RCS_SETTINGS = 12;
    private static final int MATCH_USER_ALIAS = 5;
    private static final String TABLE_ENRICHED_CALLING = "rcs_enriched_calling";
    private static final String TABLE_HOME_NETWORK = "home_network";
    private static final String TABLE_PERMANENT_DISALBE = "permanent_disable_state";
    private static final String TABLE_PERMANENT_DISALBE_AVAILABILITY = "permanent_disable_availibility";
    private static final String TABLE_PREFERENCES = "preferences";
    private static final String TABLE_RCSPROFILE = "rcsprofile";
    private static final String TABLE_RCS_ENABLED_STATIC = "rcs_enabled_static";
    private static final String TABLE_REGISTRATION = "registration";
    private static final String TABLE_ROAMING = "roaming";
    private static final String TABLE_SUPPORT_DUAL_RCS = "support_dual_rcs";
    private static final String TABLE_SUPPORT_DUAL_RCS_SETTINGS = "support_dual_rcs_settings";
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

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        sUriMatcher = uriMatcher;
        uriMatcher.addURI("com.sec.ims.android.rcs", TABLE_PREFERENCES + '/' + String.valueOf(1), 1);
        uriMatcher.addURI("com.sec.ims.android.rcs", TABLE_PREFERENCES + '/' + String.valueOf(5), 5);
        uriMatcher.addURI("com.sec.ims.android.rcs", TABLE_HOME_NETWORK, 2);
        uriMatcher.addURI("com.sec.ims.android.rcs", TABLE_ROAMING, 3);
        uriMatcher.addURI("com.sec.ims.android.rcs", "permanent_disable_state", 4);
        uriMatcher.addURI("com.sec.ims.android.rcs", "permanent_disable_availibility", 6);
        uriMatcher.addURI("com.sec.ims.android.rcs", TABLE_REGISTRATION, 7);
        uriMatcher.addURI("com.sec.ims.android.rcs", "rcsprofile", 8);
        uriMatcher.addURI("com.sec.ims.android.rcs", "support_dual_rcs", 9);
        uriMatcher.addURI("com.sec.ims.android.rcs", TABLE_RCS_ENABLED_STATIC, 10);
        uriMatcher.addURI("com.sec.ims.android.rcs", "rcs_enriched_calling", 11);
        uriMatcher.addURI("com.sec.ims.android.rcs", "support_dual_rcs_settings", 12);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.mContext = getContext();
        return false;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int match = sUriMatcher.match(uri);
        String str3 = LOG_TAG;
        Log.i(str3, "query [" + uri + "] match [" + match + "]");
        int activeDataPhoneIdFromTelephony = SimUtil.isDualIMS() ? SimUtil.getActiveDataPhoneIdFromTelephony() : 0;
        if (uri.getFragment() != null && uri.getFragment().contains("simslot")) {
            activeDataPhoneIdFromTelephony = Character.getNumericValue(uri.getFragment().charAt(7));
        }
        switch (match) {
            case 1:
                return createMultiValueCursor(new String[]{KEY_RCS_ENABLED, KEY_VANILLA_APPLIED, KEY_MASTER_SWICH_VISIBILITY}, readCurrentSettingsValues(activeDataPhoneIdFromTelephony));
            case 2:
                return createSingleValueCursor(KEY_RCS_NOTIFICATION_SETTING, (Integer) 1);
            case 3:
                return createSingleValueCursor(KEY_RCS_NOTIFICATION_SETTING, (Integer) 1);
            case 4:
                return createSingleValueCursor("permanent_disable_state", (Integer) 0);
            case 5:
                return createSingleValueCursor("user_alias", queryUserAlias(activeDataPhoneIdFromTelephony));
            case 6:
                return createSingleValueCursor("permanent_disable_availibility", (Integer) 0);
            case 7:
                return createSingleValueCursor(KEY_REGISTRATION_STATUS, Integer.valueOf(isRcsRegistered(activeDataPhoneIdFromTelephony) ? 1 : 0));
            case 8:
                return createSingleValueCursor("rcsprofile", ImsRegistry.getRcsProfileType(activeDataPhoneIdFromTelephony));
            case 9:
                return createMultiValueCursor(new String[]{"support_dual_rcs", KEY_SUPPORT_DUAL_RCS_SIM1, KEY_SUPPORT_DUAL_RCS_SIM2}, getSupportDualRcs());
            case 10:
                return createMultiValueCursor(new String[]{"EnableRCS", "EnableRCSchat"}, getRcsEnabledStatic(activeDataPhoneIdFromTelephony));
            case 11:
                return createSingleValueCursor("rcs_enriched_calling", Integer.valueOf(queryEnrichedCalling(activeDataPhoneIdFromTelephony)));
            case 12:
                return createSingleValueCursor("support_dual_rcs_settings", Integer.valueOf(getSupportDualRcsSettings()));
            default:
                Log.e(str3, "query: uri not implemented: " + uri);
                return null;
        }
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        String str2 = LOG_TAG;
        Log.d(str2, "update: " + uri);
        if (contentValues == null) {
            Log.e(str2, "update: values are null");
            return 0;
        }
        int activeDataPhoneIdFromTelephony = SimUtil.isDualIMS() ? SimUtil.getActiveDataPhoneIdFromTelephony() : 0;
        if (uri.getFragment() != null && uri.getFragment().contains("simslot")) {
            activeDataPhoneIdFromTelephony = Character.getNumericValue(uri.getFragment().charAt(7));
        }
        int match = sUriMatcher.match(uri);
        if (match != 1) {
            if (match == 5) {
                if (!contentValues.containsKey("user_alias")) {
                    return 0;
                }
                String asString = contentValues.getAsString("user_alias");
                Log.d(str2, "User alias: " + asString);
                updateUserAlias(activeDataPhoneIdFromTelephony, asString);
                this.mContext.getContentResolver().notifyChange(uri, null);
            } else {
                Log.e(str2, "update: uri not implemented: " + uri);
                return 0;
            }
        } else {
            if (!contentValues.containsKey(KEY_RCS_ENABLED)) {
                return 0;
            }
            updateRCSSetting(contentValues.getAsBoolean(KEY_RCS_ENABLED) != null ? contentValues.getAsBoolean(KEY_RCS_ENABLED).booleanValue() : false, activeDataPhoneIdFromTelephony);
        }
        return 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Integer[] readCurrentSettingsValues(int i) {
        int i2;
        boolean isServiceEnabledByPhoneId = ImsRegistry.isServiceEnabledByPhoneId("rcs_user_setting", i);
        int i3 = !ImsRegistry.isRcsEnabledByPhoneId(i) ? 1 : 0;
        try {
            i2 = RcsUtils.UiUtils.isMainSwitchVisible(this.mContext, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            i2 = 0;
        }
        return new Integer[]{Integer.valueOf(isServiceEnabledByPhoneId ? 1 : 0), Integer.valueOf(i3), Integer.valueOf(i2)};
    }

    private Cursor createSingleValueCursor(String str, Integer num) {
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{str}, 1);
        matrixCursor.addRow(new Integer[]{num});
        return matrixCursor;
    }

    private Cursor createSingleValueCursor(String str, String str2) {
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{str}, 1);
        matrixCursor.addRow(new String[]{str2});
        return matrixCursor;
    }

    private Cursor createMultiValueCursor(String[] strArr, Integer[] numArr) {
        MatrixCursor matrixCursor = new MatrixCursor(strArr, strArr.length);
        matrixCursor.addRow(numArr);
        return matrixCursor;
    }

    private Cursor createMultiValueCursor(String[] strArr, String[] strArr2) {
        MatrixCursor matrixCursor = new MatrixCursor(strArr, strArr.length);
        matrixCursor.addRow(strArr2);
        return matrixCursor;
    }

    private void updateUserAlias(int i, String str) {
        IImModule imModule = ImsRegistry.getServiceModuleManager().getImModule();
        if (imModule == null) {
            return;
        }
        imModule.setUserAlias(i, str);
        IPresenceModule presenceModule = ImsRegistry.getServiceModuleManager().getPresenceModule();
        if (presenceModule == null || str == null || !imModule.getImConfig(i).getRealtimeUserAliasAuth()) {
            return;
        }
        presenceModule.setDisplayText(i, str);
    }

    private String queryUserAlias(int i) {
        IImModule imModule = ImsRegistry.getServiceModuleManager().getImModule();
        return imModule != null ? imModule.getUserAliasFromPreference(i) : "";
    }

    private boolean isRcsRegistered(int i) {
        return ImsServiceStub.getInstance().getRegistrationManager().isRcsRegistered(i);
    }

    private void updateRCSSetting(boolean z, int i) {
        ImsRegistry.enableRcsByPhoneId(z, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Integer[] getSupportDualRcs() {
        return new Integer[]{Integer.valueOf((ImsRegistry.getInt(SimUtil.getActiveDataPhoneId(), "dual_rcs_policy", 0) == 1 || ImsRegistry.getInt(SimUtil.getActiveDataPhoneId(), "dual_rcs_policy", 0) == 4) ? SimUtil.isDualIMS() : RcsUtils.DualRcs.isDualRcsReg()), Integer.valueOf(RcsUtils.DualRcs.isRegAllowed(this.mContext, 0) ? 1 : 0), Integer.valueOf(RcsUtils.DualRcs.isRegAllowed(this.mContext, 1) ? 1 : 0)};
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String[] getRcsEnabledStatic(int r12) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.rcscore.RcsPreferencesProvider.getRcsEnabledStatic(int):java.lang.String[]");
    }

    private int queryEnrichedCalling(int i) {
        return RcsUtils.UiUtils.isRcsEnabledEnrichedCalling(i) ? 1 : 0;
    }

    private int getSupportDualRcsSettings() {
        return RcsUtils.DualRcs.isDualRcsSettings() ? 1 : 0;
    }
}
