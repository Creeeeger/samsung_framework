package com.android.systemui.controls.controller;

import androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CustomControlInfoImpl {
    public int layoutType;

    public CustomControlInfoImpl(int i) {
        this.layoutType = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof CustomControlInfoImpl) && this.layoutType == ((CustomControlInfoImpl) obj).layoutType) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.layoutType);
    }

    public final String toString() {
        return LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("CustomControlInfoImpl(layoutType=", this.layoutType, ")");
    }
}
