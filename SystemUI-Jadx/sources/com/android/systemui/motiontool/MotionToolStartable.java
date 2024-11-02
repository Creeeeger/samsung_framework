package com.android.systemui.motiontool;

import com.android.app.motiontool.DdmHandleMotionTool;
import com.android.systemui.CoreStartable;
import org.apache.harmony.dalvik.ddmc.DdmServer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MotionToolStartable implements CoreStartable {
    public final DdmHandleMotionTool ddmHandleMotionTool;

    public MotionToolStartable(DdmHandleMotionTool ddmHandleMotionTool) {
        this.ddmHandleMotionTool = ddmHandleMotionTool;
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        DdmHandleMotionTool ddmHandleMotionTool = this.ddmHandleMotionTool;
        ddmHandleMotionTool.getClass();
        DdmServer.registerHandler(DdmHandleMotionTool.CHUNK_MOTO, ddmHandleMotionTool);
    }
}
