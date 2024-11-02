package com.android.systemui.flags;

import android.content.res.Resources;
import android.os.SystemProperties;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FeatureFlagsRelease implements FeatureFlags {
    public final Resources mResources;
    public final Restarter mRestarter;
    public final ServerFlagReader mServerFlagReader;
    public final SystemPropertiesHelper mSystemProperties;
    public final Map mBooleanCache = new HashMap();
    public final Map mStringCache = new HashMap();
    public final Map mIntCache = new HashMap();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.flags.FeatureFlagsRelease$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 {
        public AnonymousClass1() {
        }
    }

    public FeatureFlagsRelease(Resources resources, SystemPropertiesHelper systemPropertiesHelper, ServerFlagReader serverFlagReader, Map<String, Flag> map, Restarter restarter) {
        new AnonymousClass1();
        this.mResources = resources;
        this.mSystemProperties = systemPropertiesHelper;
        this.mServerFlagReader = serverFlagReader;
        this.mRestarter = restarter;
    }

    @Override // android.util.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        String str;
        boolean z;
        printWriter.println("can override: false");
        FlagsFactory.INSTANCE.getClass();
        Map map = FlagsFactory.flagMap;
        map.containsKey(Flags.TEAMFOOD.name);
        printWriter.println("Booleans: ");
        LinkedHashMap linkedHashMap = (LinkedHashMap) map;
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            Flag flag = (Flag) ((Map.Entry) it.next()).getValue();
            if ((flag instanceof BooleanFlag) && (flag instanceof ResourceBooleanFlag) && (flag instanceof SysPropBooleanFlag)) {
                if (!((HashMap) this.mBooleanCache).containsKey(flag.getName())) {
                    if (flag instanceof SysPropBooleanFlag) {
                        SysPropBooleanFlag sysPropBooleanFlag = (SysPropBooleanFlag) flag;
                        SystemPropertiesHelper systemPropertiesHelper = this.mSystemProperties;
                        boolean booleanValue = sysPropBooleanFlag.getDefault().booleanValue();
                        systemPropertiesHelper.getClass();
                        z = SystemProperties.getBoolean(sysPropBooleanFlag.name, booleanValue);
                    } else if (flag instanceof ResourceBooleanFlag) {
                        z = this.mResources.getBoolean(((ResourceBooleanFlag) flag).resourceId);
                    } else if (flag instanceof BooleanFlag) {
                        z = Boolean.valueOf(((BooleanFlag) flag).f2default).booleanValue();
                    }
                    printWriter.println("  " + flag.getName() + ": " + ((HashMap) this.mBooleanCache).getOrDefault(flag.getName(), Boolean.valueOf(z)));
                }
                z = false;
                printWriter.println("  " + flag.getName() + ": " + ((HashMap) this.mBooleanCache).getOrDefault(flag.getName(), Boolean.valueOf(z)));
            }
        }
        printWriter.println("Strings: ");
        Iterator it2 = linkedHashMap.entrySet().iterator();
        while (it2.hasNext()) {
            Flag flag2 = (Flag) ((Map.Entry) it2.next()).getValue();
            if ((flag2 instanceof StringFlag) && (flag2 instanceof ResourceStringFlag)) {
                if (!((HashMap) this.mBooleanCache).containsKey(flag2.getName())) {
                    if (flag2 instanceof ResourceStringFlag) {
                        str = this.mResources.getString(((ResourceStringFlag) flag2).resourceId);
                    } else if (flag2 instanceof StringFlag) {
                        str = ((StringFlag) flag2).f3default;
                    }
                    String str2 = (String) ((HashMap) this.mStringCache).getOrDefault(flag2.getName(), str);
                    printWriter.println("  " + flag2.getName() + ": [length=" + str2.length() + "] \"" + str2 + "\"");
                }
                str = "";
                String str22 = (String) ((HashMap) this.mStringCache).getOrDefault(flag2.getName(), str);
                printWriter.println("  " + flag2.getName() + ": [length=" + str22.length() + "] \"" + str22 + "\"");
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0021, code lost:
    
        if (android.provider.DeviceConfig.getBoolean(r4, r0, true) != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isEnabled(com.android.systemui.flags.ReleasedFlag r4) {
        /*
            r3 = this;
            java.lang.String r0 = r4.name
            com.android.systemui.flags.ServerFlagReader r1 = r3.mServerFlagReader
            java.lang.String r4 = r4.namespace
            com.android.systemui.flags.ServerFlagReaderImpl r1 = (com.android.systemui.flags.ServerFlagReaderImpl) r1
            r1.getClass()
            boolean r2 = kotlin.text.StringsKt__StringsJVMKt.isBlank(r4)
            if (r2 != 0) goto L24
            boolean r2 = kotlin.text.StringsKt__StringsJVMKt.isBlank(r0)
            if (r2 != 0) goto L24
            com.android.systemui.util.DeviceConfigProxy r1 = r1.deviceConfig
            r1.getClass()
            r1 = 1
            boolean r4 = android.provider.DeviceConfig.getBoolean(r4, r0, r1)
            if (r4 == 0) goto L24
            goto L25
        L24:
            r1 = 0
        L25:
            boolean r3 = r3.isEnabledInternal(r0, r1)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.flags.FeatureFlagsRelease.isEnabled(com.android.systemui.flags.ReleasedFlag):boolean");
    }

    public final boolean isEnabledInternal(String str, boolean z) {
        if (!((HashMap) this.mBooleanCache).containsKey(str)) {
            ((HashMap) this.mBooleanCache).put(str, Boolean.valueOf(z));
        }
        return ((Boolean) ((HashMap) this.mBooleanCache).get(str)).booleanValue();
    }

    public final boolean isEnabled(ResourceBooleanFlag resourceBooleanFlag) {
        return isEnabledInternal(resourceBooleanFlag.name, this.mResources.getBoolean(resourceBooleanFlag.resourceId));
    }
}
