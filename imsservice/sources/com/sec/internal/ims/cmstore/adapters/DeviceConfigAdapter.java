package com.sec.internal.ims.cmstore.adapters;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.JsonSyntaxException;
import com.sec.internal.constants.ims.cmstore.adapter.DeviceConfigAdapterConstants;
import com.sec.internal.constants.ims.cmstore.adapter.TmoFolderIds;
import com.sec.internal.constants.ims.entitilement.EntitlementConfigContract;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.omanetapi.tmoappapi.deviceconfig.DeviceConfig;
import com.sec.internal.ims.cmstore.omanetapi.tmoappapi.deviceconfig.parser.DeviceMstoreConfigParser;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class DeviceConfigAdapter {
    private static final String DEVICE_CONFIG_UPDATED = "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED";
    private String TAG;
    private final Context mContext;
    private final ContentResolver mResolver;
    private final MessageStoreClient mStoreClient;
    public Map<String, String> mStoreDataMap = new HashMap();
    private final BroadcastReceiver mDeviceConfigUpdatedReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.cmstore.adapters.DeviceConfigAdapter.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.samsung.nsds.action.DEVICE_CONFIG_UPDATED".equals(intent.getAction())) {
                Log.d(DeviceConfigAdapter.this.TAG, "DEVICE_CONFIG_UPDATED received");
                DeviceConfigAdapter.this.parseDeviceConfig();
            }
        }
    };

    public DeviceConfigAdapter(MessageStoreClient messageStoreClient, ICloudMessageManagerHelper iCloudMessageManagerHelper) {
        this.TAG = DeviceConfigAdapter.class.getSimpleName();
        String str = this.TAG + "[" + messageStoreClient.getClientID() + "]";
        this.TAG = str;
        Log.d(str, "onCreate()");
        this.mStoreClient = messageStoreClient;
        Context context = messageStoreClient.getContext();
        this.mContext = context;
        this.mResolver = context.getContentResolver();
    }

    private void setTmoFolderIdMStoreDataMap(DeviceConfig.VVMConfig.VVMFolderID vVMFolderID) {
        Log.d(this.TAG, "setTmoFolderIdMStoreDataMap");
        for (DeviceConfig.VVMConfig.FolderName folderName : vVMFolderID.mFolderName) {
            if (!TextUtils.isEmpty(folderName.mName) && TmoFolderIds.equals(folderName.mName)) {
                this.mStoreDataMap.put(folderName.mName, folderName.mValue);
            }
        }
    }

    public void registerDeviceConfigUpdatedReceiver(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.samsung.nsds.action.DEVICE_CONFIG_UPDATED");
        context.registerReceiver(this.mDeviceConfigUpdatedReceiver, intentFilter);
    }

    public void parseDeviceConfig() {
        saveDeviceConfig(getDeviceConfig());
    }

    public void saveDeviceConfig(String str) {
        DeviceConfig.VVMConfig vVMConfig;
        if (str != null) {
            try {
                DeviceConfig parseDeviceConfig = DeviceMstoreConfigParser.parseDeviceConfig(str);
                if (parseDeviceConfig != null && (vVMConfig = parseDeviceConfig.mVVMConfig) != null) {
                    if (!TextUtils.isEmpty(vVMConfig.mWsgUri)) {
                        String str2 = parseDeviceConfig.mVVMConfig.mWsgUri;
                        Log.d(this.TAG, "vvmConfig.WSG_URI: " + str2);
                        this.mStoreDataMap.put(DeviceConfigAdapterConstants.TmoMstoreServerValues.WSG_URI, str2);
                    }
                    if (!TextUtils.isEmpty(parseDeviceConfig.mVVMConfig.mRootUrl)) {
                        String str3 = parseDeviceConfig.mVVMConfig.mRootUrl;
                        this.mStoreDataMap.put(DeviceConfigAdapterConstants.TmoMstoreServerValues.SIT_URL, str3);
                        Log.d(this.TAG, "vvmConfig.rootUtl: " + str3);
                    }
                    DeviceConfig.VVMConfig.VVMFolderID vVMFolderID = parseDeviceConfig.mVVMConfig.mVVMFolderID;
                    if (vVMFolderID != null) {
                        setTmoFolderIdMStoreDataMap(vVMFolderID);
                    }
                }
                Log.e(this.TAG, "deviceConfiguration is null");
                return;
            } catch (JsonSyntaxException unused) {
                Log.e(this.TAG, "saveDeviceConfig: malformed device config xml");
            }
        } else {
            Log.e(this.TAG, "!!!!Device Config XML is NULL!!!!");
        }
        this.mStoreClient.getCloudMessageStrategyManager().getStrategy().setDeviceConfigUsed(this.mStoreDataMap);
    }

    public String getDeviceConfig() {
        String[] strArr = {this.mStoreClient.getCurrentIMSI()};
        Cursor query = this.mResolver.query(EntitlementConfigContract.DeviceConfig.CONTENT_URI, new String[]{"device_config"}, "imsi = ?", strArr, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    String string = query.getString(0);
                    query.close();
                    return string;
                }
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (query == null) {
            return null;
        }
        query.close();
        return null;
    }
}
