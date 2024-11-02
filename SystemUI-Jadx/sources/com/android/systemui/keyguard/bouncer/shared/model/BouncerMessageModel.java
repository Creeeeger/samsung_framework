package com.android.systemui.keyguard.bouncer.shared.model;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BouncerMessageModel {
    public final Message message;
    public final Message secondaryMessage;

    public BouncerMessageModel() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BouncerMessageModel)) {
            return false;
        }
        BouncerMessageModel bouncerMessageModel = (BouncerMessageModel) obj;
        if (Intrinsics.areEqual(this.message, bouncerMessageModel.message) && Intrinsics.areEqual(this.secondaryMessage, bouncerMessageModel.secondaryMessage)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int i = 0;
        Message message = this.message;
        if (message == null) {
            hashCode = 0;
        } else {
            hashCode = message.hashCode();
        }
        int i2 = hashCode * 31;
        Message message2 = this.secondaryMessage;
        if (message2 != null) {
            i = message2.hashCode();
        }
        return i2 + i;
    }

    public final String toString() {
        return "BouncerMessageModel(message=" + this.message + ", secondaryMessage=" + this.secondaryMessage + ")";
    }

    public BouncerMessageModel(Message message, Message message2) {
        this.message = message;
        this.secondaryMessage = message2;
    }

    public /* synthetic */ BouncerMessageModel(Message message, Message message2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : message, (i & 2) != 0 ? null : message2);
    }
}
