package com.sec.internal.ims.settings;

import android.content.Context;
import android.text.TextUtils;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.stream.JsonReader;
import com.sec.imsservice.R;
import com.sec.internal.constants.Mno;
import com.sec.internal.helper.JsonUtil;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.log.IMSLog;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ImsServiceSwitchLoader {
    private static final String LOG_TAG = "ImsServiceSwitchLoader";
    protected static final String SP_KEY_MNONAME = "mnoname";

    protected static JsonElement getImsSwitchFromJson(Context context, String str, int i) {
        InputStream openRawResource;
        InputStream inputStream = null;
        try {
            try {
                if (DeviceUtil.isTablet()) {
                    IMSLog.d(LOG_TAG, i, " getResources : imsswitch_tablet.json");
                    openRawResource = context.getResources().openRawResource(R.raw.imsswitch_tablet);
                } else {
                    Mno fromName = Mno.fromName(str);
                    if (DeviceUtil.isUSOpenDevice() && (fromName.isUSA() || fromName.isCanada())) {
                        IMSLog.d(LOG_TAG, i, " getResources : imsswitch_open.json");
                        openRawResource = context.getResources().openRawResource(R.raw.imsswitch_open);
                    } else {
                        IMSLog.d(LOG_TAG, i, " getResources : imsswitch.json");
                        openRawResource = context.getResources().openRawResource(R.raw.imsswitch);
                    }
                }
                inputStream = openRawResource;
                JsonParser jsonParser = new JsonParser();
                JsonReader jsonReader = new JsonReader(new BufferedReader(new InputStreamReader(inputStream)));
                JsonElement parse = jsonParser.parse(jsonReader);
                jsonReader.close();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                return parse;
            } catch (IOException e2) {
                e2.printStackTrace();
                JsonNull jsonNull = JsonNull.INSTANCE;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
                return jsonNull;
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static JsonElement getMatchedJsonElement(Context context, JsonObject jsonObject, String str, String str2, int i) {
        boolean z;
        String str3;
        JsonElement jsonElement = JsonNull.INSTANCE;
        JsonArray asJsonArray = jsonObject.getAsJsonArray("imsswitch");
        if (!JsonUtil.isValidJsonElement(asJsonArray)) {
            IMSLog.e(LOG_TAG, i, "load: parse failed.");
            return jsonElement;
        }
        if (TextUtils.isEmpty(str2)) {
            z = false;
            str3 = str;
        } else {
            str3 = str + Mno.MVNO_DELIMITER + str2;
            z = true;
        }
        JsonElement jsonElement2 = JsonNull.INSTANCE;
        try {
            Iterator it = asJsonArray.iterator();
            while (it.hasNext()) {
                JsonElement jsonElement3 = (JsonElement) it.next();
                JsonElement asJsonObject = jsonElement3.getAsJsonObject();
                String asString = jsonElement3.getAsJsonObject().get("mnoname").getAsString();
                try {
                    if (z) {
                        if (asString.equalsIgnoreCase(str3)) {
                            IMSLog.d(LOG_TAG, i, "loadImsSwitchFromJson - mvnoname on json:" + asString + " found");
                            jsonElement = asJsonObject;
                            break;
                        }
                        if (asString.equalsIgnoreCase(str)) {
                            jsonElement2 = asJsonObject;
                        }
                    } else if (asString.equalsIgnoreCase(str)) {
                        IMSLog.d(LOG_TAG, i, "loadImsSwitchFromJson - mnoname on json:" + asString + " found");
                        jsonElement = asJsonObject;
                        break;
                    }
                } catch (Exception unused) {
                    return asJsonObject;
                }
            }
            ImsAutoUpdate imsAutoUpdate = ImsAutoUpdate.getInstance(context, i);
            if (!jsonElement.isJsonNull()) {
                return imsAutoUpdate != null ? imsAutoUpdate.getUpdatedImsSwitch(jsonElement) : jsonElement;
            }
            JsonElement jsonObject2 = new JsonObject();
            jsonObject2.addProperty("mnoname", str3);
            if (imsAutoUpdate != null) {
                jsonObject2 = imsAutoUpdate.getUpdatedImsSwitch(jsonObject2);
            }
            if (jsonObject2.getAsJsonObject().size() <= 1) {
                IMSLog.d(LOG_TAG, i, "loadImsSwitchFromJson - not matched");
                if (z && !jsonElement2.isJsonNull()) {
                    IMSLog.d(LOG_TAG, i, "loadImsSwitchFromJson - primary mnoname on json:" + str + " found");
                    if (imsAutoUpdate != null) {
                        jsonElement2 = imsAutoUpdate.getUpdatedImsSwitch(jsonElement2);
                    }
                } else {
                    IMSLog.d(LOG_TAG, i, "loadImsSwitchFromJson - No matched imsswitch");
                    jsonElement2 = JsonNull.INSTANCE;
                }
            } else {
                jsonElement2 = jsonObject2;
            }
            return jsonElement2;
        } catch (Exception unused2) {
            return jsonElement;
        }
    }
}
