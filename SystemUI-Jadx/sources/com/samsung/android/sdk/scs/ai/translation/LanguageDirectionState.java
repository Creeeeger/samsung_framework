package com.samsung.android.sdk.scs.ai.translation;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public enum LanguageDirectionState {
    UNKNOWN(-1),
    AVAILABLE(0),
    AVAILABLE_BY_PIVOT(1),
    DOWNLOADABLE(2),
    /* JADX INFO: Fake field, exist only in values array */
    UNAUTHORIZED_RESOURCE(3);

    private final int value;

    LanguageDirectionState(int i) {
        this.value = i;
    }

    public static LanguageDirectionState from(int i) {
        for (LanguageDirectionState languageDirectionState : values()) {
            if (languageDirectionState.value == i) {
                return languageDirectionState;
            }
        }
        return UNKNOWN;
    }
}
