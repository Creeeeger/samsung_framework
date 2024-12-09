package com.sec.internal.ims.config.exception;

/* loaded from: classes.dex */
public class EmptyBodyAndCookieException extends UnknownStatusException {
    private static final long serialVersionUID = 8141010442931458349L;

    public EmptyBodyAndCookieException(String str) {
        super(str);
    }

    @Override // com.sec.internal.ims.config.exception.UnknownStatusException, java.lang.Throwable
    public String getMessage() {
        return this.message;
    }
}
