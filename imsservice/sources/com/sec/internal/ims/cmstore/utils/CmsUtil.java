package com.sec.internal.ims.cmstore.utils;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.net.Uri;
import android.provider.Settings;
import android.provider.Telephony;
import android.text.TextUtils;
import android.util.Base64;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.sec.ims.settings.ImsSettings;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.cmstore.CmsJsonConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.PackageUtils;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.ambs.globalsetting.AmbsUtils;
import com.sec.internal.ims.servicemodules.im.interfaces.ImIntent;
import com.sec.internal.log.IMSLog;
import java.util.List;
import java.util.UUID;

/* loaded from: classes.dex */
public class CmsUtil {
    private static final String LOG_TAG = "CmsUtil";

    public static boolean isDefaultMessageAppInUse(Context context) {
        String str;
        String msgAppPkgName = PackageUtils.getMsgAppPkgName(context);
        try {
            str = Telephony.Sms.getDefaultSmsPackage(context);
        } catch (Exception e) {
            IMSLog.e(LOG_TAG, "Failed to get currentDefaultMsgApp: " + e);
            str = null;
        }
        boolean equals = TextUtils.equals(str, msgAppPkgName);
        IMSLog.i(LOG_TAG, "isDefaultMessageAppInUse: " + equals + ", currentDefaultMsgApp: " + str + ", samsungPackage: " + msgAppPkgName);
        return equals;
    }

    public static boolean isSimChanged(MessageStoreClient messageStoreClient) {
        IMSLog.i(LOG_TAG, "isSimChanged");
        String userCtn = messageStoreClient.getPrerenceManager().getUserCtn();
        if (TextUtils.isEmpty(messageStoreClient.getPrerenceManager().getSimImsi()) && TextUtils.isEmpty(userCtn)) {
            return false;
        }
        return isSimOrCtnChanged(messageStoreClient);
    }

    public static boolean isSimOrCtnChanged(MessageStoreClient messageStoreClient) {
        boolean isImsiChanged = isImsiChanged(messageStoreClient);
        boolean isCtnChanged = isCtnChanged(messageStoreClient);
        IMSLog.i(LOG_TAG, "isSimChanged: " + isImsiChanged + " isCtnChanged: " + isCtnChanged);
        return isImsiChanged || isCtnChanged;
    }

    public static boolean isImsiChanged(MessageStoreClient messageStoreClient) {
        String simImsi = messageStoreClient.getPrerenceManager().getSimImsi();
        String str = LOG_TAG;
        IMSLog.i(str, "oldImsi: " + IMSLog.checker(simImsi));
        if (!TextUtils.isEmpty(simImsi) && Util.getTelephonyManager(messageStoreClient.getContext(), messageStoreClient.getClientID()).getSimState() == 1) {
            IMSLog.i(str, "no SIM card");
            return false;
        }
        String imsi = messageStoreClient.getSimManager().getImsi();
        IMSLog.i(str, "newImsi: " + IMSLog.checker(imsi));
        if (TextUtils.isEmpty(simImsi) || simImsi.equalsIgnoreCase(imsi)) {
            return TextUtils.isEmpty(simImsi) && !TextUtils.isEmpty(imsi);
        }
        return true;
    }

    static boolean isCtnChanged(MessageStoreClient messageStoreClient) {
        String msisdn = messageStoreClient.getSimManager().getMsisdn();
        if (!isMcsSupported(messageStoreClient.getContext(), messageStoreClient.getClientID())) {
            msisdn = AmbsUtils.convertPhoneNumberToUserAct(msisdn);
        }
        if (!TextUtils.isEmpty(msisdn)) {
            String userCtn = messageStoreClient.getPrerenceManager().getUserCtn();
            IMSLog.i(LOG_TAG, "oldCtn: " + IMSLog.checker(userCtn) + " newCtn: " + IMSLog.checker(msisdn));
            return !msisdn.equals(userCtn);
        }
        IMSLog.i(LOG_TAG, "newCtn is empty");
        return true;
    }

    public static boolean isCtnChangedByNetwork(MessageStoreClient messageStoreClient, boolean z) {
        String convertPhoneNumberToUserAct = AmbsUtils.convertPhoneNumberToUserAct(messageStoreClient.getSimManager().getMsisdn());
        if (TextUtils.isEmpty(convertPhoneNumberToUserAct)) {
            IMSLog.i(LOG_TAG, "empty accountNumber");
            return false;
        }
        String userCtn = messageStoreClient.getPrerenceManager().getUserCtn();
        String str = LOG_TAG;
        IMSLog.i(str, "oldCtn: " + IMSLog.checker(userCtn) + " accountNumber: " + IMSLog.checker(convertPhoneNumberToUserAct) + ", isCmsProfileEnabled: " + z);
        if (TextUtils.isEmpty(userCtn)) {
            if (z) {
                messageStoreClient.getPrerenceManager().saveUserCtn(convertPhoneNumberToUserAct, false);
            }
            return false;
        }
        if (convertPhoneNumberToUserAct.equals(userCtn)) {
            return false;
        }
        IMSLog.i(str, "change and save user ctn");
        messageStoreClient.getPrerenceManager().saveUserCtn(convertPhoneNumberToUserAct, false);
        return true;
    }

    public static boolean isMcsSupported(Context context, int i) {
        boolean z = false;
        if ((OmcCode.isKorOpenOnlyOmcCode() || OmcCode.isSKTOmcCode()) && getBooleanGlobalSettings(context, i, GlobalSettingsConstants.CMS.CMS_MCS_ENABLED, false) && !DeviceUtil.isTablet()) {
            z = true;
        }
        String str = LOG_TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("MCS is ");
        sb.append(z ? "support" : "not support");
        IMSLog.i(str, i, sb.toString());
        return z;
    }

    public static String getMcsClientId(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        String str = LOG_TAG;
        IMSLog.i(str, "ANDROID_ID " + string);
        if (!string.isEmpty()) {
            return string;
        }
        String uuid = UUID.randomUUID().toString();
        IMSLog.i(str, "android_id is empty. Use UUID");
        return uuid;
    }

    public static String getSmAppVersion(Context context) {
        String str = "";
        try {
            str = context.getPackageManager().getPackageInfo(PackageUtils.getMsgAppPkgName(context), PackageManager.PackageInfoFlags.of(0L)).versionName;
            IMSLog.i(LOG_TAG, "SM app version: " + str);
            return str;
        } catch (PackageManager.NameNotFoundException e) {
            IMSLog.e(LOG_TAG, e.getMessage());
            return str;
        }
    }

    public static boolean getBooleanGlobalSettings(Context context, int i, String str, boolean z) {
        String str2 = LOG_TAG;
        IMSLog.i(str2, i, "getBooleanGlobalSettings: field: " + str + " defaultVal: " + z);
        Uri.Builder buildUpon = ImsSettings.GLOBAL_CONTENT_URI.buildUpon();
        StringBuilder sb = new StringBuilder();
        sb.append("simslot");
        sb.append(i);
        Cursor query = context.getContentResolver().query(buildUpon.fragment(sb.toString()).build(), new String[]{str}, null, null, null);
        if (query == null || query.getCount() == 0) {
            IMSLog.i(str2, i, "getBooleanGlobalSettings: not found");
            if (query != null) {
            }
            return z;
        }
        ContentValues contentValues = new ContentValues();
        try {
            try {
                if (query.moveToFirst()) {
                    DatabaseUtils.cursorRowToContentValues(query, contentValues);
                }
            } catch (RuntimeException e) {
                IMSLog.i(LOG_TAG, i, "getBooleanGlobalSettings: exception: " + e.getMessage());
            }
            Integer asInteger = contentValues.getAsInteger(str);
            if (asInteger != null && asInteger.intValue() == 1) {
                z = true;
            }
            IMSLog.i(LOG_TAG, i, "getBooleanGlobalSettings: field: " + str + " resultVal: " + z);
            return z;
        } finally {
            query.close();
        }
    }

    public static String getStringGlobalSettings(Context context, int i, String str, String str2) {
        String str3 = LOG_TAG;
        IMSLog.i(str3, i, "getStringGlobalSettings: field: " + str + " defaultVal: " + str2);
        Uri.Builder buildUpon = ImsSettings.GLOBAL_CONTENT_URI.buildUpon();
        StringBuilder sb = new StringBuilder();
        sb.append("simslot");
        sb.append(i);
        Cursor query = context.getContentResolver().query(buildUpon.fragment(sb.toString()).build(), new String[]{str}, null, null, null);
        if (query == null || query.getCount() == 0) {
            IMSLog.i(str3, i, "getStringGlobalSettings: not found");
            if (query != null) {
            }
            return str2;
        }
        ContentValues contentValues = new ContentValues();
        try {
            try {
                if (query.moveToFirst()) {
                    DatabaseUtils.cursorRowToContentValues(query, contentValues);
                }
            } catch (RuntimeException e) {
                IMSLog.i(LOG_TAG, i, "getStringGlobalSettings: exception: " + e.getMessage());
            }
            String asString = contentValues.getAsString(str);
            if (!TextUtils.isEmpty(asString)) {
                str2 = asString;
            }
            IMSLog.i(LOG_TAG, i, "getBooleanGlobalSettings: field: " + str + " resultVal: " + str2);
            return str2;
        } finally {
            query.close();
        }
    }

    public static int getIntGlobalSettings(Context context, int i, String str, int i2) {
        String str2 = LOG_TAG;
        IMSLog.i(str2, i, "getIntGlobalSettings: field: " + str + " defaultVal: " + i2);
        Uri.Builder buildUpon = ImsSettings.GLOBAL_CONTENT_URI.buildUpon();
        StringBuilder sb = new StringBuilder();
        sb.append("simslot");
        sb.append(i);
        Cursor query = context.getContentResolver().query(buildUpon.fragment(sb.toString()).build(), new String[]{str}, null, null, null);
        if (query == null || query.getCount() == 0) {
            IMSLog.i(str2, i, "getIntGlobalSettings: not found");
            if (query != null) {
            }
            return i2;
        }
        ContentValues contentValues = new ContentValues();
        try {
            try {
                if (query.moveToFirst()) {
                    DatabaseUtils.cursorRowToContentValues(query, contentValues);
                }
            } catch (RuntimeException e) {
                IMSLog.i(LOG_TAG, i, "getIntGlobalSettings: exception: " + e.getMessage());
            }
            Integer asInteger = contentValues.getAsInteger(str);
            if (asInteger != null) {
                i2 = asInteger.intValue();
            }
            IMSLog.i(LOG_TAG, i, "getBooleanGlobalSettings: field: " + str + " resultVal: " + i2);
            return i2;
        } finally {
            query.close();
        }
    }

    public static boolean isLargeSizeFile(MessageStoreClient messageStoreClient, long j) {
        return j > (((long) messageStoreClient.getPrerenceManager().getMaxSmallFileSize()) * 1024) * 1024;
    }

    public static boolean urlContainsLargeFile(MessageStoreClient messageStoreClient, String str) {
        return str.contains(messageStoreClient.getPrerenceManager().getOasisLargeFileServerRoot());
    }

    public static String getJsonElements(List<String> list, CmsJsonConstants.JSON_TYPE json_type) {
        JsonArray jsonArray = new JsonArray();
        for (String str : list) {
            if (str != null) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("type", CloudMessageProviderContract.DataTypes.CHAT);
                if (json_type == CmsJsonConstants.JSON_TYPE.CHAT) {
                    jsonObject.addProperty("chatid", str);
                    jsonObject.addProperty("imdn_message_id", "");
                } else if (json_type == CmsJsonConstants.JSON_TYPE.IMDN) {
                    jsonObject.addProperty("imdn_message_id", str);
                } else {
                    jsonObject.addProperty("id", str);
                    jsonObject.addProperty("imdn_message_id", "");
                }
                jsonObject.addProperty("preferred_line", "");
                jsonArray.add(jsonObject);
            }
        }
        return jsonArray.toString();
    }

    public static String getJsonElements(long j) {
        JsonArray jsonArray = new JsonArray();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("id", String.valueOf(j));
        jsonArray.add(jsonObject);
        return jsonArray.toString();
    }

    public static String getJsonElements(int i, String str, String str2) {
        JsonArray jsonArray = new JsonArray();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("type", CloudMessageProviderContract.DataTypes.CHAT);
        jsonObject.addProperty("id", String.valueOf(i));
        jsonObject.addProperty("imdn_message_id", String.valueOf(str));
        jsonObject.addProperty("preferred_line", str2);
        jsonArray.add(jsonObject);
        return jsonArray.toString();
    }

    public static JsonArray getJsonElements(ContentValues contentValues, String str, String str2, String str3, int i) {
        JsonArray jsonArray = new JsonArray();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("id", String.valueOf(i));
        jsonObject.addProperty("chatId", str);
        jsonObject.addProperty("sessionId", str2);
        jsonObject.addProperty(CmsJsonConstants.CONVERSATION_ID, str3);
        if (contentValues.get(CmsJsonConstants.ICON_DATA) != null) {
            jsonObject.addProperty(ImIntent.Extras.GROUPCHAT_ICON_DATA, Base64.encodeToString(contentValues.getAsByteArray(CmsJsonConstants.ICON_DATA), 2));
        }
        if (contentValues.get(CmsJsonConstants.ICON_NAME) != null) {
            jsonObject.addProperty(ImIntent.Extras.GROUPCHAT_ICON_NAME, contentValues.getAsString(CmsJsonConstants.ICON_NAME));
        }
        if (contentValues.get(CmsJsonConstants.PARTICIPANTS_ADD) != null) {
            jsonObject.addProperty(CmsJsonConstants.PARTICIPANTS_ADD, contentValues.getAsString(CmsJsonConstants.PARTICIPANTS_ADD));
        }
        if (contentValues.get(CmsJsonConstants.PARTICIPANTS_DEL) != null) {
            jsonObject.addProperty(CmsJsonConstants.PARTICIPANTS_DEL, contentValues.getAsString(CmsJsonConstants.PARTICIPANTS_DEL));
        }
        if (contentValues.get(CmsJsonConstants.CLOSED_REASON) != null) {
            jsonObject.addProperty(CmsJsonConstants.CLOSED_REASON, contentValues.getAsInteger(CmsJsonConstants.CLOSED_REASON));
        }
        if (contentValues.get(CmsJsonConstants.GROUPCHAT_ACCEPT) != null) {
            jsonObject.addProperty(CmsJsonConstants.GROUPCHAT_ACCEPT, contentValues.getAsBoolean(CmsJsonConstants.GROUPCHAT_ACCEPT));
        }
        jsonObject.addProperty(CmsJsonConstants.SESSION_INFO_VERSION, 1);
        jsonArray.add(jsonObject);
        return jsonArray;
    }
}
