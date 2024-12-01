package com.samsung.android.hardware.secinputdev.taas;

import android.content.Context;
import android.os.SemHqmManager;
import android.util.Log;
import com.samsung.android.hardware.secinputdev.SemInputDeviceManagerService;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class SemInputDeviceHqmHelper {
    private static final String[] BIG_DATA = {"CASA", "CASB"};
    private static final String COMONENT_VER = "0.0";
    private static final String COMPONENT_ID = "TSP";
    private static final String COM_MANUFACTURE = "sec";
    private static final String DEV_CUSTOM_DATA_SET = "";
    private static final String HIT_TYPE = "sm";
    private static final int MS_PER_HOUR = 3600000;
    private static final int PERIOD_LOGGING = 86400000;
    private static final String PRI_CUSTOM_DATA_SET = "";
    private static final String TAG = "SemInputDeviceHqmHelper";
    private static final String TSP_FEATURE = "TAAS";
    private static SemInputDeviceHqmHelper sInstance;
    private SemHqmManager mSemHqmManager;

    private SemInputDeviceHqmHelper(Context context) {
        this.mSemHqmManager = (SemHqmManager) context.getSystemService("HqmManagerService");
    }

    public static SemInputDeviceHqmHelper getInstance(Context context) {
        if (sInstance == null) {
            sInstance = new SemInputDeviceHqmHelper(context);
        }
        return sInstance;
    }

    public void sendHqmTspData(SemInputDeviceHqmData data) {
        ArrayList<String> types = new ArrayList<>();
        ArrayList<String> values = new ArrayList<>();
        int i = 0;
        while (true) {
            String[] strArr = BIG_DATA;
            if (i < strArr.length) {
                String strVal = Integer.toString(data.get(strArr[i]));
                if (strVal != null) {
                    types.add(strArr[i]);
                    values.add(strVal);
                }
                i++;
            } else {
                sendLoggingDataToHQM(types, values);
                return;
            }
        }
    }

    private String convertToBigDataFormat(ArrayList<String> types, ArrayList<String> values) {
        int size = types.size();
        try {
            JSONObject obj = new JSONObject();
            for (int i = 0; i < size; i++) {
                obj.put(types.get(i), values.get(i));
            }
            return obj.toString();
        } catch (Exception e) {
            SemInputDeviceManagerService.loggingException(TAG, "convertToBigDataFormat", e);
            return null;
        }
    }

    private void sendLoggingDataToHQM(ArrayList<String> types, ArrayList<String> values) {
        String basic_customDataSet = convertToBigDataFormat(types, values);
        if (basic_customDataSet == null) {
            return;
        }
        String basic_customDataSet2 = basic_customDataSet.replaceAll("\\{", "").replaceAll("\\}", "");
        if (this.mSemHqmManager != null) {
            Log.d(TAG, "sendLoggingDataToHQM() Server update !!! basic_custom " + basic_customDataSet2);
            this.mSemHqmManager.sendHWParamToHQM(0, COMPONENT_ID, TSP_FEATURE, HIT_TYPE, COMONENT_VER, COM_MANUFACTURE, "", basic_customDataSet2, "");
        }
    }
}
