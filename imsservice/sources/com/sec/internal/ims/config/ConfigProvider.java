package com.sec.internal.ims.config;

import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.util.Log;
import com.sec.internal.constants.ims.aec.AECNamespace;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.os.IccCardConstants;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.ims.config.adapters.StorageAdapter;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.interfaces.ims.config.IStorageAdapter;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class ConfigProvider extends ContentProvider {
    public static final String CONFIG_DB_NAME_PREFIX = "config_";
    private static final String LOG_TAG = "ConfigProvider";
    private static final int MAX_SERVER_COUNT;
    private static final int N_PARAMETER = 1;
    private static final IntentFilter SIM_STATE_CHANGED_INTENT_FILTER;
    static final Map<String, List<String>> mAppIdMap;
    private UriMatcher mMatcher;
    final Map<Integer, Map<Integer, IStorageAdapter>> mServerIdStorageMap = new HashMap();
    final Map<Integer, Map<String, Integer>> mAppIdServerIdMap = new ConcurrentHashMap();
    private final IStorageAdapter mEmptyStorage = new StorageAdapter();
    private Map<String, IReadConfigParam> mConfigTableMap = new ConcurrentHashMap();

    private interface IReadConfigParam {
        Map<String, String> readParam(String str, int i);
    }

    static {
        Map<String, String> map = ConfigConstants.APPID_MAP;
        MAX_SERVER_COUNT = map.size();
        mAppIdMap = new TreeMap();
        IntentFilter intentFilter = new IntentFilter();
        SIM_STATE_CHANGED_INTENT_FILTER = intentFilter;
        intentFilter.addAction("android.intent.action.SIM_STATE_CHANGED");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            Map<String, List<String>> map2 = mAppIdMap;
            List<String> list = map2.get(entry.getValue());
            if (list == null) {
                list = new ArrayList<>();
            }
            list.add(entry.getKey());
            map2.put(entry.getValue(), list);
        }
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Log.i(LOG_TAG, "ConfigProvider was created");
        initConfigTable();
        UriMatcher uriMatcher = new UriMatcher(0);
        this.mMatcher = uriMatcher;
        uriMatcher.addURI("com.samsung.rcs.autoconfigurationprovider", "parameter/*", 1);
        getContext().registerReceiver(new BroadcastReceiver() { // from class: com.sec.internal.ims.config.ConfigProvider.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if ("android.intent.action.SIM_STATE_CHANGED".equals(intent.getAction())) {
                    String stringExtra = intent.getStringExtra("ss");
                    int intExtra = intent.getIntExtra(PhoneConstants.PHONE_KEY, 0);
                    if (IccCardConstants.INTENT_VALUE_ICC_LOADED.equals(stringExtra)) {
                        Log.i("ConfigProvider[" + intExtra + "]", "SIM LOADED");
                        ConfigProvider.this.initStorage(context, intExtra, null);
                    }
                }
            }
        }, SIM_STATE_CHANGED_INTENT_FILTER);
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Map<String, String> queryMultipleStorage;
        String uri2 = uri.toString();
        Log.i(LOG_TAG, "query uri:" + IMSLog.checker(uri2));
        if (!uri2.matches("^content://com.samsung.rcs.autoconfigurationprovider/[\\.\\w-_/*#]*")) {
            throw new IllegalArgumentException(uri2 + " is not a correct AutoConfigurationProvider Uri");
        }
        if (uri2.contains("root/*") || uri2.contains("root/application/*") || uri2.contains("content://com.samsung.rcs.autoconfigurationprovider/*")) {
            queryMultipleStorage = queryMultipleStorage(uri);
        } else {
            queryMultipleStorage = queryStorage(uri, getStorageByUri(uri));
        }
        if (queryMultipleStorage == null || queryMultipleStorage.isEmpty()) {
            Log.i(LOG_TAG, "can not find readData from mStorage");
            return null;
        }
        String[] strArr3 = new String[queryMultipleStorage.keySet().size()];
        String[] strArr4 = new String[queryMultipleStorage.keySet().size()];
        int i = 0;
        for (Map.Entry<String, String> entry : queryMultipleStorage.entrySet()) {
            strArr3[i] = entry.getKey();
            strArr4[i] = entry.getValue();
            i++;
        }
        MatrixCursor matrixCursor = new MatrixCursor(strArr3);
        matrixCursor.addRow(strArr4);
        return matrixCursor;
    }

    private Map<String, String> queryStorage(Uri uri, IStorageAdapter iStorageAdapter) {
        Map<String, String> readAll;
        String uri2 = uri.toString();
        Log.i(LOG_TAG, "queryStorage path " + uri2);
        if (iStorageAdapter.getState() != 1) {
            Log.i(LOG_TAG, "provider is not ready, return empty!");
            return new HashMap();
        }
        if (this.mMatcher.match(uri) == 1) {
            readAll = readDataByParam(uri2.replaceFirst("content://com.samsung.rcs.autoconfigurationprovider/parameter/", "").replaceAll("#simslot\\d", ""), UriUtil.getSimSlotFromUri(uri));
        } else {
            readAll = iStorageAdapter.readAll(uri2.replaceFirst(ConfigConstants.CONFIG_URI, "").replaceAll("#simslot\\d", ""));
        }
        return readAll != null ? readAll : new HashMap();
    }

    private Map<String, String> queryMultipleStorage(Uri uri) {
        int simSlotFromUri = UriUtil.getSimSlotFromUri(uri);
        Map<Integer, IStorageAdapter> map = this.mServerIdStorageMap.get(Integer.valueOf(simSlotFromUri));
        String uri2 = uri.toString();
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        Log.i(LOG_TAG, "queryMultipleStorage path " + uri2 + " map " + map);
        if (map == null || map.isEmpty()) {
            return null;
        }
        if (uri2.contains("root/application/*") || uri2.contains("content://com.samsung.rcs.autoconfigurationprovider/*")) {
            Iterator<IStorageAdapter> it = map.values().iterator();
            while (it.hasNext()) {
                treeMap.putAll(queryStorage(uri, it.next()));
            }
        } else {
            treeMap.putAll(queryStorage(uri, map.get(0)));
            Uri parse = Uri.parse(ImsUtil.getPathWithPhoneId(uri2.replaceAll("\\*#simslot\\d", "") + (uri2.contains("root") ? "application/*" : "root/application/*"), simSlotFromUri));
            for (int i = 1; i < map.keySet().size(); i++) {
                if (map.get(Integer.valueOf(i)) != null) {
                    treeMap.putAll(queryStorage(parse, map.get(Integer.valueOf(i))));
                }
            }
        }
        return treeMap;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        String uri2 = uri.toString();
        Log.i(LOG_TAG, "delete uri:" + IMSLog.checker(uri2));
        if (!uri2.matches("^content://com.samsung.rcs.autoconfigurationprovider/[\\.\\w-_/#]*")) {
            throw new IllegalArgumentException(uri2 + " is not a correct AutoConfigurationProvider Uri");
        }
        IStorageAdapter storageByUri = getStorageByUri(uri);
        if (storageByUri.getState() != 1) {
            Log.i(LOG_TAG, "provider is not ready, return empty!");
            return 0;
        }
        String replaceAll = uri2.replaceFirst(ConfigConstants.CONFIG_URI, "").replaceAll("#simslot\\d", "");
        int delete = storageByUri.delete(replaceAll);
        getContext().getContentResolver().notifyChange(Uri.parse(replaceAll), null);
        return delete;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        throw new UnsupportedOperationException("not supported");
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        String uri2 = uri.toString();
        Log.i(LOG_TAG, "insert uri:" + uri);
        Log.i(LOG_TAG, "insert uri:" + IMSLog.checker(uri2));
        if (!uri2.matches("^content://com.samsung.rcs.autoconfigurationprovider/[\\.\\w-_/#]*")) {
            throw new IllegalArgumentException(uri2 + " is not a correct AutoConfigurationProvider Uri");
        }
        IStorageAdapter storageByUri = getStorageByUri(uri);
        if (storageByUri.getState() != 1) {
            Log.i(LOG_TAG, "provider is not ready, return empty!");
            return null;
        }
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
            if (entry.getValue() instanceof String) {
                hashMap.put(uri2.replaceFirst(ConfigConstants.CONFIG_URI, "").replaceAll("#simslot\\d", "") + entry.getKey(), (String) entry.getValue());
            }
        }
        storageByUri.writeAll(hashMap);
        getContext().getContentResolver().notifyChange(uri, null);
        return uri;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        insert(uri, contentValues);
        return contentValues.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0116 A[Catch: all -> 0x0171, TryCatch #0 {, blocks: (B:9:0x0040, B:11:0x004c, B:12:0x005a, B:14:0x0060, B:16:0x0066, B:19:0x0086, B:22:0x009f, B:25:0x0116, B:26:0x012e, B:28:0x0135, B:29:0x015e, B:31:0x0167, B:32:0x016f, B:35:0x00c3, B:37:0x00cd), top: B:8:0x0040 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0135 A[Catch: all -> 0x0171, TryCatch #0 {, blocks: (B:9:0x0040, B:11:0x004c, B:12:0x005a, B:14:0x0060, B:16:0x0066, B:19:0x0086, B:22:0x009f, B:25:0x0116, B:26:0x012e, B:28:0x0135, B:29:0x015e, B:31:0x0167, B:32:0x016f, B:35:0x00c3, B:37:0x00cd), top: B:8:0x0040 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0167 A[Catch: all -> 0x0171, TryCatch #0 {, blocks: (B:9:0x0040, B:11:0x004c, B:12:0x005a, B:14:0x0060, B:16:0x0066, B:19:0x0086, B:22:0x009f, B:25:0x0116, B:26:0x012e, B:28:0x0135, B:29:0x015e, B:31:0x0167, B:32:0x016f, B:35:0x00c3, B:37:0x00cd), top: B:8:0x0040 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.sec.internal.interfaces.ims.config.IStorageAdapter initStorage(android.content.Context r10, int r11, java.util.List<java.lang.String> r12) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.config.ConfigProvider.initStorage(android.content.Context, int, java.util.List):com.sec.internal.interfaces.ims.config.IStorageAdapter");
    }

    private IStorageAdapter initAdditionalStorage(Context context, int i, List<String> list, String str, IStorageAdapter iStorageAdapter) {
        Log.i(LOG_TAG, "initAdditionalStorage: phoneId: " + i);
        if (this.mAppIdServerIdMap.get(Integer.valueOf(i)) == null) {
            this.mAppIdServerIdMap.put(Integer.valueOf(i), new ConcurrentHashMap());
            for (int i2 = 0; i2 < MAX_SERVER_COUNT; i2++) {
                String read = iStorageAdapter.read("root/access-control/default/app-id/" + i2);
                if (read == null) {
                    break;
                }
                this.mAppIdServerIdMap.get(Integer.valueOf(i)).put(read, 0);
            }
            int i3 = 0;
            while (i3 < MAX_SERVER_COUNT) {
                for (int i4 = 0; i4 < MAX_SERVER_COUNT; i4++) {
                    String read2 = iStorageAdapter.read("root/access-control/server/" + i3 + "/app-id/" + i4);
                    if (read2 == null) {
                        break;
                    }
                    this.mAppIdServerIdMap.get(Integer.valueOf(i)).put(read2, Integer.valueOf(i3 + 1));
                }
                i3++;
                if (!this.mAppIdServerIdMap.get(Integer.valueOf(i)).containsValue(Integer.valueOf(i3))) {
                    break;
                }
                StorageAdapter storageAdapter = new StorageAdapter();
                storageAdapter.open(context, str + "_" + i3, i);
                this.mServerIdStorageMap.get(Integer.valueOf(i)).put(Integer.valueOf(i3), storageAdapter);
            }
            Log.i(LOG_TAG, "mAppIdServerIdMap " + this.mAppIdServerIdMap);
            Log.i(LOG_TAG, "mServerIdStorageMap " + this.mServerIdStorageMap);
        }
        if (list == null) {
            return this.mServerIdStorageMap.get(Integer.valueOf(i)).get(0);
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            IStorageAdapter iStorageAdapter2 = this.mServerIdStorageMap.get(Integer.valueOf(i)).get(this.mAppIdServerIdMap.get(Integer.valueOf(i)).get(it.next()));
            if (iStorageAdapter2 != null) {
                return iStorageAdapter2;
            }
        }
        return this.mServerIdStorageMap.get(Integer.valueOf(i)).get(0);
    }

    private void setConfigTable(String str, IReadConfigParam iReadConfigParam) {
        this.mConfigTableMap.put(str.toLowerCase(Locale.US), iReadConfigParam);
    }

    private void initConfigTable() {
        ReadRootParm readRootParm = new ReadRootParm();
        setConfigTable("version", readRootParm);
        setConfigTable("validity", readRootParm);
        setConfigTable("token", readRootParm);
        ReadRootAppParm readRootAppParm = new ReadRootAppParm();
        setConfigTable(ConfigConstants.ConfigTable.HOME_NETWORK_DOMAIN_NAME, readRootAppParm);
        setConfigTable(ConfigConstants.ConfigTable.PRIVATE_USER_IDENTITY, readRootAppParm);
        setConfigTable(ConfigConstants.ConfigTable.PUBLIC_USER_IDENTITY, readRootAppParm);
        setConfigTable("address", readRootAppParm);
        setConfigTable(ConfigConstants.ConfigTable.LBO_PCSCF_ADDRESS_TYPE, readRootAppParm);
        setConfigTable(ConfigConstants.ConfigTable.KEEP_ALIVE_ENABLED, readRootAppParm);
        setConfigTable(ConfigConstants.ConfigTable.TIMER_T1, readRootAppParm);
        setConfigTable(ConfigConstants.ConfigTable.TIMER_T2, readRootAppParm);
        setConfigTable(ConfigConstants.ConfigTable.TIMER_T4, readRootAppParm);
        setConfigTable(ConfigConstants.ConfigTable.REG_RETRY_BASE_TIME, readRootAppParm);
        setConfigTable(ConfigConstants.ConfigTable.REG_RETRY_MAX_TIME, readRootAppParm);
        ReadExtParm readExtParm = new ReadExtParm();
        setConfigTable(ConfigConstants.ConfigTable.EXT_MAX_SIZE_IMAGE_SHARE, readExtParm);
        setConfigTable("maxtimevideoshare", readExtParm);
        setConfigTable(ConfigConstants.ConfigTable.EXT_Q_VALUE, readExtParm);
        setConfigTable(ConfigConstants.ConfigTable.EXT_INT_URL_FORMAT, readExtParm);
        setConfigTable(ConfigConstants.ConfigTable.EXT_NAT_URL_FORMAT, readExtParm);
        setConfigTable(ConfigConstants.ConfigTable.EXT_RCS_VOLTE_SINGLE_REGISTRATION, readExtParm);
        setConfigTable(ConfigConstants.ConfigTable.EXT_END_USER_CONF_REQID, readExtParm);
        setConfigTable("uuid_Value", readExtParm);
        ReadAppAuthParm readAppAuthParm = new ReadAppAuthParm();
        setConfigTable("UserName", readAppAuthParm);
        setConfigTable("UserPwd", readAppAuthParm);
        setConfigTable("realm", readAppAuthParm);
        ReadServiceParm readServiceParm = new ReadServiceParm();
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_SUPPORTED_RCS_VERSIONS, readServiceParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_SUPPORTED_RCS_PROFILE_VERSIONS, readServiceParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_RCS_STATE, readServiceParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_RCS_DISABLED_STATE, readServiceParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_PRESENCE_PRFL, readServiceParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_CHAT_AUTH, readServiceParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_GROUP_CHAT_AUTH, readServiceParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_FT_AUTH, readServiceParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_SLM_AUTH, readServiceParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_GEOPULL_AUTH, readServiceParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_GEOPUSH_AUTH, readServiceParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_VS_AUTH, readServiceParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_IS_AUTH, readServiceParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_RCS_IPVOICECALL_AUTH, readServiceParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_RCS_IPVIDEOCALL_AUTH, readServiceParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_IR94_VIDEO_AUTH, readServiceParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_ALLOW_RCS_EXTENSIONS, readServiceParm);
        ReadDataOffParm readDataOffParm = new ReadDataOffParm();
        setConfigTable(ConfigConstants.ConfigTable.DATAOFF_RCS_MESSAGING, readDataOffParm);
        setConfigTable(ConfigConstants.ConfigTable.DATAOFF_FILE_TRANSFER, readDataOffParm);
        setConfigTable(ConfigConstants.ConfigTable.DATAOFF_SMSOIP, readDataOffParm);
        setConfigTable(ConfigConstants.ConfigTable.DATAOFF_MMS, readDataOffParm);
        setConfigTable(ConfigConstants.ConfigTable.DATAOFF_VOLTE, readDataOffParm);
        setConfigTable(ConfigConstants.ConfigTable.DATAOFF_IP_VIDEO, readDataOffParm);
        setConfigTable(ConfigConstants.ConfigTable.DATAOFF_PROVISIONING, readDataOffParm);
        setConfigTable(ConfigConstants.ConfigTable.DATAOFF_SYNC, readDataOffParm);
        ReadCapDiscoveryParm readCapDiscoveryParm = new ReadCapDiscoveryParm();
        setConfigTable(ConfigConstants.ConfigTable.CAPDISCOVERY_DISABLE_INITIAL_SCAN, readCapDiscoveryParm);
        setConfigTable(ConfigConstants.ConfigTable.CAPDISCOVERY_POLLING_PERIOD, readCapDiscoveryParm);
        setConfigTable(ConfigConstants.ConfigTable.CAPDISCOVERY_POLLING_RATE, readCapDiscoveryParm);
        setConfigTable(ConfigConstants.ConfigTable.CAPDISCOVERY_POLLING_RATE_PERIOD, readCapDiscoveryParm);
        setConfigTable(ConfigConstants.ConfigTable.CAPDISCOVERY_CAPINFO_EXPIRY, readCapDiscoveryParm);
        setConfigTable(ConfigConstants.ConfigTable.CAPDISCOVERY_NON_RCS_CAPINFO_EXPIRY, readCapDiscoveryParm);
        setConfigTable(ConfigConstants.ConfigTable.CAPDISCOVERY_DEFAULT_DISC, readCapDiscoveryParm);
        setConfigTable(ConfigConstants.ConfigTable.CAPDISCOVERY_CAP_DISC_COMMON_STACK, readCapDiscoveryParm);
        setConfigTable(ConfigConstants.ConfigTable.CAPDISCOVERY_MAX_ENTRIES_IN_LIST, readCapDiscoveryParm);
        setConfigTable(ConfigConstants.ConfigTable.CAPDISCOVERY_ALLOWED_PREFIXES, readCapDiscoveryParm);
        setConfigTable(ConfigConstants.ConfigTable.CAPDISCOVERY_JOYN_MSGCAPVALIDITY, readCapDiscoveryParm);
        setConfigTable(ConfigConstants.ConfigTable.CAPDISCOVERY_JOYN_LASTSEENACTIVE, readCapDiscoveryParm);
        ReadPresenceParm readPresenceParm = new ReadPresenceParm();
        setConfigTable(ConfigConstants.ConfigTable.PRESENCE_PUBLISH_TIMER, readPresenceParm);
        setConfigTable(ConfigConstants.ConfigTable.PRESENCE_THROTTLE_PUBLISH, readPresenceParm);
        setConfigTable(ConfigConstants.ConfigTable.PRESENCE_MAX_SUBSCRIPTION_LIST, readPresenceParm);
        setConfigTable(ConfigConstants.ConfigTable.PRESENCE_RLS_URI, readPresenceParm);
        setConfigTable(ConfigConstants.ConfigTable.PRESENCE_LOC_INFO_MAX_VALID_TIME, readPresenceParm);
        setConfigTable(ConfigConstants.ConfigTable.PRESENCE_CLIENT_OBJ_DATALIMIT, readPresenceParm);
        ReadImFtParm readImFtParm = new ReadImFtParm();
        setConfigTable(ConfigConstants.ConfigTable.IM_IM_MSG_TECH, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_IM_CAP_ALWAYS_ON, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_IM_WARN_SF, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_GROUP_CHAT_FULL_STAND_FWD, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_GROUP_CHAT_ONLY_F_STAND_FWD, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_SMS_FALLBACK_AUTH, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_IM_CAP_NON_RCS, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_IM_WARN_IW, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_AUT_ACCEPT, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_IM_SESSION_START, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_AUT_ACCEPT_GROUP_CHAT, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_FIRST_MSG_INVITE, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_TIMER_IDLE, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_MAX_CONCURRENT_SESSION, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_MULTIMEDIA_CHAT, readImFtParm);
        setConfigTable("MaxSize", readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_MAX_SIZE_1_TO_1, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_MAX_SIZE_1_TO_M, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_FT_WARN_SIZE, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_MAX_SIZE_FILE_TR, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_MAX_SIZE_FILE_TR_INCOMING, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_FT_THUMB, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_FT_ST_AND_FW_ENABLED, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_FT_CAP_ALWAYS_ON, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_FT_AUT_ACCEPT, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_FT_HTTP_CS_URI, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_FT_HTTP_DL_URI, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_FT_HTTP_CS_USER, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_FT_HTTP_CS_PWD, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_FT_DEFAULT_MECH, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_FT_HTTP_FALLBACK, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_PRES_SRV_CAP, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_DEFERRED_MSG_FUNC_URI, readImFtParm);
        setConfigTable("max_adhoc_group_size", readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_CONF_FCTY_URI, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_EXPLODER_URI, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_MASS_FCTY_URI, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_CHAT_REVOKE_TIMER, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_FT_HTTP_FT_WARN_SIZE, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_FT_HTTP_MAX_SIZE_FILE_TR, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_FT_HTTP_MAX_SIZE_FILE_TR_INCOMING, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_MAX_ADHOC_OPEN_GROUP_SIZE, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_SPAM_REPORTING_URI, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_EXT_CB_FT_HTTP_CS_URI, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_EXT_MAX_SIZE_EXTRA_FILE_TR, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_EXT_FT_HTTP_EXTRA_CS_URI, readImFtParm);
        setConfigTable(ConfigConstants.ConfigTable.IM_EXT_MAX_IMDN_AGGREGATION, readImFtParm);
        ReadEnrichedCallingParm readEnrichedCallingParm = new ReadEnrichedCallingParm();
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_COMPOSER_AUTH, readEnrichedCallingParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_SHARED_MAP_AUTH, readEnrichedCallingParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_SHARED_SKETCH_AUTH, readEnrichedCallingParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_POST_CALL_AUTH, readEnrichedCallingParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_VBC_AUTH, readEnrichedCallingParm);
        setConfigTable(ConfigConstants.ConfigTable.DATAOFF_CONTENT_SHARE, readEnrichedCallingParm);
        setConfigTable(ConfigConstants.ConfigTable.DATAOFF_PRE_AND_POST_CALL, readEnrichedCallingParm);
        ReadStandalonMsgParm readStandalonMsgParm = new ReadStandalonMsgParm();
        setConfigTable(ConfigConstants.ConfigTable.CPM_SLM_MAX_MSG_SIZE, readStandalonMsgParm);
        setConfigTable("MaxSize", readStandalonMsgParm);
        setConfigTable(ConfigConstants.ConfigTable.SLM_SWITCH_OVER_SIZE, readStandalonMsgParm);
        ReadCpmMessageStoreParm readCpmMessageStoreParm = new ReadCpmMessageStoreParm();
        setConfigTable(ConfigConstants.ConfigTable.CPM_MESSAGE_STORE_URL, readCpmMessageStoreParm);
        setConfigTable("AuthProt", readCpmMessageStoreParm);
        setConfigTable(ConfigConstants.ConfigTable.CPM_MESSAGE_STORE_USER_NAME, readCpmMessageStoreParm);
        setConfigTable(ConfigConstants.ConfigTable.CPM_MESSAGE_STORE_USER_PWD, readCpmMessageStoreParm);
        setConfigTable("EventRpting", readCpmMessageStoreParm);
        setConfigTable(ConfigConstants.ConfigTable.CPM_MESSAGE_STORE_AUTH_ARCHIVE, readCpmMessageStoreParm);
        setConfigTable("SyncTimer", readCpmMessageStoreParm);
        setConfigTable("DataConnectionSyncTimer", readCpmMessageStoreParm);
        setConfigTable("SMSStore", readCpmMessageStoreParm);
        setConfigTable("MMSStore", readCpmMessageStoreParm);
        ReadOtherParm readOtherParm = new ReadOtherParm();
        setConfigTable(ConfigConstants.ConfigTable.OTHER_WARN_SIZE_IMAGE_SHARE, readOtherParm);
        setConfigTable("maxtimevideoshare", readOtherParm);
        setConfigTable(ConfigConstants.ConfigTable.OTHER_EXTENSIONS_MAX_MSRP_SIZE, readOtherParm);
        setConfigTable(ConfigConstants.ConfigTable.OTHER_CALL_COMPOSER_TIMER_IDLE, readOtherParm);
        setConfigTable(ConfigConstants.ConfigTable.XDMS_XCAP_ROOT_URI, new ReadXdmsParm());
        ReadTransportProtoParm readTransportProtoParm = new ReadTransportProtoParm();
        setConfigTable(ConfigConstants.ConfigTable.TRANSPORTPROTO_PS_MEDIA, readTransportProtoParm);
        setConfigTable(ConfigConstants.ConfigTable.TRANSPORTPROTO_WIFI_MEDIA, readTransportProtoParm);
        setConfigTable(ConfigConstants.ConfigTable.TRANSPORTPROTO_PS_SIGNALLING, readTransportProtoParm);
        setConfigTable(ConfigConstants.ConfigTable.TRANSPORTPROTO_WIFI_SIGNALLING, readTransportProtoParm);
        setConfigTable(ConfigConstants.ConfigTable.TRANSPORTPROTO_PS_RT_MEDIA, readTransportProtoParm);
        setConfigTable(ConfigConstants.ConfigTable.TRANSPORTPROTO_PS_SIGNALLING_ROAMING, readTransportProtoParm);
        setConfigTable(ConfigConstants.ConfigTable.TRANSPORTPROTO_PS_MEDIA_ROAMING, readTransportProtoParm);
        setConfigTable(ConfigConstants.ConfigTable.TRANSPORTPROTO_PS_RT_MEDIA_ROAMING, readTransportProtoParm);
        setConfigTable(ConfigConstants.ConfigTable.TRANSPORTPROTO_WIFI_RT_MEDIA, readTransportProtoParm);
        ReadPublicAccountParm readPublicAccountParm = new ReadPublicAccountParm();
        setConfigTable(ConfigConstants.ConfigTable.PUBLIC_ACCOUNT_ADDR, readPublicAccountParm);
        setConfigTable(ConfigConstants.ConfigTable.PUBLIC_ACCOUNT_ADDRTYPE, readPublicAccountParm);
        ReadPersonalProfileParm readPersonalProfileParm = new ReadPersonalProfileParm();
        setConfigTable(ConfigConstants.ConfigTable.PERSONAL_PROFILE_ADDR, readPersonalProfileParm);
        setConfigTable(ConfigConstants.ConfigTable.PERSONAL_PROFILE_ADDRTYPE, readPersonalProfileParm);
        ReadUxParm readUxParm = new ReadUxParm();
        setConfigTable(ConfigConstants.ConfigTable.UX_MESSAGING_UX, readUxParm);
        setConfigTable(ConfigConstants.ConfigTable.UX_USER_ALIAS_AUTH, readUxParm);
        setConfigTable(ConfigConstants.ConfigTable.UX_SPAM_NOTIFICATION_TEXT, readUxParm);
        setConfigTable(ConfigConstants.ConfigTable.UX_TOKEN_LINK_NOTIFICATION_TEXT, readUxParm);
        setConfigTable(ConfigConstants.ConfigTable.UX_UNAVAILABLE_ENDPOINT_TEXT, readUxParm);
        setConfigTable(ConfigConstants.ConfigTable.UX_VIDEO_AND_ENCALL_UX, readUxParm);
        setConfigTable(ConfigConstants.ConfigTable.UX_IR51_SWITCH_UX, readUxParm);
        setConfigTable(ConfigConstants.ConfigTable.UX_MSG_FB_DEFAULT, readUxParm);
        setConfigTable(ConfigConstants.ConfigTable.UX_FT_FB_DEFAULT, readUxParm);
        setConfigTable(ConfigConstants.ConfigTable.UX_CALL_LOG_BEARER_DIFFER, readUxParm);
        setConfigTable(ConfigConstants.ConfigTable.UX_ALLOW_ENRICHED_CHATBOT_SEARCH_DEFAULT, readUxParm);
        setConfigTable(ConfigConstants.ConfigTable.UX_REALTIME_USER_ALIAS_AUTH, readUxParm);
        ReadClientControlParm readClientControlParm = new ReadClientControlParm();
        setConfigTable(ConfigConstants.ConfigTable.CLIENTCONTROL_RECONNECT_GUARD_TIMER, readClientControlParm);
        setConfigTable(ConfigConstants.ConfigTable.CLIENTCONTROL_CFS_TRIGGER, readClientControlParm);
        setConfigTable(ConfigConstants.ConfigTable.CLIENTCONTROL_MAX1_TO_MANY_RECIPIENTS, readClientControlParm);
        setConfigTable(ConfigConstants.ConfigTable.CLIENTCONTROL_ONE_TO_MANY_SELECTED_TECH, readClientControlParm);
        setConfigTable(ConfigConstants.ConfigTable.CLIENTCONTROL_DISPLAY_NOTIFICATION_SWITCH, readClientControlParm);
        setConfigTable(ConfigConstants.ConfigTable.CLIENTCONTROL_FT_MAX1_TO_MANY_RECIPIENTS, readClientControlParm);
        setConfigTable(ConfigConstants.ConfigTable.CLIENTCONTROL_SERVICE_AVAILABILITY_INFO_EXPIRY, readClientControlParm);
        setConfigTable(ConfigConstants.ConfigTable.CLIENTCONTROL_FT_HTTP_CAP_ALWAYS_ON, readClientControlParm);
        ReadMsisdnParm readMsisdnParm = new ReadMsisdnParm();
        setConfigTable(ConfigConstants.ConfigTable.MSISDN_SKIP_COUNT, readMsisdnParm);
        setConfigTable(ConfigConstants.ConfigTable.MSISDN_MSGUI_DISPLAY, readMsisdnParm);
        ReadChatbotParm readChatbotParm = new ReadChatbotParm();
        setConfigTable(ConfigConstants.ConfigTable.CHATBOT_CHATBOTDIRECTORY, readChatbotParm);
        setConfigTable(ConfigConstants.ConfigTable.CHATBOT_BOTINFOFQDNROOT, readChatbotParm);
        setConfigTable(ConfigConstants.ConfigTable.CHATBOT_CHATBOTBLACKLIST, readChatbotParm);
        setConfigTable(ConfigConstants.ConfigTable.CHATBOT_MSGHISTORYSELECTABLE, readChatbotParm);
        setConfigTable(ConfigConstants.ConfigTable.CHATBOT_SPECIFIC_CHATBOTS_LIST, readChatbotParm);
        setConfigTable(ConfigConstants.ConfigTable.CHATBOT_IDENTITY_IN_ENRICHED_SEARCH, readChatbotParm);
        setConfigTable(ConfigConstants.ConfigTable.CHATBOT_PRIVACY_DISABLE, readChatbotParm);
        setConfigTable(ConfigConstants.ConfigTable.CHATBOT_CHATBOT_MSG_TECH, readChatbotParm);
        ReadMessageStoreParm readMessageStoreParm = new ReadMessageStoreParm();
        setConfigTable(ConfigConstants.ConfigTable.MESSAGESTORE_MSG_STORE_URL, readMessageStoreParm);
        setConfigTable(ConfigConstants.ConfigTable.MESSAGESTORE_MSG_STORE_NOTIF_URL, readMessageStoreParm);
        setConfigTable(ConfigConstants.ConfigTable.MESSAGESTORE_MSG_STORE_AUTH, readMessageStoreParm);
        setConfigTable(ConfigConstants.ConfigTable.MESSAGESTORE_MSG_STORE_USER_NAME, readMessageStoreParm);
        setConfigTable(ConfigConstants.ConfigTable.MESSAGESTORE_MSG_STORE_USER_PWD, readMessageStoreParm);
        setConfigTable(ConfigConstants.ConfigTable.PLUGINS_CATALOGURI, new ReadPluginsParm());
        ReadServiceExtParm readServiceExtParm = new ReadServiceExtParm();
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_RCS_STATE, readServiceExtParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICES_RCS_DISABLED_STATE, readServiceExtParm);
        ReadServiceProviderExtParm readServiceProviderExtParm = new ReadServiceProviderExtParm();
        setConfigTable(ConfigConstants.ConfigTable.SPG_URL, readServiceProviderExtParm);
        setConfigTable(ConfigConstants.ConfigTable.SPG_PARAMS_URL, readServiceProviderExtParm);
        setConfigTable(ConfigConstants.ConfigTable.NMS_URL, readServiceProviderExtParm);
        setConfigTable(ConfigConstants.ConfigTable.NC_URL, readServiceProviderExtParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICEPROVIDEREXT_FTHTTPGROUPCHAT, readServiceProviderExtParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICEPROVIDEREXT_CHATBOT_USER_NAME, readServiceProviderExtParm);
        setConfigTable(ConfigConstants.ConfigTable.SERVICEPROVIDEREXT_CHATBOT_PASSWORD, readServiceProviderExtParm);
    }

    private Map<String, String> readDataByParam(String str, int i) {
        HashMap hashMap = new HashMap();
        if (str == null || str.isEmpty()) {
            return hashMap;
        }
        Map<String, IReadConfigParam> map = this.mConfigTableMap;
        Locale locale = Locale.US;
        IReadConfigParam iReadConfigParam = map.get(str.toLowerCase(locale));
        return iReadConfigParam != null ? iReadConfigParam.readParam(str.toLowerCase(locale), i) : hashMap;
    }

    class ReadRootParm implements IReadConfigParam {
        ReadRootParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            HashMap hashMap = new HashMap();
            if ("version".equalsIgnoreCase(str) || "validity".equalsIgnoreCase(str)) {
                return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.VERS_PATH, i).readAll(ConfigConstants.ConfigPath.VERS_PATH + str);
            }
            if (!"token".equalsIgnoreCase(str)) {
                return hashMap;
            }
            return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.TOKEN_PATH, i).readAll(ConfigConstants.ConfigPath.TOKEN_PATH + str);
        }
    }

    static Map<String, String> getPublicUserIdentities(String str, IStorageAdapter iStorageAdapter) {
        Map<String, String> readAll;
        HashMap hashMap = new HashMap();
        String lowerCase = str.toLowerCase(Locale.US);
        int i = 0;
        while (true) {
            lowerCase.hashCode();
            switch (lowerCase) {
                case "root/application/0/public_user_identity_list/":
                    readAll = iStorageAdapter.readAll(str + ConfigConstants.ConfigTable.PUBLIC_USER_IDENTITY + "/" + i);
                    break;
                case "root/application/0/3gpp_ims/public_user_identity_list/":
                    readAll = iStorageAdapter.readAll(str + "node/" + i + "/" + ConfigConstants.ConfigTable.PUBLIC_USER_IDENTITY);
                    break;
                case "root/application/0/public_user_identity_list/public_user_identities/":
                    readAll = iStorageAdapter.readAll(str + ConfigConstants.ConfigTable.PUBLIC_USER_IDENTITY + (i + 1));
                    break;
                default:
                    readAll = null;
                    break;
            }
            if (readAll != null && !readAll.isEmpty()) {
                hashMap.putAll(readAll);
                i++;
            }
        }
        return hashMap;
    }

    static Map<String, String> getLboPcscfAddresses(String str, String str2, IStorageAdapter iStorageAdapter) {
        Map<String, String> readAll;
        HashMap hashMap = new HashMap();
        Locale locale = Locale.US;
        String lowerCase = str.toLowerCase(locale);
        String lowerCase2 = str2.toLowerCase(locale);
        if (!lowerCase2.equals("address") && !lowerCase2.equals(ConfigConstants.ConfigTable.LBO_PCSCF_ADDRESS_TYPE)) {
            return hashMap;
        }
        int i = 0;
        while (true) {
            lowerCase.hashCode();
            switch (lowerCase) {
                case "root/application/0/3gpp_ims/lbo_p-cscf_addresses/":
                case "root/application/0/lbo_p-cscf_address/lbo_p-cscf_addresses/":
                    readAll = iStorageAdapter.readAll(str + lowerCase2 + (i + 1));
                    break;
                case "root/application/0/lbo_p-cscf_address/":
                    readAll = iStorageAdapter.readAll(str + lowerCase2 + "/" + i);
                    break;
                case "root/application/0/3gpp_ims/lbo_p-cscf_address/":
                    readAll = iStorageAdapter.readAll(str + "node/" + i + "/" + lowerCase2);
                    break;
                default:
                    readAll = null;
                    break;
            }
            if (readAll != null && !readAll.isEmpty()) {
                hashMap.putAll(readAll);
                i++;
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> getPublicUserIdentities(IStorageAdapter iStorageAdapter) {
        Map<String, String> publicUserIdentities = getPublicUserIdentities(ConfigConstants.ConfigPath.PUBLIC_USER_IDENTITY_CHARACTERISTIC_PATH, iStorageAdapter);
        if (publicUserIdentities.isEmpty()) {
            publicUserIdentities = getPublicUserIdentities(ConfigConstants.ConfigPath.PUBLIC_USER_IDENTITY_CHARACTERISTIC_UP10_PATH, iStorageAdapter);
        }
        return !publicUserIdentities.isEmpty() ? publicUserIdentities : getPublicUserIdentities(ConfigConstants.ConfigPath.PUBLIC_USER_IDENTITY_CHARACTERISTIC_UP20_PATH, iStorageAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> getLboPcscfAddresses(String str, IStorageAdapter iStorageAdapter) {
        Map<String, String> lboPcscfAddresses = getLboPcscfAddresses(ConfigConstants.ConfigPath.LBO_PCSCF_ADDRESS_CHARACTERISTIC_PATH, str, iStorageAdapter);
        if (lboPcscfAddresses.isEmpty()) {
            lboPcscfAddresses = getLboPcscfAddresses(ConfigConstants.ConfigPath.LBO_PCSCF_ADDRESSES_CHARACTERISTIC_UP10_PATH, str, iStorageAdapter);
        }
        if (lboPcscfAddresses.isEmpty()) {
            lboPcscfAddresses = getLboPcscfAddresses(ConfigConstants.ConfigPath.LBO_PCSCF_ADDRESS_CHARACTERISTIC_UP20_PATH, str, iStorageAdapter);
        }
        return !lboPcscfAddresses.isEmpty() ? lboPcscfAddresses : getLboPcscfAddresses(ConfigConstants.ConfigPath.LBO_PCSCF_ADDRESSES_CHARACTERISTIC_UP20_PATH, str, iStorageAdapter);
    }

    class ReadRootAppParm implements IReadConfigParam {
        ReadRootAppParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            HashMap hashMap = new HashMap();
            IStorageAdapter storageByPath = ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.APPLICATION_CHARACTERISTIC_PATH, i);
            if (ConfigConstants.ConfigTable.HOME_NETWORK_DOMAIN_NAME.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.PRIVATE_USER_IDENTITY.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.KEEP_ALIVE_ENABLED.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.TIMER_T1.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.TIMER_T2.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.TIMER_T4.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.REG_RETRY_BASE_TIME.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.REG_RETRY_MAX_TIME.equalsIgnoreCase(str)) {
                Map<String, String> readAll = storageByPath.readAll(ConfigConstants.ConfigPath.APPLICATION_CHARACTERISTIC_PATH + str);
                if (readAll != null && !readAll.isEmpty()) {
                    return readAll;
                }
                return storageByPath.readAll(ConfigConstants.ConfigPath.APPLICATION_CHARACTERISTIC_UP20_PATH + str);
            }
            if (ConfigConstants.ConfigTable.PUBLIC_USER_IDENTITY.equalsIgnoreCase(str)) {
                return ConfigProvider.this.getPublicUserIdentities(storageByPath);
            }
            return ("address".equalsIgnoreCase(str) || ConfigConstants.ConfigTable.LBO_PCSCF_ADDRESS_TYPE.equalsIgnoreCase(str)) ? ConfigProvider.this.getLboPcscfAddresses(str, storageByPath) : hashMap;
        }
    }

    class ReadExtParm implements IReadConfigParam {
        ReadExtParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            Map<String, String> readAll = ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.EXT_CHARACTERISTIC_PATH, i).readAll(ConfigConstants.ConfigPath.EXT_CHARACTERISTIC_PATH + str);
            if (readAll != null && !readAll.isEmpty()) {
                return readAll;
            }
            return ConfigProvider.this.getStorageByPath("root/application/0/3gpp_ims/ext/gsma/", i).readAll("root/application/0/3gpp_ims/ext/gsma/" + str);
        }
    }

    class ReadAppAuthParm implements IReadConfigParam {
        ReadAppAuthParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            Map<String, String> readAll = ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.APPAUTH_CHARACTERISTIC_PATH, i).readAll(ConfigConstants.ConfigPath.APPAUTH_CHARACTERISTIC_PATH + str);
            if (readAll != null && !readAll.isEmpty()) {
                return readAll;
            }
            return ConfigProvider.this.getStorageByPath("root/application/0/3gpp_ims/ext/gsma/", i).readAll("root/application/0/3gpp_ims/ext/gsma/" + str);
        }
    }

    class ReadServiceParm implements IReadConfigParam {
        ReadServiceParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.SERVICE_CHARACTERISTIC_PATH, i).readAll(ConfigConstants.ConfigPath.SERVICE_CHARACTERISTIC_PATH + str);
        }
    }

    static Map<String, String> getCapAllowedPrefixes(String str, IStorageAdapter iStorageAdapter) {
        HashMap hashMap = new HashMap();
        Map<String, String> readAll = iStorageAdapter.readAll(str + 1);
        int i = 1;
        while (readAll != null && !readAll.isEmpty()) {
            hashMap.putAll(readAll);
            i++;
            readAll = iStorageAdapter.readAll(str + i);
        }
        return hashMap;
    }

    class ReadCapDiscoveryParm implements IReadConfigParam {
        ReadCapDiscoveryParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            IStorageAdapter storageByPath = ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.CAPDISCOVERY_CHARACTERISTIC_PATH, i);
            if (ConfigConstants.ConfigTable.CAPDISCOVERY_ALLOWED_PREFIXES.equalsIgnoreCase(str)) {
                return ConfigProvider.getCapAllowedPrefixes(ConfigConstants.ConfigPath.CAPDISCOVERY_ALLOWED_PREFIXES_PATH, storageByPath);
            }
            if (ConfigConstants.ConfigTable.CAPDISCOVERY_JOYN_MSGCAPVALIDITY.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.CAPDISCOVERY_JOYN_LASTSEENACTIVE.equalsIgnoreCase(str)) {
                return storageByPath.readAll(ConfigConstants.ConfigPath.CAPDISCOVERY_EXT_JOYN_PATH + str);
            }
            return storageByPath.readAll(ConfigConstants.ConfigPath.CAPDISCOVERY_CHARACTERISTIC_PATH + str);
        }
    }

    class ReadPresenceParm implements IReadConfigParam {
        ReadPresenceParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            IStorageAdapter storageByPath = ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.PRESENCE_CHARACTERISTIC_PATH, i);
            if (ConfigConstants.ConfigTable.PRESENCE_LOC_INFO_MAX_VALID_TIME.equalsIgnoreCase(str)) {
                return storageByPath.readAll(ConfigConstants.ConfigPath.PRESENCE_LOCATION_PATH + str);
            }
            return storageByPath.readAll(ConfigConstants.ConfigPath.PRESENCE_CHARACTERISTIC_PATH + str);
        }
    }

    class ReadImFtParm implements IReadConfigParam {
        ReadImFtParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            IStorageAdapter storageByPath = ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.IM_CHARACTERISTIC_PATH, i);
            Map<String, String> readAll = storageByPath.readAll(ConfigConstants.ConfigPath.IM_CHARACTERISTIC_PATH + str);
            if (readAll != null && !readAll.isEmpty()) {
                return readAll;
            }
            if (ConfigProvider.this.isImExtraParam(str)) {
                return storageByPath.readAll(ConfigConstants.ConfigPath.IM_EXT_CHARACTERISTIC_PATH + str);
            }
            if (ConfigProvider.this.isChatParam(str)) {
                return storageByPath.readAll(ConfigConstants.ConfigPath.CHAT_CHARACTERISTIC_PATH + str);
            }
            if (ConfigProvider.this.isFtExtraParam(str)) {
                return storageByPath.readAll(ConfigConstants.ConfigPath.FILETRANSFER_CHARACTERISTIC_PATH + str);
            }
            if (!ConfigConstants.ConfigTable.IM_EXPLODER_URI.equalsIgnoreCase(str)) {
                return readAll;
            }
            return storageByPath.readAll(ConfigConstants.ConfigPath.STANDALONEMSG_CHARACTERISTIC_PATH + str);
        }
    }

    class ReadEnrichedCallingParm implements IReadConfigParam {
        ReadEnrichedCallingParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            Map<String, String> readAll;
            IStorageAdapter storageByPath = ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.SERVICE_CHARACTERISTIC_PATH, i);
            if (ConfigConstants.ConfigTable.DATAOFF_CONTENT_SHARE.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.DATAOFF_PRE_AND_POST_CALL.equalsIgnoreCase(str)) {
                readAll = storageByPath.readAll(ConfigConstants.ConfigPath.SERVICE_EXT_DATAOFF_PATH + str);
            } else {
                readAll = storageByPath.readAll(ConfigConstants.ConfigPath.SERVICE_CHARACTERISTIC_PATH + str);
            }
            if (readAll != null && !readAll.isEmpty()) {
                return readAll;
            }
            return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.ENRICHED_CALLING_CHARACTERISTIC_PATH, i).readAll(ConfigConstants.ConfigPath.ENRICHED_CALLING_CHARACTERISTIC_PATH + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isImExtraParam(String str) {
        return ConfigConstants.ConfigTable.IM_EXT_CB_FT_HTTP_CS_URI.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.IM_EXT_MAX_SIZE_EXTRA_FILE_TR.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.IM_EXT_FT_HTTP_EXTRA_CS_URI.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.IM_EXT_MAX_IMDN_AGGREGATION.equalsIgnoreCase(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isChatParam(String str) {
        return ConfigConstants.ConfigTable.IM_AUT_ACCEPT.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.IM_AUT_ACCEPT_GROUP_CHAT.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.IM_CHAT_REVOKE_TIMER.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.IM_CONF_FCTY_URI.equalsIgnoreCase(str) || "max_adhoc_group_size".equalsIgnoreCase(str) || "MaxSize".equalsIgnoreCase(str) || ConfigConstants.ConfigTable.IM_TIMER_IDLE.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.IM_SPAM_REPORTING_URI.equalsIgnoreCase(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isFtExtraParam(String str) {
        return ConfigConstants.ConfigTable.IM_FT_AUT_ACCEPT.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.IM_FT_HTTP_CS_PWD.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.IM_FT_HTTP_CS_URI.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.IM_FT_HTTP_DL_URI.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.IM_FT_HTTP_CS_USER.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.IM_FT_HTTP_FALLBACK.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.IM_FT_WARN_SIZE.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.IM_MAX_SIZE_FILE_TR.equalsIgnoreCase(str);
    }

    class ReadStandalonMsgParm implements IReadConfigParam {
        ReadStandalonMsgParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            Map<String, String> readAll = ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.SLM_CHARACTERISTIC_PATH, i).readAll(ConfigConstants.ConfigPath.SLM_CHARACTERISTIC_PATH + str);
            if (readAll != null && !readAll.isEmpty()) {
                return readAll;
            }
            if (!ConfigConstants.ConfigTable.CPM_SLM_MAX_MSG_SIZE.equalsIgnoreCase(str) && !"MaxSize".equalsIgnoreCase(str) && !ConfigConstants.ConfigTable.SLM_SWITCH_OVER_SIZE.equalsIgnoreCase(str)) {
                return readAll;
            }
            return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.STANDALONEMSG_CHARACTERISTIC_PATH, i).readAll(ConfigConstants.ConfigPath.STANDALONEMSG_CHARACTERISTIC_PATH + str);
        }
    }

    class ReadCpmMessageStoreParm implements IReadConfigParam {
        ReadCpmMessageStoreParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            IStorageAdapter storageByPath = ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.CPM_CHARACTERISTIC_PATH, i);
            Map<String, String> readAll = storageByPath.readAll(ConfigConstants.ConfigPath.CPM_MESSAGESTORE_CHARACTERISTIC_PATH + str);
            if (readAll != null && !readAll.isEmpty()) {
                return readAll;
            }
            if (ConfigConstants.ConfigTable.CPM_MESSAGE_STORE_USER_NAME.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.CPM_MESSAGE_STORE_USER_PWD.equalsIgnoreCase(str)) {
                return storageByPath.readAll(ConfigConstants.ConfigPath.CPM_CHARACTERISTIC_PATH + str);
            }
            if (!"EventRpting".equalsIgnoreCase(str) && !ConfigConstants.ConfigTable.CPM_MESSAGE_STORE_AUTH_ARCHIVE.equalsIgnoreCase(str) && !"SMSStore".equalsIgnoreCase(str) && !"MMSStore".equalsIgnoreCase(str)) {
                return readAll;
            }
            return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.MESSAGESTORE_CHARACTERISTIC_PATH, i).readAll(ConfigConstants.ConfigPath.MESSAGESTORE_CHARACTERISTIC_PATH + str);
        }
    }

    class ReadOtherParm implements IReadConfigParam {
        ReadOtherParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.OTHER_CHARACTERISTIC_PATH, i).readAll(ConfigConstants.ConfigPath.OTHER_CHARACTERISTIC_PATH + str);
        }
    }

    class ReadXdmsParm implements IReadConfigParam {
        ReadXdmsParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.XDMS_CHARACTERISTIC_PATH, i).readAll(ConfigConstants.ConfigPath.XDMS_CHARACTERISTIC_PATH + str);
        }
    }

    class ReadTransportProtoParm implements IReadConfigParam {
        ReadTransportProtoParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            Map<String, String> readAll = ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.TRANSPORT_PROTO_CHARACTERISTIC_PATH, i).readAll(ConfigConstants.ConfigPath.TRANSPORT_PROTO_CHARACTERISTIC_PATH + str);
            if (readAll != null && !readAll.isEmpty()) {
                return readAll;
            }
            Map<String, String> readAll2 = ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.TRANSPORT_PROTO_CHARACTERISTIC_UP10_PATH, i).readAll(ConfigConstants.ConfigPath.TRANSPORT_PROTO_CHARACTERISTIC_UP10_PATH + str);
            if (readAll2 != null && !readAll2.isEmpty()) {
                return readAll2;
            }
            return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.TRANSPORT_PROTO_CHARACTERISTIC_UP20_PATH, i).readAll(ConfigConstants.ConfigPath.TRANSPORT_PROTO_CHARACTERISTIC_UP20_PATH + str);
        }
    }

    class ReadPublicAccountParm implements IReadConfigParam {
        ReadPublicAccountParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            return ConfigProvider.this.getStorageByPath("root/application/1/", i).readAll("root/application/1/" + str);
        }
    }

    class ReadPersonalProfileParm implements IReadConfigParam {
        ReadPersonalProfileParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            return ConfigProvider.this.getStorageByPath("root/", i).readAll("root/" + str);
        }
    }

    class ReadUxParm implements IReadConfigParam {
        ReadUxParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            Map<String, String> readAll = ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.UX_CHARACTERISTIC_PATH, i).readAll(ConfigConstants.ConfigPath.UX_CHARACTERISTIC_PATH + str);
            if (readAll != null && !readAll.isEmpty()) {
                return readAll;
            }
            if (!ConfigConstants.ConfigTable.UX_MESSAGING_UX.equalsIgnoreCase(str) && !ConfigConstants.ConfigTable.UX_MSG_FB_DEFAULT.equalsIgnoreCase(str)) {
                return readAll;
            }
            return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.JOYN_UX_PATH, i).readAll(ConfigConstants.ConfigPath.JOYN_UX_PATH + str);
        }
    }

    class ReadClientControlParm implements IReadConfigParam {
        ReadClientControlParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            Map<String, String> readAll = ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.CLIENT_CONTROL_CHARACTERISTIC_PATH, i).readAll(ConfigConstants.ConfigPath.CLIENT_CONTROL_CHARACTERISTIC_PATH + str);
            if (readAll != null && !readAll.isEmpty()) {
                return readAll;
            }
            if (ConfigConstants.ConfigTable.CLIENTCONTROL_RECONNECT_GUARD_TIMER.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.CLIENTCONTROL_CFS_TRIGGER.equalsIgnoreCase(str)) {
                IStorageAdapter storageByPath = ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.CHAT_CHARACTERISTIC_PATH, i);
                Map<String, String> readAll2 = storageByPath.readAll(ConfigConstants.ConfigPath.JOYN_MESSAGING_CHARACTERISTIC_PATH + str);
                if (readAll2 != null && !readAll2.isEmpty()) {
                    return readAll2;
                }
                return storageByPath.readAll(ConfigConstants.ConfigPath.CHAT_CHARACTERISTIC_PATH + str);
            }
            if (ConfigConstants.ConfigTable.CLIENTCONTROL_SERVICE_AVAILABILITY_INFO_EXPIRY.equalsIgnoreCase(str)) {
                return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.CAPDISCOVERY_CHARACTERISTIC_PATH, i).readAll(ConfigConstants.ConfigPath.CAPDISCOVERY_CHARACTERISTIC_PATH + str);
            }
            if (ConfigConstants.ConfigTable.CLIENTCONTROL_ONE_TO_MANY_SELECTED_TECH.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.CLIENTCONTROL_DISPLAY_NOTIFICATION_SWITCH.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.CLIENTCONTROL_MAX1_TO_MANY_RECIPIENTS.equalsIgnoreCase(str)) {
                return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.MESSAGING_CHARACTERISTIC_PATH, i).readAll(ConfigConstants.ConfigPath.MESSAGING_CHARACTERISTIC_PATH + str);
            }
            if (!ConfigConstants.ConfigTable.CLIENTCONTROL_FT_MAX1_TO_MANY_RECIPIENTS.equalsIgnoreCase(str)) {
                return readAll;
            }
            return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.FILETRANSFER_CHARACTERISTIC_PATH, i).readAll(ConfigConstants.ConfigPath.FILETRANSFER_CHARACTERISTIC_PATH + str);
        }
    }

    class ReadMsisdnParm implements IReadConfigParam {
        ReadMsisdnParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.MSISDN_PATH, i).readAll(ConfigConstants.ConfigPath.MSISDN_PATH + str);
        }
    }

    class ReadChatbotParm implements IReadConfigParam {
        ReadChatbotParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.CHATBOT_CHARACTERISTIC_PATH, i).readAll(ConfigConstants.ConfigPath.CHATBOT_CHARACTERISTIC_PATH + str);
        }
    }

    class ReadMessageStoreParm implements IReadConfigParam {
        ReadMessageStoreParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.MESSAGESTORE_CHARACTERISTIC_PATH, i).readAll(ConfigConstants.ConfigPath.MESSAGESTORE_CHARACTERISTIC_PATH + str);
        }
    }

    class ReadPluginsParm implements IReadConfigParam {
        ReadPluginsParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.PLUGINS_CHARACTERISTIC_PATH, i).readAll(ConfigConstants.ConfigPath.PLUGINS_CHARACTERISTIC_PATH + str);
        }
    }

    class ReadDataOffParm implements IReadConfigParam {
        ReadDataOffParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.SERVICE_EXT_DATAOFF_PATH, i).readAll(ConfigConstants.ConfigPath.SERVICE_EXT_DATAOFF_PATH + str);
        }
    }

    class ReadServiceExtParm implements IReadConfigParam {
        ReadServiceExtParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.SERVICE_PATH, i).readAll(ConfigConstants.ConfigPath.SERVICE_PATH + str);
        }
    }

    class ReadServiceProviderExtParm implements IReadConfigParam {
        ReadServiceProviderExtParm() {
        }

        @Override // com.sec.internal.ims.config.ConfigProvider.IReadConfigParam
        public Map<String, String> readParam(String str, int i) {
            if (ConfigConstants.ConfigTable.SERVICEPROVIDEREXT_FTHTTPGROUPCHAT.equalsIgnoreCase(str)) {
                return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.SERVICEPROVIDEREXT_CHARACTERISTIC_PATH, i).readAll(ConfigConstants.ConfigPath.SERVICEPROVIDEREXT_CHARACTERISTIC_PATH + str);
            }
            if (ConfigConstants.ConfigTable.SERVICEPROVIDEREXT_CHATBOT_USER_NAME.equalsIgnoreCase(str) || ConfigConstants.ConfigTable.SERVICEPROVIDEREXT_CHATBOT_PASSWORD.equalsIgnoreCase(str)) {
                return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.SERVICEPROVIDEREXT_CHATBOT_PATH, i).readAll(ConfigConstants.ConfigPath.SERVICEPROVIDEREXT_CHARACTERISTIC_PATH + str);
            }
            return ConfigProvider.this.getStorageByPath(ConfigConstants.ConfigPath.SERVICE_PROVIDER_EXT_PATH, i).readAll(ConfigConstants.ConfigPath.SERVICE_PROVIDER_EXT_PATH + str);
        }
    }

    static String getIdentityByPhoneId(Context context, int i) {
        if (context.checkSelfPermission("android.permission.READ_PHONE_STATE") != 0) {
            return null;
        }
        return ConfigUtil.buildIdentity(context, i);
    }

    IStorageAdapter getStorageByUri(Uri uri) {
        List<String> list;
        int simSlotFromUri = UriUtil.getSimSlotFromUri(uri);
        String uri2 = uri.toString();
        if (uri2.contains(AECNamespace.Path.APPLICATION)) {
            String substring = uri2.substring(69);
            if (substring.indexOf(47) != -1) {
                list = mAppIdMap.get(substring.substring(0, substring.indexOf(47)));
            } else {
                list = mAppIdMap.get("0");
            }
        } else {
            list = null;
        }
        return initStorage(getContext(), simSlotFromUri, list);
    }

    IStorageAdapter getStorageByPath(String str, int i) {
        IStorageAdapter iStorageAdapter;
        List<String> list = null;
        if (str.contains(AECNamespace.Path.APPLICATION)) {
            String substring = str.substring(17);
            if (substring.indexOf(47) != -1) {
                list = mAppIdMap.get(substring.substring(0, substring.indexOf(47)));
            }
        }
        if (str.contains(ConfigConstants.ConfigPath.VERS_PATH) && this.mAppIdServerIdMap.get(Integer.valueOf(i)) != null) {
            list = mAppIdMap.get("0");
        }
        if (list == null || this.mAppIdServerIdMap.get(Integer.valueOf(i)) == null) {
            return this.mServerIdStorageMap.get(Integer.valueOf(i)).get(0);
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            Integer num = this.mAppIdServerIdMap.get(Integer.valueOf(i)).get(it.next());
            if (num != null && (iStorageAdapter = this.mServerIdStorageMap.get(Integer.valueOf(i)).get(num)) != null) {
                return iStorageAdapter;
            }
        }
        return this.mServerIdStorageMap.get(Integer.valueOf(i)).get(0);
    }
}
