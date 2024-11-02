package com.android.internal.org.bouncycastle.jce.provider;

import java.security.cert.CRLException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class ExtCRLException extends CRLException {
    Throwable cause;

    public ExtCRLException(String message, Throwable cause) {
        super(message);
        this.cause = cause;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
