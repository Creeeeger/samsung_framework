package com.sec.internal.ims.entitlement.storagehelper;

import android.content.Context;
import android.content.SharedPreferences;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.ims.entitlement.util.NSDSConfigHelper;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class NSDSSharedPrefHelper {
    private static final String LOG_TAG = "NSDSSharedPrefHelper";

    public static SharedPreferences getSharedPref(Context context, String str, int i) {
        if (NSDSConfigHelper.isUserUnlocked(context)) {
            return context.createCredentialProtectedStorageContext().getSharedPreferences(str, i);
        }
        return null;
    }

    public static String getInDe(Context context, String str, String str2, String str3) {
        return context.createDeviceProtectedStorageContext().getSharedPreferences(str, 0).getString(getKey(str2, str3), null);
    }

    public static int getIntInDe(Context context, String str, String str2, String str3) {
        return context.createDeviceProtectedStorageContext().getSharedPreferences(str, 0).getInt(getKey(str2, str3), -1);
    }

    public static String get(Context context, String str, String str2) {
        if (NSDSConfigHelper.isUserUnlocked(context)) {
            return context.createCredentialProtectedStorageContext().getSharedPreferences(NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF, 0).getString(getKey(str, str2), null);
        }
        return null;
    }

    private static String getKey(String str, String str2) {
        return str + ":" + str2;
    }

    public static void saveInDe(Context context, String str, String str2, String str3, String str4) {
        SharedPreferences.Editor edit = context.createDeviceProtectedStorageContext().getSharedPreferences(str, 0).edit();
        edit.putString(getKey(str2, str3), str4);
        edit.commit();
        IMSLog.s(LOG_TAG, "saved preference with key:" + str3 + " Value:" + str4);
    }

    public static void saveActionTrigger(Context context, String str, int i) {
        SharedPreferences.Editor edit = context.createDeviceProtectedStorageContext().getSharedPreferences(NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF_CONFIG, 0).edit();
        edit.putInt(getKey(str, NSDSNamespaces.NSDSSharedPref.PREF_ACTION_TRIGGER), i);
        edit.commit();
        IMSLog.s(LOG_TAG, "saved preference with key:action_trigger Value:" + i);
    }

    public static void save(Context context, String str, String str2, String str3) {
        if (NSDSConfigHelper.isUserUnlocked(context)) {
            SharedPreferences.Editor edit = context.createCredentialProtectedStorageContext().getSharedPreferences(NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF, 0).edit();
            edit.putString(getKey(str, str2), str3);
            edit.commit();
            IMSLog.s(LOG_TAG, "saved preference with key:" + str2 + " Value:" + str3);
        }
    }

    public static void save(Context context, String str, String str2, boolean z) {
        if (NSDSConfigHelper.isUserUnlocked(context)) {
            SharedPreferences.Editor edit = context.createCredentialProtectedStorageContext().getSharedPreferences(NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF, 0).edit();
            edit.putBoolean(getKey(str, str2), z);
            edit.commit();
            IMSLog.s(LOG_TAG, "saved preference with key:" + str2 + " Value:" + z);
        }
    }

    public static void remove(Context context, String str, String str2) {
        if (NSDSConfigHelper.isUserUnlocked(context)) {
            SharedPreferences.Editor edit = context.createCredentialProtectedStorageContext().getSharedPreferences(NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF, 0).edit();
            edit.remove(getKey(str, str2));
            edit.commit();
            IMSLog.s(LOG_TAG, "removed preference with key:" + str2);
        }
    }

    public static boolean isDeviceInActivationProgress(Context context, String str) {
        String string;
        return NSDSConfigHelper.isUserUnlocked(context) && (string = context.createCredentialProtectedStorageContext().getSharedPreferences(NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF, 0).getString(getKey(str, NSDSNamespaces.NSDSSharedPref.PREF_DEVICE_STATE), null)) != null && string.equalsIgnoreCase(NSDSNamespaces.NSDSDeviceState.ACTIVATION_IN_PROGRESS);
    }

    public static boolean isDeviceInEntitlementProgress(Context context, String str) {
        String string;
        return NSDSConfigHelper.isUserUnlocked(context) && (string = context.createCredentialProtectedStorageContext().getSharedPreferences(NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF, 0).getString(getKey(str, NSDSNamespaces.NSDSSharedPref.PREF_ENTITLEMENT_STATE), null)) != null && string.equalsIgnoreCase(NSDSNamespaces.NSDSDeviceState.ENTITLMENT_IN_PROGRESS);
    }

    public static boolean isVoWifiServiceProvisioned(Context context, String str) {
        String string;
        return NSDSConfigHelper.isUserUnlocked(context) && (string = context.createCredentialProtectedStorageContext().getSharedPreferences(NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF, 0).getString(getKey(str, NSDSNamespaces.NSDSSharedPref.PREF_SVC_PROV_STATE), null)) != null && string.equalsIgnoreCase(NSDSNamespaces.NSDSDeviceState.SERVICE_PROVISIONED);
    }

    public static boolean isDeviceActivated(Context context, String str) {
        String string;
        return NSDSConfigHelper.isUserUnlocked(context) && (string = context.createCredentialProtectedStorageContext().getSharedPreferences(NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF, 0).getString(getKey(str, NSDSNamespaces.NSDSSharedPref.PREF_DEVICE_STATE), null)) != null && string.equalsIgnoreCase(NSDSNamespaces.NSDSDeviceState.ACTIVATED);
    }

    public static boolean isGcmTokenSentToServer(Context context, String str) {
        if (NSDSConfigHelper.isUserUnlocked(context)) {
            return context.createCredentialProtectedStorageContext().getSharedPreferences(NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF, 0).getBoolean(getKey(str, NSDSNamespaces.NSDSSharedPref.PREF_SENT_TOKEN_TO_SERVER), false);
        }
        return false;
    }

    public static boolean isSimSwapPending(Context context, String str) {
        if (NSDSConfigHelper.isUserUnlocked(context)) {
            return context.createCredentialProtectedStorageContext().getSharedPreferences(NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF, 0).getBoolean(getKey(str, NSDSNamespaces.NSDSSharedPref.PREF_PEDNING_SIM_SWAP), false);
        }
        return false;
    }

    public static void clearSimSwapPending(Context context, String str) {
        if (NSDSConfigHelper.isUserUnlocked(context)) {
            SharedPreferences.Editor edit = context.createCredentialProtectedStorageContext().getSharedPreferences(NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF, 0).edit();
            edit.remove(getKey(str, NSDSNamespaces.NSDSSharedPref.PREF_PEDNING_SIM_SWAP));
            edit.commit();
            IMSLog.s(LOG_TAG, "cleared pending_sim_swap form shared pref ");
        }
    }

    public static void clearEntitlementServerUrl(Context context, String str) {
        if (NSDSConfigHelper.isUserUnlocked(context)) {
            Context createCredentialProtectedStorageContext = context.createCredentialProtectedStorageContext();
            String key = getKey(str, NSDSNamespaces.NSDSSharedPref.PREF_ENTITLEMENT_SERVER_URL);
            SharedPreferences.Editor edit = createCredentialProtectedStorageContext.getSharedPreferences(NSDSNamespaces.NSDSSharedPref.PREF_ENTITLEMENT_SERVER_URL, 0).edit();
            edit.remove(key);
            edit.commit();
            IMSLog.s(LOG_TAG, "cleared entitlement server Url form shared pref ");
        }
    }

    public static void setEntitlementServerUrl(Context context, String str, String str2) {
        if (NSDSConfigHelper.isUserUnlocked(context)) {
            Context createCredentialProtectedStorageContext = context.createCredentialProtectedStorageContext();
            String key = getKey(str, NSDSNamespaces.NSDSSharedPref.PREF_ENTITLEMENT_SERVER_URL);
            SharedPreferences.Editor edit = createCredentialProtectedStorageContext.getSharedPreferences(NSDSNamespaces.NSDSSharedPref.PREF_ENTITLEMENT_SERVER_URL, 0).edit();
            edit.putString(key, str2);
            edit.commit();
            IMSLog.s(LOG_TAG, "setEntitlementServerUrl: " + str2);
        }
    }

    public static String getEntitlementServerUrl(Context context, String str, String str2) {
        if (!NSDSConfigHelper.isUserUnlocked(context)) {
            return null;
        }
        String string = context.createCredentialProtectedStorageContext().getSharedPreferences(NSDSNamespaces.NSDSSharedPref.PREF_ENTITLEMENT_SERVER_URL, 0).getString(getKey(str, NSDSNamespaces.NSDSSharedPref.PREF_ENTITLEMENT_SERVER_URL), null);
        IMSLog.s(LOG_TAG, "getEntitlementServerUrl: " + string);
        return string == null ? str2 : string;
    }

    public static String getGcmSenderId(Context context, String str, String str2) {
        if (!NSDSConfigHelper.isUserUnlocked(context)) {
            return null;
        }
        SharedPreferences sharedPreferences = context.createCredentialProtectedStorageContext().getSharedPreferences("gcm_sender_id", 0);
        String string = sharedPreferences.getString("gcm_sender_id", null);
        if (string != null) {
            return string;
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString(getKey(str, "gcm_sender_id"), str2);
        edit.commit();
        IMSLog.s(LOG_TAG, "saved preference with key:gcm_sender_id Value:" + str2);
        return str2;
    }

    public static void savePrefForSlot(Context context, int i, String str, String str2) {
        if (NSDSConfigHelper.isUserUnlocked(context)) {
            SharedPreferences.Editor edit = context.createCredentialProtectedStorageContext().getSharedPreferences(NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF, 0).edit();
            edit.putString(i + ":" + str, str2);
            edit.commit();
        }
    }

    public static String getPrefForSlot(Context context, int i, String str) {
        if (!NSDSConfigHelper.isUserUnlocked(context)) {
            return null;
        }
        return context.createCredentialProtectedStorageContext().getSharedPreferences(NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF, 0).getString(i + ":" + str, "");
    }

    public static void removePrefForSlot(Context context, int i, String str) {
        if (NSDSConfigHelper.isUserUnlocked(context)) {
            SharedPreferences.Editor edit = context.createCredentialProtectedStorageContext().getSharedPreferences(NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF, 0).edit();
            edit.remove(i + ":" + str);
            edit.commit();
            IMSLog.s(LOG_TAG, "removed preference with key: " + i + ":" + str);
        }
    }

    public static void saveAkaToken(Context context, String str, String str2) {
        if (NSDSConfigHelper.isUserUnlocked(context)) {
            SharedPreferences.Editor edit = context.createCredentialProtectedStorageContext().getSharedPreferences(NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF, 0).edit();
            edit.putString(str, str2);
            edit.commit();
            IMSLog.s(LOG_TAG, "saved aka token, " + str2 + ", with imsi: " + str);
        }
    }

    public static String getAkaToken(Context context, String str) {
        if (NSDSConfigHelper.isUserUnlocked(context)) {
            return context.createCredentialProtectedStorageContext().getSharedPreferences(NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF, 0).getString(str, null);
        }
        return null;
    }

    public static void removeAkaToken(Context context, String str) {
        if (NSDSConfigHelper.isUserUnlocked(context)) {
            SharedPreferences.Editor edit = context.createCredentialProtectedStorageContext().getSharedPreferences(NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF, 0).edit();
            edit.remove(str);
            edit.commit();
            IMSLog.s(LOG_TAG, "removed aka token with imsi: " + str);
        }
    }

    public static boolean migrationToCe(Context context) {
        if (!context.createCredentialProtectedStorageContext().moveSharedPreferencesFrom(context, NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF)) {
            IMSLog.e(LOG_TAG, "Failed to maigrate shared preferences.");
            return false;
        }
        if (context.deleteSharedPreferences(NSDSNamespaces.NSDSSharedPref.NAME_SHARED_PREF)) {
            return true;
        }
        IMSLog.e(LOG_TAG, "Failed delete shared preferences on DE.");
        return false;
    }
}
