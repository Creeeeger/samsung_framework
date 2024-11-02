package com.android.systemui.controls.controller;

import android.service.controls.Control;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.systemui.BasicRune;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlInfo {
    public static final Companion Companion = new Companion(null);
    public final String controlId;
    public final CharSequence controlSubtitle;
    public final CharSequence controlTitle;
    public final CustomControlInfoImpl customControlInfo;
    public final int deviceType;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static ControlInfo fromControl(Control control) {
            ControlInfo controlInfo = new ControlInfo(control.getControlId(), control.getTitle(), control.getSubtitle(), control.getDeviceType());
            if (BasicRune.CONTROLS_LAYOUT_TYPE) {
                controlInfo.customControlInfo.layoutType = control.getCustomControl().getLayoutType();
            }
            return controlInfo;
        }
    }

    public ControlInfo(String str, CharSequence charSequence, CharSequence charSequence2, int i, CustomControlInfoImpl customControlInfoImpl) {
        this.controlId = str;
        this.controlTitle = charSequence;
        this.controlSubtitle = charSequence2;
        this.deviceType = i;
        this.customControlInfo = customControlInfoImpl;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ControlInfo)) {
            return false;
        }
        ControlInfo controlInfo = (ControlInfo) obj;
        if (Intrinsics.areEqual(this.controlId, controlInfo.controlId) && Intrinsics.areEqual(this.controlTitle, controlInfo.controlTitle) && Intrinsics.areEqual(this.controlSubtitle, controlInfo.controlSubtitle) && this.deviceType == controlInfo.deviceType && Intrinsics.areEqual(this.customControlInfo, controlInfo.customControlInfo)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.customControlInfo.hashCode() + AppInfoViewData$$ExternalSyntheticOutline0.m(this.deviceType, (this.controlSubtitle.hashCode() + ((this.controlTitle.hashCode() + (this.controlId.hashCode() * 31)) * 31)) * 31, 31);
    }

    public final String toString() {
        return ":" + this.controlId + ":" + ((Object) this.controlTitle) + ":" + this.deviceType;
    }

    public ControlInfo(String str, CharSequence charSequence, CharSequence charSequence2, int i) {
        this(str, charSequence, charSequence2, i, new CustomControlInfoImpl(0));
    }
}
