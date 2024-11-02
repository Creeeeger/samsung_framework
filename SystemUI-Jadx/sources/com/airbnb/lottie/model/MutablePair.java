package com.airbnb.lottie.model;

import androidx.core.util.Pair;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MutablePair {
    public Object first;
    public Object second;

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = this.first;
        if (obj2 != obj3 && (obj2 == null || !obj2.equals(obj3))) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        Object obj4 = this.second;
        Object obj5 = pair.second;
        if (obj5 != obj4 && (obj5 == null || !obj5.equals(obj4))) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (!z2) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        Object obj = this.first;
        int i = 0;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        Object obj2 = this.second;
        if (obj2 != null) {
            i = obj2.hashCode();
        }
        return hashCode ^ i;
    }

    public final String toString() {
        return "Pair{" + this.first + " " + this.second + "}";
    }
}
