package com.samsung.android.server.audio;

import android.R;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.media.AudioSystem;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.Trace;
import android.util.Log;
import com.android.server.audio.AudioService;
import com.android.server.utils.EventLogger;
import com.samsung.android.audio.Rune;
import com.samsung.android.knox.custom.KnoxCustomManagerService;
import java.io.BufferedReader;
import java.io.FileDescriptor;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class SoundAppPolicyManager {
    public static SoundAppPolicyManager sInstance;
    public final ContentResolver mContentResolver;
    public final AudioSettingsHelper mSettingHelper;
    public String mToken = null;
    public int mVersion = 0;
    public List mAppList = null;
    public int mLiveTranslateAllowListVersion = -1;
    public List mLiveTranslateAllowList = null;

    public SoundAppPolicyManager(Context context, AudioSettingsHelper audioSettingsHelper) {
        this.mContentResolver = context.getContentResolver();
        this.mSettingHelper = audioSettingsHelper;
        init(context, true);
    }

    public static SoundAppPolicyManager getInstance(Context context, AudioSettingsHelper audioSettingsHelper) {
        if (sInstance == null) {
            sInstance = new SoundAppPolicyManager(context, audioSettingsHelper);
        }
        return sInstance;
    }

    public void init(final Context context, final boolean z) {
        this.mToken = null;
        Executors.newSingleThreadScheduledExecutor().schedule(new Runnable() { // from class: com.samsung.android.server.audio.SoundAppPolicyManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SoundAppPolicyManager.this.lambda$init$0(context, z);
            }
        }, 60L, TimeUnit.SECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$0(Context context, boolean z) {
        if (isAvailable(context)) {
            Log.i("SoundAppPolicyManager", "init SCPMv2");
            if (register()) {
                checkAndUpdateAppList();
                if (Rune.SEC_AUDIO_VOIP_LIVE_TRANSLATE) {
                    checkAndUpdateLiveTranslateList(z);
                }
            }
        }
    }

    public final boolean isAvailable(Context context) {
        return context.getPackageManager().resolveContentProvider(KnoxCustomManagerService.SPCM_PROVIDER_AUTHORITY, 0) != null;
    }

    public final boolean register() {
        if (this.mToken != null) {
            return true;
        }
        Bundle bundle = new Bundle();
        bundle.putString("packageName", "android");
        bundle.putString("appId", "ifdzefg1lz");
        bundle.putString("version", ScpmConsumerInfo.VERSION);
        bundle.putString("receiverPackageName", "android");
        Bundle callScpmApi = callScpmApi(ScpmApiContract.URI, "register", bundle);
        if (callScpmApi == null) {
            AudioService.sScpmLogger.enqueue(new EventLogger.StringEvent("register : Fail to register, bundle is null"));
            return false;
        }
        this.mToken = callScpmApi.getString(KnoxCustomManagerService.SPCM_KEY_TOKEN);
        AudioService.sScpmLogger.enqueue(new EventLogger.StringEvent("Register, result=" + callScpmApi.getInt(KnoxCustomManagerService.SPCM_KEY_RESULT, 2) + ", code=" + callScpmApi.getInt(KnoxCustomManagerService.SPCM_KEY_RESULT_CODE, -1) + ", msg=" + callScpmApi.getString(KnoxCustomManagerService.SPCM_KEY_RESULT_MESSAGE)));
        return this.mToken != null;
    }

    public final ParcelFileDescriptor getScpmParcelFile(String str) {
        Uri parse = Uri.parse("content://com.samsung.android.scpm.policy/" + this.mToken + "/" + str);
        try {
            ParcelFileDescriptor openFileDescriptor = this.mContentResolver.openFileDescriptor(parse, "r");
            if (openFileDescriptor != null) {
                return openFileDescriptor;
            }
            Bundle bundle = new Bundle();
            bundle.putString(KnoxCustomManagerService.SPCM_KEY_TOKEN, this.mToken);
            Bundle callScpmApi = callScpmApi(parse, "getLastError", bundle);
            if (callScpmApi == null) {
                AudioService.sScpmLogger.enqueue(new EventLogger.StringEvent("getScpmFileDescriptor : bundle is null"));
                return null;
            }
            AudioService.sScpmLogger.enqueue(new EventLogger.StringEvent("getScpmParcelFile, code=" + callScpmApi.getInt(KnoxCustomManagerService.SPCM_KEY_RESULT_CODE, -1) + ", msg=" + callScpmApi.getString(KnoxCustomManagerService.SPCM_KEY_RESULT_MESSAGE)));
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            AudioService.sScpmLogger.enqueue(new EventLogger.StringEvent("getScpmParcelFile : Fail to update"));
            return null;
        }
    }

    public final Bundle callScpmApi(Uri uri, String str, Bundle bundle) {
        return this.mContentResolver.call(uri, str, "android", bundle);
    }

    public final void getDataForPolicyAudio() {
        Log.d("SoundAppPolicyManager", "getData(POLOCY_AUDIO)");
        if (!register()) {
            AudioService.sScpmLogger.enqueue(new EventLogger.StringEvent("getData(POLOCY_AUDIO) : Fail to register, token is null"));
            return;
        }
        ParcelFileDescriptor parcelFileDescriptor = null;
        try {
            try {
                parcelFileDescriptor = getScpmParcelFile("Audio");
            } catch (Exception e) {
                e.printStackTrace();
                if (0 == 0) {
                    return;
                }
            }
            if (parcelFileDescriptor == null) {
                if (parcelFileDescriptor != null) {
                    try {
                        parcelFileDescriptor.close();
                        return;
                    } catch (IOException unused) {
                        return;
                    }
                }
                return;
            }
            FileDescriptor fileDescriptor = parcelFileDescriptor.getFileDescriptor();
            if (fileDescriptor != null) {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new FileReader(fileDescriptor));
                    try {
                        this.mAppList = new ArrayList();
                        boolean z = false;
                        while (true) {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            String[] split = readLine.split(",");
                            if (z) {
                                Data data = new Data();
                                data.packageName = split[0];
                                data.categoryName = split[1];
                                this.mAppList.add(data);
                            } else {
                                this.mVersion = Integer.parseInt(split[1]);
                                Log.d("SoundAppPolicyManager", "getVersion = " + this.mVersion);
                                z = true;
                            }
                        }
                        bufferedReader.close();
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            try {
                parcelFileDescriptor.close();
            } catch (IOException unused2) {
            }
        } catch (Throwable th3) {
            if (0 != 0) {
                try {
                    parcelFileDescriptor.close();
                } catch (IOException unused3) {
                }
            }
            throw th3;
        }
    }

    public void checkAndUpdateAppList() {
        List list;
        Log.d("SoundAppPolicyManager", "checkAndUpdateAppList");
        try {
            getDataForPolicyAudio();
            int intValue = this.mSettingHelper.getIntValue("APP_LIST_VERSION", 0);
            if (intValue < this.mVersion && (list = this.mAppList) != null && list.size() > 0) {
                Log.i("SoundAppPolicyManager", "checkAndUpdateAppList update app list version = " + this.mVersion);
                this.mSettingHelper.resetAllowedListTable();
                for (Data data : this.mAppList) {
                    Log.d("SoundAppPolicyManager", "package = " + data.packageName + " categoryName = " + data.categoryName);
                    this.mSettingHelper.putAppList(data.packageName, data.categoryName);
                }
                this.mSettingHelper.setIntValue("APP_LIST_VERSION", this.mVersion);
                setBtGameLatencyList(this.mSettingHelper.getAppList());
                AudioService.sScpmLogger.enqueue(new EventLogger.StringEvent("checkAndUpdateAppList : Success to update version = " + this.mVersion));
            } else {
                Log.w("SoundAppPolicyManager", "App list is already latest version. Local version = " + intValue + " SCPM version = " + this.mVersion);
            }
        } finally {
            this.mAppList = null;
        }
    }

    public void setDefaultAllowList() {
        Trace.traceBegin(256L, "setDefaultAllowList");
        try {
            Log.i("SoundAppPolicyManager", "SoundAppPolicy setDefaultAllowList()");
            this.mSettingHelper.resetAllowedListTable();
            loadDefaultAllowedPackageList(R.array.config_allowedSecureInstantAppSettings, "bt_game_latency_deny");
            loadDefaultAllowedPackageList(R.array.config_allowedSystemInstantAppSettings, "delay_loss_audio_focus");
            loadDefaultAllowedPackageList(R.array.config_ambientBrighteningThresholds, "karaoke_allow");
            loadDefaultAllowedPackageList(R.array.config_ambientDarkeningThresholds, "karaoke_listenback_allow");
            loadDefaultAllowedPackageList(R.array.config_ambientThresholdLevels, "media_button_deny");
            loadDefaultAllowedPackageList(R.array.config_ambientThresholdsOfPeakRefreshRate, "virtual_vibration_sound_allowance");
            this.mSettingHelper.setIntValue("APP_LIST_VERSION", 2022070700);
        } finally {
            Trace.endSection();
        }
    }

    public final void loadDefaultAllowedPackageList(int i, String str) {
        for (String str2 : Resources.getSystem().getStringArray(i)) {
            this.mSettingHelper.putAppList(str2, str);
        }
    }

    public static void setBtGameLatencyList(Hashtable hashtable) {
        StringBuilder sb = new StringBuilder();
        sb.setLength(0);
        sb.append("l_bt_game_latency");
        sb.append("=");
        for (Map.Entry entry : hashtable.entrySet()) {
            String str = (String) entry.getKey();
            if ("bt_game_latency_deny".equals((String) entry.getValue())) {
                sb.append(str);
                sb.append("|");
            }
        }
        Log.i("SoundAppPolicyManager", sb.toString());
        AudioSystem.setParameters(sb.toString());
    }

    public void checkAndUpdateLiveTranslateList(boolean z) {
        Log.d("SoundAppPolicyManager", "checkAndUpdateLiveTranslateList enforceSkip=" + z);
        try {
            if (z) {
                Log.d("SoundAppPolicyManager", "Skip updating live translate allow list! reason: enforceSkip");
                return;
            }
            if (!getDataForPolicyCall()) {
                Log.d("SoundAppPolicyManager", "Skip updating live translate allow list! reason: failed getData");
                return;
            }
            if (!this.mSettingHelper.isCallPolicyEmpty()) {
                this.mSettingHelper.resetCallPolicyTable();
            }
            for (Data data : this.mLiveTranslateAllowList) {
                Log.d("SoundAppPolicyManager", "package = " + data.packageName + " categoryName = " + data.categoryName);
                this.mSettingHelper.putCallPolicyAllowList(data.packageName, data.categoryName);
            }
            this.mSettingHelper.setIntValue("LIVE_TRANSLATE_ALLOW_LIST_VERSION", this.mLiveTranslateAllowListVersion);
            AudioService.sScpmLogger.enqueue(new EventLogger.StringEvent("checkAndUpdateLiveTranslateList : Success to update"));
        } finally {
            this.mLiveTranslateAllowList = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a5, code lost:
    
        if (0 == 0) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean getDataForPolicyCall() {
        /*
            r8 = this;
            java.lang.String r0 = "getData(POLOCY_CALL)"
            java.lang.String r1 = "SoundAppPolicyManager"
            android.util.Log.d(r1, r0)
            boolean r0 = r8.register()
            r2 = 0
            if (r0 != 0) goto L1b
            com.android.server.utils.EventLogger r8 = com.android.server.audio.AudioService.sScpmLogger
            com.android.server.utils.EventLogger$StringEvent r0 = new com.android.server.utils.EventLogger$StringEvent
            java.lang.String r1 = "getData(POLOCY_CALL) : Fail to register, token is null"
            r0.<init>(r1)
            r8.enqueue(r0)
            return r2
        L1b:
            r0 = 1
            r3 = 0
            java.lang.String r4 = "voip-live-translate-allow-list-a7f6"
            android.os.ParcelFileDescriptor r3 = r8.getScpmParcelFile(r4)     // Catch: java.lang.Throwable -> L9f java.lang.Exception -> La1
            if (r3 != 0) goto L2c
            if (r3 == 0) goto L2b
            r3.close()     // Catch: java.io.IOException -> L2b
        L2b:
            return r2
        L2c:
            java.io.FileDescriptor r4 = r3.getFileDescriptor()     // Catch: java.lang.Throwable -> L9f java.lang.Exception -> La1
            if (r4 == 0) goto L9b
            java.io.BufferedReader r5 = new java.io.BufferedReader     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> L9f
            java.io.FileReader r6 = new java.io.FileReader     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> L9f
            r6.<init>(r4)     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> L9f
            r5.<init>(r6)     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> L9f
            java.util.ArrayList r4 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L8d
            r4.<init>()     // Catch: java.lang.Throwable -> L8d
            r8.mLiveTranslateAllowList = r4     // Catch: java.lang.Throwable -> L8d
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8d
            r4.<init>()     // Catch: java.lang.Throwable -> L8d
        L48:
            java.lang.String r6 = r5.readLine()     // Catch: java.lang.Throwable -> L8d
            if (r6 == 0) goto L52
            r4.append(r6)     // Catch: java.lang.Throwable -> L8d
            goto L48
        L52:
            org.json.JSONObject r6 = new org.json.JSONObject     // Catch: org.json.JSONException -> L83 java.lang.Throwable -> L8d
            java.lang.String r4 = r4.toString()     // Catch: org.json.JSONException -> L83 java.lang.Throwable -> L8d
            r6.<init>(r4)     // Catch: org.json.JSONException -> L83 java.lang.Throwable -> L8d
            java.lang.String r4 = "voip_allow_list"
            org.json.JSONArray r4 = r6.getJSONArray(r4)     // Catch: org.json.JSONException -> L83 java.lang.Throwable -> L8d
        L62:
            int r6 = r4.length()     // Catch: org.json.JSONException -> L83 java.lang.Throwable -> L8d
            if (r2 >= r6) goto L80
            com.samsung.android.server.audio.Data r6 = new com.samsung.android.server.audio.Data     // Catch: org.json.JSONException -> L83 java.lang.Throwable -> L8d
            r6.<init>()     // Catch: org.json.JSONException -> L83 java.lang.Throwable -> L8d
            java.lang.String r7 = r4.getString(r2)     // Catch: org.json.JSONException -> L83 java.lang.Throwable -> L8d
            r6.packageName = r7     // Catch: org.json.JSONException -> L83 java.lang.Throwable -> L8d
            java.lang.String r7 = "voip_live_translate_allow"
            r6.categoryName = r7     // Catch: org.json.JSONException -> L83 java.lang.Throwable -> L8d
            java.util.List r7 = r8.mLiveTranslateAllowList     // Catch: org.json.JSONException -> L83 java.lang.Throwable -> L8d
            r7.add(r6)     // Catch: org.json.JSONException -> L83 java.lang.Throwable -> L8d
            int r2 = r2 + 1
            goto L62
        L80:
            r8.mLiveTranslateAllowListVersion = r0     // Catch: org.json.JSONException -> L83 java.lang.Throwable -> L8d
            goto L89
        L83:
            r8 = move-exception
            java.lang.String r2 = "getDataForPolicyCall: Failed to parse json string."
            android.util.Log.w(r1, r2, r8)     // Catch: java.lang.Throwable -> L8d
        L89:
            r5.close()     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> L9f
            goto L9b
        L8d:
            r8 = move-exception
            r5.close()     // Catch: java.lang.Throwable -> L92
            goto L96
        L92:
            r1 = move-exception
            r8.addSuppressed(r1)     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> L9f
        L96:
            throw r8     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> L9f
        L97:
            r8 = move-exception
            r8.printStackTrace()     // Catch: java.lang.Throwable -> L9f java.lang.Exception -> La1
        L9b:
            r3.close()     // Catch: java.io.IOException -> La8
            goto La8
        L9f:
            r8 = move-exception
            goto La9
        La1:
            r8 = move-exception
            r8.printStackTrace()     // Catch: java.lang.Throwable -> L9f
            if (r3 == 0) goto La8
            goto L9b
        La8:
            return r0
        La9:
            if (r3 == 0) goto Lae
            r3.close()     // Catch: java.io.IOException -> Lae
        Lae:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.server.audio.SoundAppPolicyManager.getDataForPolicyCall():boolean");
    }

    public void setDefaultCallPolicyAllowList() {
        Trace.traceBegin(256L, "setDefaultCallPolicyAllowList");
        try {
            Log.i("SoundAppPolicyManager", "setDefaultCallPolicyAllowList()");
            this.mSettingHelper.resetCallPolicyTable();
            loadDefaultCallPolicyAllowList(R.array.config_apfEthTypeBlackList, "voip_live_translate_allow");
            this.mSettingHelper.setIntValue("LIVE_TRANSLATE_ALLOW_LIST_VERSION", 0);
            this.mLiveTranslateAllowListVersion = 0;
        } finally {
            Trace.endSection();
        }
    }

    public final void loadDefaultCallPolicyAllowList(int i, String str) {
        for (String str2 : Resources.getSystem().getStringArray(i)) {
            this.mSettingHelper.putCallPolicyAllowList(str2, str);
        }
    }
}
