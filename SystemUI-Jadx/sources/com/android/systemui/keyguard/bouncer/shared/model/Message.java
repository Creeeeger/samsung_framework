package com.android.systemui.keyguard.bouncer.shared.model;

import android.content.res.ColorStateList;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Message {
    public final boolean animate;
    public final ColorStateList colorState;
    public final Map formatterArgs;
    public final String message;
    public final Integer messageResId;

    public Message() {
        this(null, null, null, null, false, 31, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Message)) {
            return false;
        }
        Message message = (Message) obj;
        if (Intrinsics.areEqual(this.message, message.message) && Intrinsics.areEqual(this.messageResId, message.messageResId) && Intrinsics.areEqual(this.colorState, message.colorState) && Intrinsics.areEqual(this.formatterArgs, message.formatterArgs) && this.animate == message.animate) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int i = 0;
        String str = this.message;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = hashCode * 31;
        Integer num = this.messageResId;
        if (num == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        ColorStateList colorStateList = this.colorState;
        if (colorStateList == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = colorStateList.hashCode();
        }
        int i4 = (i3 + hashCode3) * 31;
        Map map = this.formatterArgs;
        if (map != null) {
            i = map.hashCode();
        }
        int i5 = (i4 + i) * 31;
        boolean z = this.animate;
        int i6 = z;
        if (z != 0) {
            i6 = 1;
        }
        return i5 + i6;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Message(message=");
        sb.append(this.message);
        sb.append(", messageResId=");
        sb.append(this.messageResId);
        sb.append(", colorState=");
        sb.append(this.colorState);
        sb.append(", formatterArgs=");
        sb.append(this.formatterArgs);
        sb.append(", animate=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.animate, ")");
    }

    public Message(String str, Integer num, ColorStateList colorStateList, Map<String, ? extends Object> map, boolean z) {
        this.message = str;
        this.messageResId = num;
        this.colorState = colorStateList;
        this.formatterArgs = map;
        this.animate = z;
    }

    public /* synthetic */ Message(String str, Integer num, ColorStateList colorStateList, Map map, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : colorStateList, (i & 8) != 0 ? null : map, (i & 16) != 0 ? true : z);
    }
}
