package com.android.systemui.controls.management.model;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class MainModel {
    public boolean needToMakeDim;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum Type {
        STRUCTURE,
        CONTROL,
        SMALL_CONTROL,
        COMPONENT,
        PANEL
    }

    public abstract Type getType();
}
