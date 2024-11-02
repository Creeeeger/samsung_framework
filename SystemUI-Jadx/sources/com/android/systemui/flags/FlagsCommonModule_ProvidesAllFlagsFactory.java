package com.android.systemui.flags;

import java.util.Map;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FlagsCommonModule_ProvidesAllFlagsFactory implements Provider {
    public static Map providesAllFlags() {
        FlagsCommonModule.Companion.getClass();
        FlagsFactory.INSTANCE.getClass();
        Map map = FlagsFactory.flagMap;
        map.containsKey(Flags.TEAMFOOD.name);
        return map;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesAllFlags();
    }
}
