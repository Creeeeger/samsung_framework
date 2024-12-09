package com.sec.internal.ims.config.exception;

/* loaded from: classes.dex */
public class NoInitialDataException extends Exception {
    private static final long serialVersionUID = -1037078209338059005L;
    private String message;

    public NoInitialDataException(String str) {
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
