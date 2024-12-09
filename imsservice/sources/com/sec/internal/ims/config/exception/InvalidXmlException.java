package com.sec.internal.ims.config.exception;

/* loaded from: classes.dex */
public class InvalidXmlException extends Exception {
    private static final long serialVersionUID = -1084933356219231606L;
    private String message;

    public InvalidXmlException(String str) {
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
