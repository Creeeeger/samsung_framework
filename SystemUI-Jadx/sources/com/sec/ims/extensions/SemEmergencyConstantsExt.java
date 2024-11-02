package com.sec.ims.extensions;

import com.samsung.android.emergencymode.SemEmergencyConstants;
import java.lang.reflect.Field;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class SemEmergencyConstantsExt {
    public static final String EMERGENCY_CHECK_ABNORMAL_STATE = getStringFromField("EMERGENCY_CHECK_ABNORMAL_STATE", "com.samsung.intent.action.EMERGENCY_CHECK_ABNORMAL_STATE");

    public static String getStringFromField(String str, String str2) {
        try {
            Field field = ReflectionUtils.getField(SemEmergencyConstants.class, str);
            if (field != null) {
                return (String) field.get(null);
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        return str2;
    }
}
