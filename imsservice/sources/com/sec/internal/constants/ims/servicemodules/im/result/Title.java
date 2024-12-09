package com.sec.internal.constants.ims.servicemodules.im.result;

/* compiled from: Result.java */
/* loaded from: classes.dex */
class Title {
    private final boolean compactForm;

    Title(boolean z) {
        this.compactForm = z;
    }

    protected String getTypeTitle() {
        return !this.compactForm ? "Type" : "T";
    }

    protected String getTypeImError() {
        return !this.compactForm ? "ImError" : "i";
    }

    protected String getSipResponseTitle() {
        return !this.compactForm ? "SipResponse" : "s";
    }

    protected String getMsrpResponseTitle() {
        return !this.compactForm ? "MsrpResponse" : "m";
    }

    protected String getWarningHeaderTitle() {
        return !this.compactForm ? "WarningHeader" : "m";
    }

    protected String getReasonHeaderTitle() {
        return !this.compactForm ? "ReasonHeader" : "r";
    }
}
