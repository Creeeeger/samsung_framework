package com.android.systemui.qs.bar.soundcraft.model;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NoiseControl {

    @SerializedName("name")
    private final String name;

    @SerializedName("state")
    private boolean state;

    public NoiseControl(String str, boolean z) {
        this.name = str;
        this.state = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NoiseControl)) {
            return false;
        }
        NoiseControl noiseControl = (NoiseControl) obj;
        if (Intrinsics.areEqual(this.name, noiseControl.name) && this.state == noiseControl.state) {
            return true;
        }
        return false;
    }

    public final String getName() {
        return this.name;
    }

    public final boolean getState() {
        return this.state;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode = this.name.hashCode() * 31;
        boolean z = this.state;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public final String toString() {
        return "NoiseControl(name=" + this.name + ", state=" + this.state + ")";
    }
}
