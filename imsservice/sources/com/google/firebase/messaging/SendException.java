package com.google.firebase.messaging;

import java.util.Locale;

/* loaded from: classes.dex */
public final class SendException extends Exception {
    private final int mErrorCode;

    SendException(String str) {
        super(str);
        int i = 0;
        if (str != null) {
            String lowerCase = str.toLowerCase(Locale.US);
            lowerCase.hashCode();
            switch (lowerCase) {
                case "service_not_available":
                    i = 3;
                    break;
                case "toomanymessages":
                    i = 4;
                    break;
                case "invalid_parameters":
                case "missing_to":
                    i = 1;
                    break;
                case "messagetoobig":
                    i = 2;
                    break;
            }
        }
        this.mErrorCode = i;
    }
}
