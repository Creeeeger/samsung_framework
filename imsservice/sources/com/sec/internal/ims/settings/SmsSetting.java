package com.sec.internal.ims.settings;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.text.TextUtils;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonParser;
import com.google.gson.stream.JsonReader;
import com.sec.imsservice.R;
import com.sec.internal.constants.Mno;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.JsonUtil;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.Optional;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class SmsSetting {
    private static final String LOG_TAG = "SmsSetting";
    private Context mContext;
    private SimpleEventLog mLog;
    private int mPhoneId;
    private String mMnoName = "";
    private String mMvnoName = "";
    private ContentValues mValues = new ContentValues();

    interface Properties {
        public static final String DEFAULT_SETTING = "default_setting";
        public static final String MNO_NAME = "mnoname";
        public static final String SMS_SETTINGS = "sms_settings";
    }

    public SmsSetting(Context context, int i) {
        this.mContext = context;
        this.mPhoneId = i;
        this.mLog = new SimpleEventLog(context, i, LOG_TAG, 500);
        init();
    }

    public boolean updateMno(ContentValues contentValues, boolean z) {
        String stringValue = CollectionUtils.getStringValue(contentValues, "mnoname", this.mMnoName);
        String stringValue2 = CollectionUtils.getStringValue(contentValues, ISimManager.KEY_MVNO_NAME, this.mMvnoName);
        if (this.mMnoName.equalsIgnoreCase(stringValue) && this.mMvnoName.equalsIgnoreCase(stringValue2) && !z) {
            return false;
        }
        this.mLog.logAndAdd(this.mPhoneId, "updateMno " + this.mMnoName + " -> " + stringValue + " force : " + z);
        this.mMnoName = stringValue;
        this.mMvnoName = stringValue2;
        updateMnoNameForKorSim();
        return init();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0074, code lost:
    
        if (r1.equals("KOO") == false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void updateMnoNameForKorSim() {
        /*
            r5 = this;
            android.content.Context r0 = r5.mContext
            java.lang.String r1 = "phone"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            int r0 = r5.mPhoneId
            java.lang.String r1 = "gsm.sim.operator.numeric"
            java.lang.String r2 = "00000"
            java.lang.String r0 = android.telephony.TelephonyManager.getTelephonyProperty(r0, r1, r2)
            int r1 = r0.length()
            r2 = 0
            r3 = 3
            if (r1 <= r3) goto L22
            java.lang.String r0 = r0.substring(r2, r3)
            goto L24
        L22:
            java.lang.String r0 = "000"
        L24:
            java.lang.String r1 = "450"
            boolean r0 = r0.equals(r1)
            int r1 = r5.mPhoneId
            java.lang.String r1 = com.android.internal.telephony.TelephonyFeatures.getMainOperatorName(r1)
            if (r0 == 0) goto La7
            com.sec.internal.constants.Mno r0 = com.sec.internal.constants.Mno.DEFAULT
            java.lang.String r0 = r0.getName()
            java.lang.String r4 = r5.mMnoName
            boolean r0 = r0.equals(r4)
            if (r0 == 0) goto La7
            r1.hashCode()
            int r0 = r1.hashCode()
            r4 = -1
            switch(r0) {
                case 74603: goto L6e;
                case 74763: goto L63;
                case 75321: goto L58;
                case 82172: goto L4d;
                default: goto L4b;
            }
        L4b:
            r2 = r4
            goto L77
        L4d:
            java.lang.String r0 = "SKT"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L56
            goto L4b
        L56:
            r2 = r3
            goto L77
        L58:
            java.lang.String r0 = "LGT"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L61
            goto L4b
        L61:
            r2 = 2
            goto L77
        L63:
            java.lang.String r0 = "KTT"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L6c
            goto L4b
        L6c:
            r2 = 1
            goto L77
        L6e:
            java.lang.String r0 = "KOO"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L77
            goto L4b
        L77:
            java.lang.String r0 = "SKT_KR"
            switch(r2) {
                case 0: goto L8a;
                case 1: goto L85;
                case 2: goto L80;
                case 3: goto L7d;
                default: goto L7c;
            }
        L7c:
            goto L8c
        L7d:
            r5.mMnoName = r0
            goto L8c
        L80:
            java.lang.String r0 = "LGU+_KR"
            r5.mMnoName = r0
            goto L8c
        L85:
            java.lang.String r0 = "KT_KR"
            r5.mMnoName = r0
            goto L8c
        L8a:
            r5.mMnoName = r0
        L8c:
            com.sec.internal.helper.SimpleEventLog r0 = r5.mLog
            int r1 = r5.mPhoneId
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "updateMnoName for KOR "
            r2.append(r3)
            java.lang.String r5 = r5.mMnoName
            r2.append(r5)
            java.lang.String r5 = r2.toString()
            r0.logAndAdd(r1, r5)
        La7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.settings.SmsSetting.updateMnoNameForKorSim():void");
    }

    public boolean init() {
        if (TextUtils.isEmpty(this.mMnoName)) {
            ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId);
            if (simManagerFromSimSlot != null) {
                String[] split = simManagerFromSimSlot.getSimMnoName().split(String.valueOf(Mno.MVNO_DELIMITER), 2);
                this.mMnoName = split[0];
                this.mLog.logAndAdd(this.mPhoneId, "initialize with SIM " + Arrays.toString(split));
                if (split.length > 1) {
                    this.mMvnoName = split[1];
                }
            } else {
                this.mLog.logAndAdd(this.mPhoneId, "initialize without SIM");
                this.mMnoName = SimUtil.getMno(this.mPhoneId).getName();
                this.mMvnoName = "";
            }
        }
        this.mValues.clear();
        ImsAutoUpdate imsAutoUpdate = ImsAutoUpdate.getInstance(this.mContext, this.mPhoneId);
        try {
            JsonReader jsonReader = new JsonReader(new BufferedReader(new InputStreamReader(this.mContext.getResources().openRawResource(R.raw.smssettings))));
            try {
                JsonElement parse = new JsonParser().parse(jsonReader);
                jsonReader.close();
                JsonObject asJsonObject = parse.getAsJsonObject();
                JsonElement jsonElement = asJsonObject.get(Properties.DEFAULT_SETTING);
                if (jsonElement.isJsonNull()) {
                    this.mLog.logAndAdd(this.mPhoneId, "default_setting is not exist");
                    return false;
                }
                JsonElement updatedSmsSetting = imsAutoUpdate.getUpdatedSmsSetting(jsonElement, Properties.DEFAULT_SETTING);
                JsonArray asJsonArray = asJsonObject.getAsJsonArray(Properties.SMS_SETTINGS);
                if (!JsonUtil.isValidJsonElement(asJsonArray)) {
                    this.mLog.logAndAdd(this.mPhoneId, "sms_settings is not valid");
                    return false;
                }
                String str = this.mMnoName;
                JsonElement jsonElement2 = JsonNull.INSTANCE;
                if (!TextUtils.isEmpty(this.mMvnoName)) {
                    str = str + Mno.MVNO_DELIMITER + this.mMvnoName;
                }
                Iterator it = asJsonArray.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    JsonElement asJsonObject2 = ((JsonElement) it.next()).getAsJsonObject();
                    String asString = asJsonObject2.get("mnoname").getAsString();
                    if (str.equalsIgnoreCase(asString)) {
                        IMSLog.d(LOG_TAG, this.mPhoneId, "find exact sms setting by " + str);
                        jsonElement2 = asJsonObject2;
                        break;
                    }
                    if (this.mMnoName.equalsIgnoreCase(asString)) {
                        IMSLog.d(LOG_TAG, this.mPhoneId, "find sms setting expected " + str + " without MVNO");
                        jsonElement2 = asJsonObject2;
                    }
                }
                JsonElement merge = JsonUtil.merge(updatedSmsSetting, jsonElement2);
                if (!JsonUtil.isValidJsonElement(merge)) {
                    this.mLog.logAndAdd(this.mPhoneId, "Not defined sms setting for " + str);
                } else {
                    updatedSmsSetting = imsAutoUpdate.getUpdatedSmsSetting(merge, "mnoname");
                }
                for (Map.Entry entry : updatedSmsSetting.getAsJsonObject().entrySet()) {
                    this.mValues.put((String) entry.getKey(), ((JsonElement) Optional.ofNullable((JsonElement) entry.getValue()).orElse(JsonNull.INSTANCE)).toString());
                }
                return true;
            } catch (Throwable th) {
                try {
                    jsonReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException | JsonParseException e) {
            e.printStackTrace();
            this.mLog.logAndAdd(this.mPhoneId, "smssettings.json parse fail " + e.getMessage());
            return false;
        }
    }

    public Cursor getAsCursor() {
        MatrixCursor matrixCursor = new MatrixCursor((String[]) this.mValues.keySet().toArray(new String[0]));
        matrixCursor.addRow(this.mValues.getValues().values());
        return matrixCursor;
    }

    public void dump() {
        String str = LOG_TAG;
        IMSLog.dump(str, "Dump of SmsSetting:");
        this.mLog.dump();
        IMSLog.increaseIndent(str);
        IMSLog.dump(str, "Last value of SmsSetting:");
        this.mValues.keySet().forEach(new Consumer() { // from class: com.sec.internal.ims.settings.SmsSetting$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                SmsSetting.this.lambda$dump$0((String) obj);
            }
        });
        IMSLog.decreaseIndent(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dump$0(String str) {
        String str2 = LOG_TAG;
        IMSLog.increaseIndent(str2);
        IMSLog.dump(str2, str + ": " + this.mValues.getAsString(str));
        IMSLog.decreaseIndent(str2);
    }
}
