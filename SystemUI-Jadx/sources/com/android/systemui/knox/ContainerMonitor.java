package com.android.systemui.knox;

import android.os.SystemProperties;
import android.os.UserManager;
import com.android.systemui.Dumpable;
import java.io.PrintWriter;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ContainerMonitor implements Dumpable {
    public final boolean KNOX_DEBUG = "eng".equals(SystemProperties.get("ro.build.type"));
    public List mPersonas = null;
    public final UserManager mUserManager;

    public ContainerMonitor(KnoxStateMonitorImpl knoxStateMonitorImpl) {
        this.mUserManager = (UserManager) knoxStateMonitorImpl.mContext.getSystemService("user");
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
    }
}
