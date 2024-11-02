package com.android.systemui.broadcast;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.UserHandle;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ReceiverData {
    public final Executor executor;
    public final IntentFilter filter;
    public final String permission;
    public final BroadcastReceiver receiver;
    public final UserHandle user;

    public ReceiverData(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, Executor executor, UserHandle userHandle, String str) {
        this.receiver = broadcastReceiver;
        this.filter = intentFilter;
        this.executor = executor;
        this.user = userHandle;
        this.permission = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReceiverData)) {
            return false;
        }
        ReceiverData receiverData = (ReceiverData) obj;
        if (Intrinsics.areEqual(this.receiver, receiverData.receiver) && Intrinsics.areEqual(this.filter, receiverData.filter) && Intrinsics.areEqual(this.executor, receiverData.executor) && Intrinsics.areEqual(this.user, receiverData.user) && Intrinsics.areEqual(this.permission, receiverData.permission)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = (this.user.hashCode() + ((this.executor.hashCode() + ((this.filter.hashCode() + (this.receiver.hashCode() * 31)) * 31)) * 31)) * 31;
        String str = this.permission;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ReceiverData(receiver=");
        sb.append(this.receiver);
        sb.append(", filter=");
        sb.append(this.filter);
        sb.append(", executor=");
        sb.append(this.executor);
        sb.append(", user=");
        sb.append(this.user);
        sb.append(", permission=");
        return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(sb, this.permission, ")");
    }

    public /* synthetic */ ReceiverData(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, Executor executor, UserHandle userHandle, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(broadcastReceiver, intentFilter, executor, userHandle, (i & 16) != 0 ? null : str);
    }
}
