package com.android.systemui.qs.bar.soundcraft.interfaces.routine.extension;

import com.android.systemui.qs.bar.soundcraft.interfaces.wearable.BudsPluginInfo;
import com.samsung.android.sdk.routines.automationservice.data.MetaInfo;
import com.samsung.android.sdk.routines.automationservice.data.ParameterValues;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Unit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ActionParamCreator {
    public static final ActionParamCreator INSTANCE = new ActionParamCreator();

    private ActionParamCreator() {
    }

    public static void putActionValue(HashMap hashMap, ActionType actionType, String str) {
        BudsPluginInfo[] values = BudsPluginInfo.values();
        ArrayList arrayList = new ArrayList();
        for (BudsPluginInfo budsPluginInfo : values) {
            if (budsPluginInfo.isSupport()) {
                arrayList.add(budsPluginInfo);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            BudsPluginInfo budsPluginInfo2 = (BudsPluginInfo) it.next();
            MetaInfo.Companion companion = MetaInfo.Companion;
            String packageName = budsPluginInfo2.getPackageName();
            String tag = actionType.getTag(budsPluginInfo2.getProjectName());
            companion.getClass();
            MetaInfo metaInfo = new MetaInfo(packageName, tag, null);
            ParameterValues.Companion.getClass();
            ParameterValues parameterValues = new ParameterValues();
            parameterValues.put("v2IntentParam", str);
            Unit unit = Unit.INSTANCE;
            hashMap.put(metaInfo, parameterValues);
        }
    }
}
