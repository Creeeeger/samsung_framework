package com.sec.internal.ims.diagnosis;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.SemHqmManager;
import android.os.SemSystemProperties;
import android.provider.Telephony;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.VowifiConfig;
import com.sec.internal.helper.AlarmTimer;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.PackageUtils;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.log.IMSLog;
import com.sec.internal.log.IndentingPrintWriter;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ImsLogAgent extends ContentProvider {
    public static final String AUTHORITY = "com.sec.imsservice.log";
    private static final String DRCS_KEY_RCS_USER_SETTING = "RUSS";
    private static final String INTENT_ACTION_BIG_DATA_INFO = "com.samsung.intent.action.BIG_DATA_INFO";
    private static final String INTENT_ACTION_DAILY_REPORT_EXPIRED = "com.sec.imsservice.ACTION_DAILY_REPORT_EXPIRED";
    private static final int PERIOD_OF_DAILY_REPORT = 86400000;
    private static final int URI_TYPE_SEND_LOG = 1;
    private static final UriMatcher sUriMatcher;
    private PendingIntent mDailyReportExpiry;
    private static final String LOG_TAG = ImsLogAgent.class.getSimpleName();
    private static final Object UNKNOWN_LOCK = new Object();
    private static final Object REGI_LOCK = new Object();
    private static final Object PSCI_LOCK = new Object();
    private static final Object SIMI_LOCK = new Object();
    private static final Object DMUI_LOCK = new Object();
    private static final Object DRPT_LOCK = new Object();
    private static final Object DRCS_LOCK = new Object();
    private Context mContext = null;
    private SimpleEventLog mEventLog = null;

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        sUriMatcher = uriMatcher;
        uriMatcher.addURI(AUTHORITY, "send/*", 1);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Context context = getContext();
        this.mContext = context;
        this.mEventLog = new SimpleEventLog(context, LOG_TAG, 200);
        scheduleDailyReport();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(INTENT_ACTION_BIG_DATA_INFO);
        intentFilter.addAction(INTENT_ACTION_DAILY_REPORT_EXPIRED);
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.sec.internal.ims.diagnosis.ImsLogAgent.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                Log.d(ImsLogAgent.LOG_TAG, "onReceive: " + intent.getAction());
                String action = intent.getAction();
                action.hashCode();
                if (action.equals(ImsLogAgent.INTENT_ACTION_DAILY_REPORT_EXPIRED)) {
                    ImsLogAgent.this.onDailyReport();
                } else if (action.equals(ImsLogAgent.INTENT_ACTION_BIG_DATA_INFO)) {
                    ImsLogAgent.this.onCsCallInfoReceived(intent.getIntExtra("simslot", 0), intent.getIntExtra(DiagnosisConstants.KEY_FEATURE, 0), intent.getStringExtra("bigdata_info"));
                }
            }
        }, intentFilter);
        return true;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        if (sUriMatcher.match(uri) == 1) {
            String lastPathSegment = uri.getLastPathSegment();
            int simSlotFromUri = UriUtil.getSimSlotFromUri(uri);
            if ("DRPT".equalsIgnoreCase(lastPathSegment) || DiagnosisConstants.FEATURE_DRCS.equalsIgnoreCase(lastPathSegment)) {
                onDailyReport();
                return 1;
            }
            return sendStoredLog(simSlotFromUri, lastPathSegment);
        }
        this.mEventLog.logAndAdd("update: Invalid uri [" + uri + "]");
        return 0;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        if (uri == null || contentValues == null) {
            Log.e(LOG_TAG, "insert: parameter Uri or ContentValues has unexpected null value");
            return null;
        }
        int simSlotFromUri = UriUtil.getSimSlotFromUri(uri);
        String asString = contentValues.getAsString(DiagnosisConstants.KEY_FEATURE);
        Integer asInteger = contentValues.getAsInteger(DiagnosisConstants.KEY_SEND_MODE);
        Integer asInteger2 = contentValues.getAsInteger(DiagnosisConstants.KEY_OVERWRITE_MODE);
        if (asInteger2 == null) {
            asInteger2 = 0;
        }
        contentValues.remove(DiagnosisConstants.KEY_FEATURE);
        contentValues.remove(DiagnosisConstants.KEY_SEND_MODE);
        contentValues.remove(DiagnosisConstants.KEY_OVERWRITE_MODE);
        if (asInteger == null || asInteger.intValue() == 0) {
            sendLogs(simSlotFromUri, asString, contentValues);
        } else if (asInteger.intValue() == 1) {
            storeLogs(simSlotFromUri, asString, contentValues, asInteger2.intValue());
        }
        return uri;
    }

    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, Bundle bundle) {
        if (!DiagnosisConstants.CALL_METHOD_LOGANDADD.equals(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        this.mEventLog.logAndAdd(str2);
        return null;
    }

    @Override // android.content.ContentProvider
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.mEventLog.dump(new IndentingPrintWriter(printWriter, "  "));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDailyReport() {
        Log.d(LOG_TAG, "onDailyReport");
        PendingIntent pendingIntent = this.mDailyReportExpiry;
        if (pendingIntent != null) {
            AlarmTimer.stop(this.mContext, pendingIntent);
            this.mDailyReportExpiry = null;
        }
        ImsSharedPrefHelper.remove(0, this.mContext, "DRPT", DiagnosisConstants.KEY_NEXT_DRPT_SCHEDULE);
        try {
            try {
                sendStoredLog(0, "DRPT");
                sendStoredLog(0, DiagnosisConstants.FEATURE_DRCS);
                if (ImsLogAgentUtil.getCommonHeader(this.mContext, 1).size() > 0) {
                    sendStoredLog(1, "DRPT");
                    sendStoredLog(1, DiagnosisConstants.FEATURE_DRCS);
                }
            } catch (Exception e) {
                e.printStackTrace();
                this.mEventLog.logAndAdd("sendLogToAgent: Exception - " + e.getMessage());
            }
        } finally {
            scheduleDailyReport();
        }
    }

    private int getPeriodForDailyReport() {
        int i = SemSystemProperties.getInt("persist.ims.debug.period.dr", PERIOD_OF_DAILY_REPORT);
        return i <= 0 ? PERIOD_OF_DAILY_REPORT : i;
    }

    private synchronized String getFeatureName(String str) {
        return str.equalsIgnoreCase(DiagnosisConstants.FEATURE_REGI) ? DiagnosisConstants.FEATURE_REGI : str.equalsIgnoreCase(DiagnosisConstants.FEATURE_PSCI) ? DiagnosisConstants.FEATURE_PSCI : str.equalsIgnoreCase(DiagnosisConstants.FEATURE_SIMI) ? DiagnosisConstants.FEATURE_SIMI : str.equalsIgnoreCase(DiagnosisConstants.FEATURE_DMUI) ? DiagnosisConstants.FEATURE_DMUI : str.equalsIgnoreCase("DRPT") ? "DRPT" : str.equalsIgnoreCase(DiagnosisConstants.FEATURE_DRCS) ? DiagnosisConstants.FEATURE_DRCS : "UNKNOWN";
    }

    private synchronized Object getFeatureLock(String str) {
        if (str.equalsIgnoreCase(DiagnosisConstants.FEATURE_REGI)) {
            return REGI_LOCK;
        }
        if (str.equalsIgnoreCase(DiagnosisConstants.FEATURE_PSCI)) {
            return PSCI_LOCK;
        }
        if (str.equalsIgnoreCase(DiagnosisConstants.FEATURE_SIMI)) {
            return SIMI_LOCK;
        }
        if (str.equalsIgnoreCase(DiagnosisConstants.FEATURE_DMUI)) {
            return DMUI_LOCK;
        }
        if (str.equalsIgnoreCase("DRPT")) {
            return DRPT_LOCK;
        }
        if (str.equalsIgnoreCase(DiagnosisConstants.FEATURE_DRCS)) {
            return DRCS_LOCK;
        }
        return UNKNOWN_LOCK;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00fb A[Catch: all -> 0x010d, TryCatch #2 {, blocks: (B:4:0x0005, B:6:0x0027, B:7:0x0043, B:12:0x0047, B:14:0x004c, B:15:0x005a, B:17:0x0060, B:19:0x0072, B:20:0x007a, B:22:0x0080, B:29:0x008c, B:25:0x00a9, B:32:0x00d0, B:34:0x00fb, B:35:0x010a, B:39:0x00b5), top: B:3:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean sendLogs(int r8, java.lang.String r9, android.content.ContentValues r10) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.diagnosis.ImsLogAgent.sendLogs(int, java.lang.String, android.content.ContentValues):boolean");
    }

    @SuppressLint({"WrongConstant"})
    protected boolean sendLogToHqmManager(String str, String str2) {
        SemHqmManager semHqmManager = (SemHqmManager) this.mContext.getSystemService("HqmManagerService");
        if (semHqmManager == null) {
            return false;
        }
        return semHqmManager.sendHWParamToHQM(0, DiagnosisConstants.COMPONENT_ID, str, "sm", "0.0", ImsConstants.RCS_AS.SEC, "", str2, "");
    }

    private int sendStoredLog(int i, String str) {
        String featureName = getFeatureName(str);
        if (featureName.equals("UNKNOWN")) {
            this.mEventLog.logAndAdd("sendStoredLog: Invalid feature [" + featureName + "]");
            return 0;
        }
        IMSLog.d(LOG_TAG, i, "sendStoredLog: feature [" + featureName + "]");
        synchronized (getFeatureLock(featureName)) {
            SharedPreferences sharedPref = ImsSharedPrefHelper.getSharedPref(i, this.mContext, featureName, 0, false);
            ContentValues contentValues = new ContentValues();
            for (Map.Entry<String, ?> entry : sharedPref.getAll().entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (value instanceof Integer) {
                    contentValues.put(key, Integer.valueOf(((Integer) value).intValue()));
                } else if (value instanceof String) {
                    contentValues.put(key, (String) value);
                } else if (value instanceof Long) {
                    contentValues.put(key, Long.valueOf(((Long) value).longValue()));
                } else {
                    this.mEventLog.logAndAdd(i, "sendStoredLog: [" + key + "] has wrong data type!");
                }
            }
            if (CollectionUtils.isNullOrEmpty(contentValues)) {
                this.mEventLog.logAndAdd(i, "sendStoredLog: [" + featureName + "] is null or empty");
                return 0;
            }
            if (featureName.equalsIgnoreCase("DRPT")) {
                contentValues.put(DiagnosisConstants.COMMON_KEY_VOLTE_SETTINGS, Integer.valueOf(ImsConstants.SystemSettings.getVoiceCallType(this.mContext, -1, i) == 0 ? 1 : 0));
                contentValues.put(DiagnosisConstants.COMMON_KEY_VIDEO_SETTINGS, Integer.valueOf(ImsConstants.SystemSettings.getVideoCallType(this.mContext, -1, i) == 0 ? 1 : 0));
                contentValues.put(DiagnosisConstants.DRPT_KEY_VOWIFI_ENABLE_SETTINGS, Integer.valueOf(VowifiConfig.isEnabled(this.mContext, i) ? 1 : 0));
                contentValues.put(DiagnosisConstants.DRPT_KEY_CROSS_SIM_ENABLE_SETTINGS, Integer.valueOf(VowifiConfig.isCrossSimSettingEnabled(this.mContext, i) ? 1 : 0));
                contentValues.put(DiagnosisConstants.DRPT_KEY_VOWIFI_PREF_SETTINGS, Integer.valueOf(VowifiConfig.getPrefMode(this.mContext, 1, i)));
                contentValues.remove(DiagnosisConstants.KEY_NEXT_DRPT_SCHEDULE);
            } else if (featureName.equalsIgnoreCase(DiagnosisConstants.FEATURE_DRCS)) {
                boolean isSmsAppDefault = isSmsAppDefault();
                if (!isSmsAppDefault) {
                    r1 = 1;
                }
                contentValues.put("CMAS", Integer.valueOf(r1));
                if (!isSmsAppDefault) {
                    String defaultSmsPackage = Telephony.Sms.getDefaultSmsPackage(this.mContext);
                    if (!TextUtils.isEmpty(defaultSmsPackage)) {
                        contentValues.put("CMDA", defaultSmsPackage);
                    }
                }
                String str2 = SemSystemProperties.get("persist.ril.config.defaultmsgapp");
                if (TextUtils.isEmpty(str2)) {
                    str2 = "NA";
                }
                contentValues.put("IMDA", str2);
                contentValues.put(DRCS_KEY_RCS_USER_SETTING, Integer.valueOf(ImsConstants.SystemSettings.getRcsUserSetting(this.mContext, -1, i)));
            }
            IMSLog.d(LOG_TAG, i, "sendStoredLog: send logs of [" + featureName + "]");
            sendLogs(i, featureName, contentValues);
            sharedPref.edit().clear().apply();
            return 1;
        }
    }

    private boolean storeLogs(int i, String str, ContentValues contentValues, int i2) {
        synchronized (getFeatureLock(str)) {
            if (CollectionUtils.isNullOrEmpty(contentValues)) {
                this.mEventLog.logAndAdd("storeLogs: [" + str + "] is null or empty");
                return false;
            }
            SharedPreferences sharedPref = ImsSharedPrefHelper.getSharedPref(i, this.mContext, str, 0, false);
            SharedPreferences.Editor edit = sharedPref.edit();
            for (String str2 : contentValues.keySet()) {
                Object obj = contentValues.get(str2);
                if (obj == null) {
                    this.mEventLog.logAndAdd("storeLogs: [" + str2 + "] is null!");
                } else {
                    try {
                        if (obj instanceof Integer) {
                            int intValue = ((Integer) obj).intValue();
                            int i3 = sharedPref.getInt(str2, 0);
                            if (i2 == 1) {
                                intValue += i3;
                            } else if (i2 == 2 && intValue <= i3) {
                                intValue = i3;
                            }
                            edit.putInt(str2, intValue);
                        } else if (obj instanceof Long) {
                            long longValue = ((Long) obj).longValue();
                            long j = sharedPref.getLong(str2, 0L);
                            if (i2 == 1) {
                                longValue += j;
                            } else if (i2 == 2 && longValue <= j) {
                                longValue = j;
                            }
                            edit.putLong(str2, longValue);
                        } else if (obj instanceof String) {
                            edit.putString(str2, (String) obj);
                        } else {
                            this.mEventLog.logAndAdd("storeLogs: [" + str2 + "] has wrong data type!");
                        }
                    } catch (ClassCastException unused) {
                        this.mEventLog.logAndAdd("storeLogs: ClassCastException! key: [" + str2 + "]!");
                    }
                }
            }
            Log.d(LOG_TAG, "storeLogs: feature [" + str + "]");
            edit.apply();
            return true;
        }
    }

    private void scheduleDailyReport() {
        if (this.mDailyReportExpiry != null) {
            return;
        }
        SharedPreferences sharedPref = ImsSharedPrefHelper.getSharedPref(0, this.mContext, "DRPT", 0, false);
        long j = 0;
        long j2 = sharedPref.getLong(DiagnosisConstants.KEY_NEXT_DRPT_SCHEDULE, 0L);
        long currentTimeMillis = System.currentTimeMillis();
        if (j2 > 0 && j2 <= currentTimeMillis) {
            Log.d(LOG_TAG, "scheduleDailyReport: DRPT timer is expired. Sending it now.");
        } else {
            if (j2 == 0) {
                j2 = currentTimeMillis + getPeriodForDailyReport();
            }
            j = j2 - currentTimeMillis;
            sharedPref.edit().putLong(DiagnosisConstants.KEY_NEXT_DRPT_SCHEDULE, j2).apply();
        }
        Log.d(LOG_TAG, "scheduleDailyReport: delay [" + j + "] scheduled time [" + new Date(j2) + "]");
        Intent intent = new Intent(INTENT_ACTION_DAILY_REPORT_EXPIRED);
        intent.setPackage(this.mContext.getPackageName());
        PendingIntent broadcast = PendingIntent.getBroadcast(this.mContext, 0, intent, 33554432);
        this.mDailyReportExpiry = broadcast;
        AlarmTimer.start(this.mContext, broadcast, j, false);
    }

    private String normalizeLog(JSONObject jSONObject) {
        return jSONObject.toString().replaceAll("\\{", "").replaceAll("\\}", "").replaceAll("\\s+", "^");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCsCallInfoReceived(int i, int i2, String str) {
        if (i2 != 0 && i2 != 1) {
            Log.d(LOG_TAG, "onCsCallInfoReceived : ignore except CEND/DROP! received: " + i2);
            return;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String replace = str.replace(CmcConstants.E_NUM_STR_QUOTE, "");
        String str2 = LOG_TAG;
        Log.d(str2, "onCsCallInfoReceived: remove quotes [" + replace + "]");
        String[] split = replace.split(",");
        if (split.length < 1) {
            Log.d(str2, "onCsCallInfoReceived: No data");
            return;
        }
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        for (int i6 = 0; i6 < split.length; i6++) {
            try {
                String[] split2 = split[i6].split(":");
                if (split2 != null && split2.length > 1) {
                    if (split[i6].contains("Ctyp")) {
                        i3 = Integer.parseInt(split2[1].trim());
                    } else if (split[i6].contains("Csta")) {
                        i4 = Integer.parseInt(split2[1].trim());
                    } else if (split[i6].contains("Etyp")) {
                        i5 = Integer.parseInt(split2[1].trim());
                    }
                }
            } catch (NumberFormatException e) {
                Log.e(LOG_TAG, "onCsCallInfoReceived: NumberFormatException! " + e.getMessage());
                return;
            }
        }
        if (i3 < 1 || i3 > 3) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        ContentValues contentValues2 = new ContentValues();
        if (i2 == 1) {
            contentValues2.put(DiagnosisConstants.PSCI_KEY_CALL_BEARER, Integer.valueOf(DiagnosisConstants.CALL_BEARER.CS.getValue()));
            if (i3 == 3) {
                contentValues2.put("TYPE", (Integer) 7);
            } else {
                contentValues2.put("TYPE", Integer.valueOf(i3));
            }
            if (i4 == 1) {
                contentValues2.put(DiagnosisConstants.PSCI_KEY_CALL_STATE, (Integer) 3);
                contentValues.put(DiagnosisConstants.DRPT_KEY_CSCALL_OUTGOING_FAIL, (Integer) 1);
            } else if (i4 == 2) {
                contentValues2.put(DiagnosisConstants.PSCI_KEY_CALL_STATE, (Integer) 2);
                contentValues.put(DiagnosisConstants.DRPT_KEY_CSCALL_INCOMING_FAIL, (Integer) 1);
            } else {
                contentValues2.put(DiagnosisConstants.PSCI_KEY_CALL_STATE, (Integer) 5);
            }
            contentValues2.put(DiagnosisConstants.PSCI_KEY_FAIL_CODE, Integer.valueOf(i5));
            storeLogs(i, DiagnosisConstants.FEATURE_PSCI, contentValues2, 0);
            ImsLogAgentUtil.requestToSendStoredLog(i, this.mContext, DiagnosisConstants.FEATURE_PSCI);
            Log.d(LOG_TAG, "onCsCallInfoReceived: send PSCI: " + contentValues2);
            contentValues.put(DiagnosisConstants.DRPT_KEY_CSCALL_END_FAIL_COUNT, (Integer) 1);
        }
        contentValues.put(DiagnosisConstants.DRPT_KEY_CSCALL_END_TOTAL_COUNT, (Integer) 1);
        Log.d(LOG_TAG, "onCsCallInfoReceived: storeLogs: " + contentValues);
        storeLogs(i, "DRPT", contentValues, 1);
    }

    private boolean isSmsAppDefault() {
        String str;
        Log.d(LOG_TAG, "get default sms app.");
        try {
            str = Telephony.Sms.getDefaultSmsPackage(this.mContext);
        } catch (Exception e) {
            Log.e(LOG_TAG, "Failed to getDefaultSmsPackage: " + e);
            str = null;
        }
        if (str == null) {
            Log.e(LOG_TAG, "default sms app is null");
            return false;
        }
        String msgAppPkgName = PackageUtils.getMsgAppPkgName(this.mContext);
        boolean equals = TextUtils.equals(str, msgAppPkgName);
        String str2 = LOG_TAG;
        Log.d(str2, "default sms app:" + str + " samsungPackage:" + msgAppPkgName);
        StringBuilder sb = new StringBuilder();
        sb.append("isDefaultMessageAppInUse : ");
        sb.append(equals);
        Log.d(str2, sb.toString());
        return equals;
    }
}
