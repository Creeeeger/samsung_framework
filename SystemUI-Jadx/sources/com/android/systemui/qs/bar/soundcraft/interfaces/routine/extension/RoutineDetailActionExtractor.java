package com.android.systemui.qs.bar.soundcraft.interfaces.routine.extension;

import com.samsung.android.sdk.routines.automationservice.data.ActionStatus;
import com.samsung.android.sdk.routines.automationservice.data.ParameterValues;
import com.samsung.android.sdk.routines.automationservice.data.RoutineDetail;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RoutineDetailActionExtractor {
    public static final RoutineDetailActionExtractor INSTANCE = new RoutineDetailActionExtractor();

    private RoutineDetailActionExtractor() {
    }

    public static String getActionValue(RoutineDetail routineDetail, String str, String str2) {
        Object obj;
        ParameterValues parameterValues;
        ParameterValues.ParameterValue parameterValue;
        Iterator it = routineDetail.actions.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (Intrinsics.areEqual(((ActionStatus) obj).tag, str)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        ActionStatus actionStatus = (ActionStatus) obj;
        if (actionStatus != null && (parameterValues = actionStatus.parameterValues) != null && (parameterValue = (ParameterValues.ParameterValue) ((HashMap) parameterValues.parameterValueMap).get("v2IntentParam")) != null && parameterValue.getValue() != null) {
            return (String) parameterValue.getValue();
        }
        return str2;
    }
}
