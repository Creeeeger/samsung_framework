package com.samsung.android.sdk.scs.ai.language;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Result {
    public final String content;
    public final String safetyAttribute;

    public Result(String str, String str2) {
        this.content = str;
        this.safetyAttribute = str2;
    }

    public final String toString() {
        return "content: " + this.content + ", safety attribute: " + this.safetyAttribute;
    }
}
