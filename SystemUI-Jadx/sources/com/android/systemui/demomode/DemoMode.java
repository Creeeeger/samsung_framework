package com.android.systemui.demomode;

import com.android.systemui.plugins.subscreen.SubRoom;
import com.google.android.collect.Lists;
import com.sec.ims.IMSParameter;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface DemoMode extends DemoModeCommandReceiver {
    public static final List NO_COMMANDS = new ArrayList();
    public static final List COMMANDS = Lists.newArrayList(new String[]{"bars", "battery", SubRoom.EXTRA_VALUE_CLOCK, "network", "notifications", "operator", IMSParameter.CALL.STATUS, "volume"});

    default List demoCommands() {
        return NO_COMMANDS;
    }
}
