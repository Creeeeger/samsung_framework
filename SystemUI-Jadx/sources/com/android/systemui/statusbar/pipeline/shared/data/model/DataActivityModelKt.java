package com.android.systemui.statusbar.pipeline.shared.data.model;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class DataActivityModelKt {
    public static final DataActivityModel toMobileDataActivityModel(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return new DataActivityModel(false, false);
                }
                return new DataActivityModel(true, true);
            }
            return new DataActivityModel(false, true);
        }
        return new DataActivityModel(true, false);
    }

    public static final DataActivityModel toWifiDataActivityModel(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return new DataActivityModel(false, false);
                }
                return new DataActivityModel(true, true);
            }
            return new DataActivityModel(false, true);
        }
        return new DataActivityModel(true, false);
    }
}
