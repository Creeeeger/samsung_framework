package com.airbnb.lottie.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyPath {
    public static final KeyPath COMPOSITION = new KeyPath("COMPOSITION");
    public final List keys;
    public KeyPathElement resolvedElement;

    public KeyPath(String... strArr) {
        this.keys = Arrays.asList(strArr);
    }

    public final KeyPath addKey(String str) {
        KeyPath keyPath = new KeyPath(this);
        keyPath.keys.add(str);
        return keyPath;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || KeyPath.class != obj.getClass()) {
            return false;
        }
        KeyPath keyPath = (KeyPath) obj;
        if (!this.keys.equals(keyPath.keys)) {
            return false;
        }
        KeyPathElement keyPathElement = this.resolvedElement;
        if (keyPathElement != null) {
            return keyPathElement.equals(keyPath.resolvedElement);
        }
        if (keyPath.resolvedElement == null) {
            return true;
        }
        return false;
    }

    public final boolean fullyResolvesTo(int i, String str) {
        boolean z;
        boolean z2;
        boolean z3;
        List list = this.keys;
        if (i >= list.size()) {
            return false;
        }
        if (i == list.size() - 1) {
            z = true;
        } else {
            z = false;
        }
        String str2 = (String) list.get(i);
        if (!str2.equals("**")) {
            if (!str2.equals(str) && !str2.equals("*")) {
                z3 = false;
            } else {
                z3 = true;
            }
            if ((!z && (i != list.size() - 2 || !((String) list.get(list.size() - 1)).equals("**"))) || !z3) {
                return false;
            }
            return true;
        }
        if (!z && ((String) list.get(i + 1)).equals(str)) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            if (i != list.size() - 2 && (i != list.size() - 3 || !((String) list.get(list.size() - 1)).equals("**"))) {
                return false;
            }
            return true;
        }
        if (z) {
            return true;
        }
        int i2 = i + 1;
        if (i2 < list.size() - 1) {
            return false;
        }
        return ((String) list.get(i2)).equals(str);
    }

    public final int hashCode() {
        int i;
        int hashCode = this.keys.hashCode() * 31;
        KeyPathElement keyPathElement = this.resolvedElement;
        if (keyPathElement != null) {
            i = keyPathElement.hashCode();
        } else {
            i = 0;
        }
        return hashCode + i;
    }

    public final int incrementDepthBy(int i, String str) {
        if ("__container".equals(str)) {
            return 0;
        }
        List list = this.keys;
        if (!((String) list.get(i)).equals("**")) {
            return 1;
        }
        if (i == list.size() - 1 || !((String) list.get(i + 1)).equals(str)) {
            return 0;
        }
        return 2;
    }

    public final boolean matches(int i, String str) {
        if ("__container".equals(str)) {
            return true;
        }
        List list = this.keys;
        if (i >= list.size()) {
            return false;
        }
        if (((String) list.get(i)).equals(str) || ((String) list.get(i)).equals("**") || ((String) list.get(i)).equals("*")) {
            return true;
        }
        return false;
    }

    public final boolean propagateToChildren(int i, String str) {
        if ("__container".equals(str)) {
            return true;
        }
        List list = this.keys;
        if (i < list.size() - 1 || ((String) list.get(i)).equals("**")) {
            return true;
        }
        return false;
    }

    public final KeyPath resolve(KeyPathElement keyPathElement) {
        KeyPath keyPath = new KeyPath(this);
        keyPath.resolvedElement = keyPathElement;
        return keyPath;
    }

    public final String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("KeyPath{keys=");
        sb.append(this.keys);
        sb.append(",resolved=");
        if (this.resolvedElement != null) {
            z = true;
        } else {
            z = false;
        }
        sb.append(z);
        sb.append('}');
        return sb.toString();
    }

    private KeyPath(KeyPath keyPath) {
        this.keys = new ArrayList(keyPath.keys);
        this.resolvedElement = keyPath.resolvedElement;
    }
}
