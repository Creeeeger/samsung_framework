package com.sec.internal.ims.config.exception;

/* loaded from: classes.dex */
public class UnknownStatusException extends Exception {
    private static final long serialVersionUID = -8533200068421479731L;
    protected String message;

    public UnknownStatusException(String str) {
        this.message = "";
        if (str != null) {
            this.message = str;
        }
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }
}
