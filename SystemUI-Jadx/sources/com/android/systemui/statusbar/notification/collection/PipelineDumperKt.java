package com.android.systemui.statusbar.notification.collection;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class PipelineDumperKt {
    public static final String getBareClassName(Object obj) {
        int i;
        String name;
        String name2 = obj.getClass().getName();
        Package r1 = obj.getClass().getPackage();
        if (r1 != null && (name = r1.getName()) != null) {
            i = name.length() + 1;
        } else {
            i = 0;
        }
        return name2.substring(i);
    }
}
