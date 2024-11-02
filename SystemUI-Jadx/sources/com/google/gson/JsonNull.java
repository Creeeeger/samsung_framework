package com.google.gson;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class JsonNull extends JsonElement {
    public static final JsonNull INSTANCE = new JsonNull();

    @Deprecated
    public JsonNull() {
    }

    public final boolean equals(Object obj) {
        if (this != obj && !(obj instanceof JsonNull)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return JsonNull.class.hashCode();
    }
}
