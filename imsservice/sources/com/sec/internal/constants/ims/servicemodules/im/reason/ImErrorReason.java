package com.sec.internal.constants.ims.servicemodules.im.reason;

/* loaded from: classes.dex */
public enum ImErrorReason {
    INVALID("Invalid error"),
    ENGINE_ERROR("Engine error"),
    ILLEGAL_SESSION_STATE("Illegal session state"),
    FRAMEWORK_ERROR_FALLBACKFAILED("fallback error"),
    FORBIDDEN_SERVICE_NOT_AUTHORIZED("Service not authorized"),
    NO_SESSION("Session doesn't exist in framework"),
    PARTICIPANT_ALREADY_LEFT("All participant left"),
    INVALID_ICON_PATH("Invalid");

    private final String mInfo;

    ImErrorReason(String str) {
        this.mInfo = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.mInfo;
    }
}
