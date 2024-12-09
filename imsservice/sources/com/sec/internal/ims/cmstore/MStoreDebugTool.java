package com.sec.internal.ims.cmstore;

import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.util.Patterns;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.ims.cmstore.servicecontainer.CentralMsgStoreInterface;
import com.sec.internal.ims.entitlement.storagehelper.DeviceIdHelper;
import com.sec.internal.ims.entitlement.storagehelper.NSDSSharedPrefHelper;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MStoreDebugTool {
    public static final boolean DEBUG_ON = false;
    public static final String DEFAULT_LAB_ENTITLEMENT = "https://eas3.msg.lab.t-mobile.com/generic_devices";
    public static final String DEFAULT_PRO_ENTITLEMENT = "https://eas3.msg.t-mobile.com/generic_devices";
    public static final String DEFAULT_STG_BSF = "https://bsf.sipgeo.t-mobile.com:443/";
    public static final String DEFAULT_STG_ENTITLEMENT = "https://easstg1.msg.t-mobile.com/generic_devices";
    public static final Uri ES_AUTHORITY_URI = Uri.parse("content://com.samsung.ims.entitlementconfig.provider");
    public static final String LOG_TAG = "MStoreDebugTool";
    public static int SIMTYPE;
    private static MStoreDebugTool sInstance;
    public String BSF_IP;
    private CentralMsgStoreInterface mCentralMsgStoreWrapper;
    private Context mContext;
    private NetAPIWorkingStatusController mNetAPIWorkingController;
    BroadcastReceiver mVVMIntentReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.cmstore.MStoreDebugTool.1
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00e2, code lost:
        
            if (r2.equals("downloadMessage") != false) goto L28;
         */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00ea  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x011a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onReceive(android.content.Context r8, android.content.Intent r9) {
            /*
                Method dump skipped, instructions count: 335
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.MStoreDebugTool.AnonymousClass1.onReceive(android.content.Context, android.content.Intent):void");
        }
    };

    public static String replaceDebugImpi(String str) {
        return null;
    }

    public void initDebugInfo() {
    }

    public String replaceDebugBsf(String str) {
        return str;
    }

    public MStoreDebugTool(Context context, NetAPIWorkingStatusController netAPIWorkingStatusController, CentralMsgStoreInterface centralMsgStoreInterface) {
        this.mContext = context;
        this.mNetAPIWorkingController = netAPIWorkingStatusController;
        this.mCentralMsgStoreWrapper = centralMsgStoreInterface;
    }

    public static MStoreDebugTool getInstance(Context context, NetAPIWorkingStatusController netAPIWorkingStatusController, CentralMsgStoreInterface centralMsgStoreInterface) {
        if (sInstance == null) {
            sInstance = new MStoreDebugTool(context, netAPIWorkingStatusController, centralMsgStoreInterface);
        }
        return sInstance;
    }

    public void registerVVMIntentReceiver() {
        Log.d(LOG_TAG, "registerVVMIntentReceiver");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.shiqg.action.VVM");
        intentFilter.addAction("com.shiqg.action.TESTAPI");
        this.mContext.registerReceiver(this.mVVMIntentReceiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getTextFromSD(File file) {
        FileInputStream fileInputStream;
        String str = "";
        try {
            fileInputStream = new FileInputStream(file);
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream, StandardCharsets.UTF_8));
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine);
                }
                str = sb.toString();
                bufferedReader.close();
                fileInputStream.close();
                return str;
            } finally {
            }
        } finally {
        }
    }

    private boolean updateEntitlementUrl(String str) {
        String str2 = LOG_TAG;
        Log.d(str2, "updateEntitlementUrl: " + str);
        if (TextUtils.isEmpty(str) || !isValidUrl(str)) {
            Log.e(str2, "updateEntitlementUrl: invalid url");
            return false;
        }
        this.mContext.getContentResolver().update(Uri.parse(Uri.withAppendedPath(Uri.withAppendedPath(ES_AUTHORITY_URI, "config"), "entitlement_url") + "?entitlement_url=" + str), new ContentValues(), null, null);
        Log.d(str2, "updateEntitlementUrl: update done!");
        return true;
    }

    private static boolean isValidUrl(String str) {
        return Patterns.WEB_URL.matcher(str.toLowerCase()).matches();
    }

    public String getEntitlementUrl(Context context) {
        return NSDSSharedPrefHelper.getEntitlementServerUrl(context, DeviceIdHelper.getDeviceId(context, 0), "http://ses.ericsson-magic.net:10080/generic_devices");
    }

    public void setupSim(JSONObject jSONObject) {
        try {
            String string = jSONObject.has(GlobalSettingsConstants.SS.BSF_IP) ? jSONObject.getString(GlobalSettingsConstants.SS.BSF_IP) : null;
            if (!TextUtils.isEmpty(string)) {
                this.BSF_IP = string;
            }
            if (jSONObject.has("entitlement_url")) {
                String string2 = jSONObject.getString("entitlement_url");
                String str = LOG_TAG;
                Log.d(str, "config entitlement_url: " + string2);
                if (TextUtils.isEmpty(string2)) {
                    return;
                }
                String entitlementUrl = getEntitlementUrl(this.mContext);
                Log.d(str, "storeentitlement: " + entitlementUrl);
                if (string2.equalsIgnoreCase(entitlementUrl)) {
                    Log.d(str, "same entitlement_url ");
                } else {
                    updateEntitlementUrl(string2);
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
