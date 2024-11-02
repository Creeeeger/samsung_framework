package com.android.systemui.dump;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RegisteredDumpable {
    public final Object dumpable;
    public final String name;
    public final DumpPriority priority;

    public RegisteredDumpable(String str, Object obj, DumpPriority dumpPriority) {
        this.name = str;
        this.dumpable = obj;
        this.priority = dumpPriority;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegisteredDumpable)) {
            return false;
        }
        RegisteredDumpable registeredDumpable = (RegisteredDumpable) obj;
        if (Intrinsics.areEqual(this.name, registeredDumpable.name) && Intrinsics.areEqual(this.dumpable, registeredDumpable.dumpable) && this.priority == registeredDumpable.priority) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.name.hashCode() * 31;
        Object obj = this.dumpable;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        return this.priority.hashCode() + ((hashCode2 + hashCode) * 31);
    }

    public final String toString() {
        return "RegisteredDumpable(name=" + this.name + ", dumpable=" + this.dumpable + ", priority=" + this.priority + ")";
    }
}
