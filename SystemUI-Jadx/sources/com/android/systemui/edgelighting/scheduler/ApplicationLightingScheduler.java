package com.android.systemui.edgelighting.scheduler;

import com.android.systemui.edgelighting.scheduler.EdgeLightingScheduler;
import java.util.LinkedHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ApplicationLightingScheduler {
    public LightingScheduleInfo mCurrentLightingScheduleInfo;
    public final LinkedHashMap mLinkedInfo = new LinkedHashMap();
    public EdgeLightingScheduler.AnonymousClass3 mListener;
}
