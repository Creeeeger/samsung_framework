package com.android.systemui.controls.controller;

import android.content.ComponentName;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ComponentInfo {
    public static final Companion Companion = new Companion(null);
    public static final ComponentName EMPTY_COMPONENT;
    public static final ComponentInfo EMPTY_COMPONENT_INFO;
    public final ComponentName componentName;
    public final List structureInfos;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        ComponentName componentName = new ComponentName("", "");
        EMPTY_COMPONENT = componentName;
        EMPTY_COMPONENT_INFO = new ComponentInfo(componentName, new ArrayList());
    }

    public ComponentInfo(ComponentName componentName, List<StructureInfo> list) {
        this.componentName = componentName;
        this.structureInfos = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ComponentInfo)) {
            return false;
        }
        ComponentInfo componentInfo = (ComponentInfo) obj;
        if (Intrinsics.areEqual(this.componentName, componentInfo.componentName) && Intrinsics.areEqual(this.structureInfos, componentInfo.structureInfos)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.structureInfos.hashCode() + (this.componentName.hashCode() * 31);
    }

    public final String toString() {
        return "ComponentInfo(componentName=" + this.componentName + ", structureInfos=" + this.structureInfos + ")";
    }
}
