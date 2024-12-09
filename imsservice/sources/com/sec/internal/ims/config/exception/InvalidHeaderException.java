package com.sec.internal.ims.config.exception;

/* loaded from: classes.dex */
public class InvalidHeaderException extends Exception {
    private static final long serialVersionUID = 8374723406515232560L;
    private String message;

    public InvalidHeaderException(String str) {
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
