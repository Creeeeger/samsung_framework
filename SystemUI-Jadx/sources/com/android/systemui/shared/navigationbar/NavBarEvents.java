package com.android.systemui.shared.navigationbar;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardFaceListenModel$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NavBarEvents implements Parcelable {
    public static final CREATOR CREATOR = new CREATOR(null);
    public int appearance;
    public EventType eventType;
    public boolean hiddenByKnox;
    public Bundle iconBitmapBundle;
    public final IconType iconType;
    public Bundle insetsBundle;
    public final boolean orderDefault;
    public Bundle pluginBundle;
    public final int position;
    public Bundle remoteViewBundle;
    public boolean rotationLocked;
    public boolean transientShowing;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class CREATOR implements Parcelable.Creator {
        private CREATOR() {
        }

        public /* synthetic */ CREATOR(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            return new NavBarEvents(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new NavBarEvents[i];
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum EventType {
        ON_UPDATE_NAVBAR_REMOTEVIEWS,
        ON_UPDATE_ICON_BITMAP,
        ON_ROTATION_LOCKED_CHANGED,
        ON_TRANSIENT_SHOWING_CHANGED,
        ON_APPEARANCE_CHANGED,
        ON_UPDATE_SPLUGIN_BUNDLE,
        ON_UPDATE_TASKBAR_VIS_BY_KNOX,
        ON_UPDATE_SIDE_BACK_GESTURE_INSETS
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum IconType {
        /* JADX INFO: Fake field, exist only in values array */
        TYPE_BACK,
        /* JADX INFO: Fake field, exist only in values array */
        TYPE_BACK_LAND,
        /* JADX INFO: Fake field, exist only in values array */
        TYPE_BACK_ALT,
        /* JADX INFO: Fake field, exist only in values array */
        TYPE_BACK_ALT_LAND,
        /* JADX INFO: Fake field, exist only in values array */
        TYPE_HOME,
        /* JADX INFO: Fake field, exist only in values array */
        TYPE_RECENT,
        /* JADX INFO: Fake field, exist only in values array */
        TYPE_DOCKED,
        /* JADX INFO: Fake field, exist only in values array */
        TYPE_IME,
        /* JADX INFO: Fake field, exist only in values array */
        TYPE_MENU,
        /* JADX INFO: Fake field, exist only in values array */
        TYPE_SHOW_PIN,
        /* JADX INFO: Fake field, exist only in values array */
        TYPE_HIDE_PIN,
        /* JADX INFO: Fake field, exist only in values array */
        TYPE_A11Y,
        /* JADX INFO: Fake field, exist only in values array */
        TYPE_BACK_CAR,
        /* JADX INFO: Fake field, exist only in values array */
        TYPE_BACK_LAND_CAR,
        /* JADX INFO: Fake field, exist only in values array */
        TYPE_HOME_CAR,
        /* JADX INFO: Fake field, exist only in values array */
        TYPE_HOME_CAR,
        /* JADX INFO: Fake field, exist only in values array */
        TYPE_HOME_CAR,
        TYPE_GESTURE_HINT,
        TYPE_GESTURE_HINT_VI,
        TYPE_GESTURE_HANDLE_HINT,
        /* JADX INFO: Fake field, exist only in values array */
        TYPE_SECONDARY_HOME_HANDLE
    }

    public NavBarEvents() {
        this(null, null, null, null, false, 0, false, false, 0, null, false, null, 4095, null);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NavBarEvents)) {
            return false;
        }
        NavBarEvents navBarEvents = (NavBarEvents) obj;
        if (this.eventType == navBarEvents.eventType && this.iconType == navBarEvents.iconType && Intrinsics.areEqual(this.remoteViewBundle, navBarEvents.remoteViewBundle) && Intrinsics.areEqual(this.iconBitmapBundle, navBarEvents.iconBitmapBundle) && this.orderDefault == navBarEvents.orderDefault && this.position == navBarEvents.position && this.rotationLocked == navBarEvents.rotationLocked && this.transientShowing == navBarEvents.transientShowing && this.appearance == navBarEvents.appearance && Intrinsics.areEqual(this.pluginBundle, navBarEvents.pluginBundle) && this.hiddenByKnox == navBarEvents.hiddenByKnox && Intrinsics.areEqual(this.insetsBundle, navBarEvents.insetsBundle)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        EventType eventType = this.eventType;
        int i = 0;
        if (eventType == null) {
            hashCode = 0;
        } else {
            hashCode = eventType.hashCode();
        }
        int i2 = hashCode * 31;
        IconType iconType = this.iconType;
        if (iconType == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = iconType.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        Bundle bundle = this.remoteViewBundle;
        if (bundle == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = bundle.hashCode();
        }
        int i4 = (i3 + hashCode3) * 31;
        Bundle bundle2 = this.iconBitmapBundle;
        if (bundle2 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = bundle2.hashCode();
        }
        int i5 = (i4 + hashCode4) * 31;
        boolean z = this.orderDefault;
        int i6 = 1;
        int i7 = z;
        if (z != 0) {
            i7 = 1;
        }
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.position, (i5 + i7) * 31, 31);
        boolean z2 = this.rotationLocked;
        int i8 = z2;
        if (z2 != 0) {
            i8 = 1;
        }
        int i9 = (m + i8) * 31;
        boolean z3 = this.transientShowing;
        int i10 = z3;
        if (z3 != 0) {
            i10 = 1;
        }
        int m2 = AppInfoViewData$$ExternalSyntheticOutline0.m(this.appearance, (i9 + i10) * 31, 31);
        Bundle bundle3 = this.pluginBundle;
        if (bundle3 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = bundle3.hashCode();
        }
        int i11 = (m2 + hashCode5) * 31;
        boolean z4 = this.hiddenByKnox;
        if (!z4) {
            i6 = z4 ? 1 : 0;
        }
        int i12 = (i11 + i6) * 31;
        Bundle bundle4 = this.insetsBundle;
        if (bundle4 != null) {
            i = bundle4.hashCode();
        }
        return i12 + i;
    }

    public final String toString() {
        EventType eventType = this.eventType;
        IconType iconType = this.iconType;
        Bundle bundle = this.remoteViewBundle;
        Bundle bundle2 = this.iconBitmapBundle;
        boolean z = this.orderDefault;
        int i = this.position;
        boolean z2 = this.rotationLocked;
        boolean z3 = this.transientShowing;
        int i2 = this.appearance;
        Bundle bundle3 = this.pluginBundle;
        boolean z4 = this.hiddenByKnox;
        Bundle bundle4 = this.insetsBundle;
        StringBuilder sb = new StringBuilder("NavBarEvents(eventType=");
        sb.append(eventType);
        sb.append(", iconType=");
        sb.append(iconType);
        sb.append(", remoteViewBundle=");
        sb.append(bundle);
        sb.append(", iconBitmapBundle=");
        sb.append(bundle2);
        sb.append(", orderDefault=");
        sb.append(z);
        sb.append(", position=");
        sb.append(i);
        sb.append(", rotationLocked=");
        KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(sb, z2, ", transientShowing=", z3, ", appearance=");
        sb.append(i2);
        sb.append(", pluginBundle=");
        sb.append(bundle3);
        sb.append(", hiddenByKnox=");
        sb.append(z4);
        sb.append(", insetsBundle=");
        sb.append(bundle4);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str;
        EventType eventType = this.eventType;
        String str2 = null;
        if (eventType != null) {
            str = eventType.name();
        } else {
            str = null;
        }
        parcel.writeString(str);
        IconType iconType = this.iconType;
        if (iconType != null) {
            str2 = iconType.name();
        }
        parcel.writeString(str2);
        parcel.writeBundle(this.remoteViewBundle);
        parcel.writeBundle(this.iconBitmapBundle);
        parcel.writeByte(this.orderDefault ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.position);
        parcel.writeBoolean(this.rotationLocked);
        parcel.writeBoolean(this.transientShowing);
        parcel.writeInt(this.appearance);
        parcel.writeBundle(this.pluginBundle);
        parcel.writeBoolean(this.hiddenByKnox);
        parcel.writeBundle(this.insetsBundle);
    }

    public NavBarEvents(EventType eventType, IconType iconType, Bundle bundle, Bundle bundle2, boolean z, int i, boolean z2, boolean z3, int i2, Bundle bundle3, boolean z4, Bundle bundle4) {
        this.eventType = eventType;
        this.iconType = iconType;
        this.remoteViewBundle = bundle;
        this.iconBitmapBundle = bundle2;
        this.orderDefault = z;
        this.position = i;
        this.rotationLocked = z2;
        this.transientShowing = z3;
        this.appearance = i2;
        this.pluginBundle = bundle3;
        this.hiddenByKnox = z4;
        this.insetsBundle = bundle4;
    }

    public /* synthetic */ NavBarEvents(EventType eventType, IconType iconType, Bundle bundle, Bundle bundle2, boolean z, int i, boolean z2, boolean z3, int i2, Bundle bundle3, boolean z4, Bundle bundle4, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? null : eventType, (i3 & 2) != 0 ? null : iconType, (i3 & 4) != 0 ? null : bundle, (i3 & 8) != 0 ? null : bundle2, (i3 & 16) != 0 ? true : z, (i3 & 32) != 0 ? 0 : i, (i3 & 64) != 0 ? false : z2, (i3 & 128) != 0 ? false : z3, (i3 & 256) != 0 ? 0 : i2, (i3 & 512) != 0 ? null : bundle3, (i3 & 1024) == 0 ? z4 : false, (i3 & 2048) == 0 ? bundle4 : null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public NavBarEvents(android.os.Parcel r16) {
        /*
            r15 = this;
            java.lang.String r0 = r16.readString()
            r1 = 0
            if (r0 == 0) goto Ld
            com.android.systemui.shared.navigationbar.NavBarEvents$EventType r0 = com.android.systemui.shared.navigationbar.NavBarEvents.EventType.valueOf(r0)
            r3 = r0
            goto Le
        Ld:
            r3 = r1
        Le:
            java.lang.String r0 = r16.readString()
            if (r0 == 0) goto L18
            com.android.systemui.shared.navigationbar.NavBarEvents$IconType r1 = com.android.systemui.shared.navigationbar.NavBarEvents.IconType.valueOf(r0)
        L18:
            r4 = r1
            android.os.Bundle r5 = r16.readBundle()
            android.os.Bundle r6 = r16.readBundle()
            byte r0 = r16.readByte()
            if (r0 == 0) goto L29
            r0 = 1
            goto L2a
        L29:
            r0 = 0
        L2a:
            r7 = r0
            int r8 = r16.readInt()
            boolean r9 = r16.readBoolean()
            boolean r10 = r16.readBoolean()
            int r11 = r16.readInt()
            android.os.Bundle r12 = r16.readBundle()
            boolean r13 = r16.readBoolean()
            android.os.Bundle r14 = r16.readBundle()
            r2 = r15
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.shared.navigationbar.NavBarEvents.<init>(android.os.Parcel):void");
    }
}
